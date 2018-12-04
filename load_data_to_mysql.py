#!/usr/bin/python
# -*- coding: UTF-8 -*-
from config import *
from db_opertate import *
import time
import datetime
import logging
import sys
from logging.handlers import TimedRotatingFileHandler
reload(sys)
sys.setdefaultencoding('utf8')


# 执行任务，首先查询数据库任务配置表
def execute_workflow():
    conn = None
    while True:
        # log_date=time.strftime("%Y%m%d", time.localtime())
        job_start_time=datetime.datetime.now()
        try:
            # logging.basicConfig(level=logging.DEBUG, # 控制台打印的日志级别
            #                     filename=log_filepath+log_date+'_data_load.log',
            #                     filemode='a',  # a是追加模式，默认如果不写的话，就是追加模式
            #                     # 模式，有w和a，w就是写模式，每次都会重新写日志，覆盖之前的日志
            #                     format='%(asctime)s - %(pathname)s[line:%(lineno)d] - %(levelname)s: %(message)s')

            # 日志改造
            fmt_str = '%(asctime)s - %(pathname)s[line:%(lineno)d] - %(levelname)s: %(message)s'
            filename = log_filepath + '_data_load'
            fileshandle = TimedRotatingFileHandler(filename, when='MIDNIGHT', interval=1, backupCount=0)
            logging.basicConfig(level=logging.INFO)
            fileshandle.suffix = "%Y%m%d.log"
            # fileshandle.setLevel(logging.INFO)
            formater = logging.Formatter(fmt_str)
            fileshandle.setFormatter(formater)
            logger = logging.getLogger(__name__)
            logger.addHandler(fileshandle)
            # 日志改造

            time.sleep(1)
            conn = MySQLdb.connect(host, user, passwd, db, port, charset='utf8' )
            # 查询时间范围
            config_time=query_workflow_time(conn,logger)
            # 删除数据
            param_start_time=config_time['param_start_time']
            param_end_time=config_time['param_end_time']
            logger.info("数据时间")
            logger.info(param_start_time)
            logger.info(param_end_time)
            execute_result = False
            workflow_list = query_workflow(conn, logger)
            # print workflow_list
            if workflow_list is not None:
                for workflow_id in workflow_list:
                    if execute_result:
                        time.sleep(5)
                    task_list=query_task(conn,workflow_id,logger)
                    if task_list is not None:
                        for task in task_list:
                            execute_result=execute_task(conn,task,param_start_time,param_end_time,logger)
                            if execute_result:
                                time.sleep(5)
                time.sleep(2)
                set_start_time=param_end_time
                set_end_time=(datetime.datetime.now()+datetime.timedelta(minutes=-10)).strftime("%Y-%m-%d %H:%M:%S")
                print param_start_time,set_start_time,param_end_time,set_end_time
                print set_end_time<=set_start_time
                job_end_time=datetime.datetime.now()
                job_seconds=(job_end_time-job_start_time).seconds
                if 180-job_seconds>0:
                    logger.info("程序跑的太快了，延时一会吧")
                    logger.info(str(180-job_seconds))
                    time.sleep(180-job_seconds)
                while set_end_time<=set_start_time:
                    logger.info("程序跑的太快了，延时一会吧")
                    time.sleep(60)
                    set_end_time=(datetime.datetime.now()+datetime.timedelta(minutes=-10)).strftime("%Y-%m-%d %H:%M:%S")
                set_workflow_time(conn,set_start_time,set_end_time,logger)
            else:
                time.sleep(5)
        except MySQLdb.Error, e:
            print '%s MySQL Error %d:%s' %(time.strftime("%Y-%m-%d %H:%M:%S", time.localtime()),
                                           e.args[0], e.args[1])
        finally:
            if conn is None:
                pass
            else:
                conn.close()
            print time.strftime("%Y-%m-%d %H:%M:%S", time.localtime()), "结束工作流"
            time.sleep(20)


if __name__ == '__main__':
    # 初始化，更新所有workflowid =0，设置data_time
    # 执行工作流
    print time.strftime("%Y-%m-%d %H:%M:%S", time.localtime()),"初始化开始"
#    init_workflow()
    print time.strftime("%Y-%m-%d %H:%M:%S", time.localtime()),"初始化结束"
    print time.strftime("%Y-%m-%d %H:%M:%S", time.localtime()),"开始执行工作流"
    execute_workflow()
    print time.strftime("%Y-%m-%d %H:%M:%S", time.localtime()),"执行工作流结束"
    pass


