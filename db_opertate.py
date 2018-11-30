#!/usr/bin/python
# -*- coding: UTF-8 -*-

import MySQLdb
from config import *
import time
import datetime
import sys
reload(sys)
sys.setdefaultencoding('utf8')
def init_workflow():
    conn = MySQLdb.connect(host, user, passwd, db,port, charset='utf8' )
    cursor = conn.cursor()
    sql = "update workflow_config set run_status=0"
    try:
        cursor.execute(sql)
        conn.commit()
        start_time=(datetime.datetime.now()+datetime.timedelta(minutes=-15)).strftime("%Y-%m-%d %H:%M:%S")
        end_time=(datetime.datetime.now()+datetime.timedelta(minutes=-10)).strftime("%Y-%m-%d %H:%M:%S")
        sql = "update config_workflow_time set param_start_time='{}',param_end_time='{}'".format(start_time,end_time)
        cursor.execute(sql)
        conn.commit()
        print time.strftime("%Y-%m-%d %H:%M:%S", time.localtime()),"初始化成功"
    except Exception as e:
        print time.strftime("%Y-%m-%d %H:%M:%S", time.localtime()),"初始化失败",e
        conn.rollback()
        return None
    conn.close()

def query_workflow_time(conn,logger):
    logger.info("查询工数据时间范围")
    sql1 = "SELECT DATE_FORMAT(param_start_time,'%Y-%m-%d %H:%i:%s')as param_start_time,DATE_FORMAT(param_end_time,'%Y-%m-%d %H:%i:%s')as param_end_time FROM config_workflow_time limit 1"
    logger.info("查询工数据时间范围")
    logger.info(sql1)
    try:
        cursor = conn.cursor()
        cursor.execute(sql1)
        result = cursor.fetchone()
        config_time={}
        config_time['param_start_time']=result[0]
        config_time['param_end_time']=result[1]
        logger.info("查询数据时间完成")
    except Exception as e:
        logger.error("查询数据失败")
        logger.error(str(e))
    finally:
        return config_time

def set_workflow_time(conn,set_start_time,set_end_time,logger):
    cursor = conn.cursor()
    logger.info("查询工数据时间范围")
    sql = "update config_workflow_time set param_start_time='{}',param_end_time='{}'".format(set_start_time,set_end_time)
    logger.info(sql)
    try:
        cursor.execute(sql)
        conn.commit()
        logger.info("查询数据时间完成")
    except Exception as e:
        logger.error("查询数据时间失败")
        logger.error(str(e))

def query_workflow(conn,logger):
    cursor = conn.cursor()
    logger.info("开始查询工作流")
    sql = "select * from config_workflows where run_status=0 order by workflow_id"
    list=[]
    try:
        logger.info(sql)
        cursor.execute(sql)
        # 获取所有记录列表
        results = cursor.fetchall()
        for row in results:
            workflow_id = row[0]
            list.append(workflow_id)
        logger.info(str(list))
        return list
    except Exception as e:
        logger.error("查询工作流失败")
        logger.error(str(e))
        return None

def query_task(conn,workflow_id,logger):
    cursor = conn.cursor()
    logger.info("查询工作流的子任务")
    sql = "select b.host,b.db_name,b.port,b.user,b.passwd,a.select_sql,a.target_table,a.delete_sql,a.task_id " \
          "from config_tasks a join config_databases b on a.source_db_id=b.db_id " \
          "where a.if_valid=1 and a.workflow_id={workflow_id} order by a.task_id".format(workflow_id=workflow_id)
    logger.info("查询工作流的子任务")
    list1 = []
    try:
        logger.info(sql)
        cursor.execute(sql)
        results = cursor.fetchall()
        for row in results:
            task1={}
            task1['host'] = row[0]
            task1['db_name'] = row[1]
            task1['port'] = row[2]
            task1['user'] = row[3]
            task1['passwd'] = row[4]
            task1['source_sql'] = row[5]
            task1['target_table'] = row[6]
            task1['delete_sql'] = row[7]
            task1['task_id']=row[8]
            print(task1)
            logger.info("task_id:"+str(task1['task_id']))
            list1.append(task1)
        logger.info("查询工作流的子任务完成")
        return list1
    except Exception as e:
        logger.error("查询工作流的子任务失败")
        logger.error(str(e))
        return None
def delete_data(conn,delete_sql,param_start_time,param_end_time,logger):
    logger.info("开始执行子任务数据删除")
    try:
        cur = conn.cursor()
        sql = delete_sql.format(param_start_time=param_start_time,param_end_time=param_end_time)
        logger.info(sql)
        cur.execute(sql)
        conn.commit()
    except Exception as e:
        logger.error(sql)
        logger.error("执行子任务数据删除失败")
        logger.error(str(e))
    logger.info("执行子任务数据删除完成")

def insert_data(conn,target_table,datas,logger):
    logger.info("开始执行子任务数据插入")
    cur = conn.cursor()
    key_list=[]
    datasql_list=[]
    for data in datas:
        for key in data:
            key_list.append(key)
        break
    fields = ",".join(key_list)
    fields= "("+fields+")"
    for data in datas:
        value_list=[]
        for key in key_list:
            value = data[key]
            value_list.append(str(value))
        strdata=str(value_list)
        strdata=strdata.replace("[",'')
        strdata=strdata.replace("]",'')
        datasql_list.append(strdata)
    try:
        if len(datas)>0:
            logger.info("执行子任务数据插入")
            num =1
            for data in datasql_list:
                num = num +1
                sql = "insert into  "+target_table+fields+" VALUES ({}) ".format(data)
                cur.execute(sql)
                if num >1000:
                    conn.commit()
            conn.commit()
            logger.info("执行子任务数据插入完成")
    except Exception as e:
        logger.error(sql)
        logger.error(str(e))
        logger.error("执行子任务数据插入失败")

def execute_task(conn,task,param_start_time,param_end_time,logger):
    logger.info("开始执行子任务")
    source_host = task['host']
    source_user = task['user']
    source_pwd = task['passwd']
    source_db = task['db_name']
    source_sql = task['source_sql']
    target_table = task['target_table']
    delete_sql = task['delete_sql']
    task_id=task['task_id']
    try:
        source_conn = MySQLdb.connect(source_host, source_user, source_pwd, source_db, cursorclass = MySQLdb.cursors.DictCursor,charset='utf8' )
        source_cursor = source_conn.cursor()
        sql = source_sql.format(param_start_time=param_start_time,param_end_time=param_end_time)
        logger.info("开始执行子任务数据查询")
        logger.info("开始执任务task_id")
        logger.info(str(task_id))
        logger.info(sql)
        source_cursor.execute(sql)
        # 获取所有记录列表
        results = source_cursor.fetchall()
        # 插入数据
        logger.info("执行子任务数据查询结束数据量")
        if results is not None:
            logger.info(str(len(results)))
        logger.info("开始执行子任务数据插入")
        if len(results)>0:
            # 删除数据,避免重复
            if delete_sql is not None:
                delete_data(conn,delete_sql,param_start_time,param_end_time,logger)
            insert_data(conn,target_table,results,logger)
            logger.info("执行子任务数据插入完成")
        else:
            logger.info("数据量为0，不插入")
        return False
    except Exception as e:
        logger.error(sql)
        print(e)
        logger.error(str(e))
        return False


