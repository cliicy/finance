/*
Navicat MySQL Data Transfer

Source Server         : 10.0.82.165
Source Server Version : 50712
Source Host           : 10.0.82.165:3306
Source Database       : yg_data_submission

Target Server Type    : MYSQL
Target Server Version : 50712
File Encoding         : 65001

Date: 2018-12-01 11:47:07
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for config_databases
-- ----------------------------
DROP TABLE IF EXISTS `config_databases`;
CREATE TABLE `config_databases` (
  `db_id` int(11) NOT NULL COMMENT '记录序号',
  `host` varchar(255) DEFAULT NULL COMMENT 'ip地址',
  `host_name` varchar(255) DEFAULT NULL COMMENT 'ip名称',
  `db` varchar(255) DEFAULT NULL COMMENT '数据库类型',
  `db_name` varchar(255) DEFAULT NULL COMMENT '数据库名称',
  `port` varchar(255) DEFAULT NULL COMMENT '端口号',
  `user` varchar(255) DEFAULT NULL COMMENT '用户名',
  `passwd` varchar(255) DEFAULT NULL COMMENT '用户密码',
  `if_valid` varchar(255) DEFAULT NULL COMMENT '是否启用',
  `create_date` date DEFAULT NULL COMMENT '生成日期',
  `update_date` date DEFAULT NULL COMMENT '最后修改日期'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of config_databases
-- ----------------------------
INSERT INTO `config_databases` VALUES ('0', '172.16.1.23', '数据报送测试库测试库', 'mysql', 'yg_data_submission', '3306', 'shujvbs_20181121', 'KDQT4u$fWuR', '1', '2018-11-23', '2018-11-23');
INSERT INTO `config_databases` VALUES ('1', '172.16.1.23', '数据报送库', 'mysql', 'yg_data_submission', '3306', 'shujvbs_20181121', 'KDQT4u$fWuR', '1', '2018-11-23', '2018-11-23');
INSERT INTO `config_databases` VALUES ('2', '172.16.1.24', '账户体系从库', 'mysql', 'acc_plat', '3306', 'shujvbs_20181121', 'KDQT4u$fWuR', '1', '2018-11-23', '2018-11-23');
INSERT INTO `config_databases` VALUES ('3', '172.16.1.25', '自助月还跑批从库', 'mysql', 'month_payback_pc', '3306', 'shujvbs_20181121', 'KDQT4u$fWuR', '1', '2018-11-23', '2018-11-23');
INSERT INTO `config_databases` VALUES ('4', '172.20.130.11', '银谷在线从库', 'mysql', 'jr_user', '3306', 'shujvbs_20181121', 'KDQT4u$fWuR', '1', '2018-11-23', '2018-11-23');
INSERT INTO `config_databases` VALUES ('5', '172.20.130.11', '银谷在线从库', 'mysql', 'jr_p2m', '3306', 'shujvbs_20181121', 'KDQT4u$fWuR', '1', '2018-11-23', '2018-11-23');
INSERT INTO `config_databases` VALUES ('6', '172.20.130.11', '银谷在线从库', 'mysql', 'jr_pay', '3306', 'shujvbs_20181121', 'KDQT4u$fWuR', '1', '2018-11-23', '2018-11-23');
INSERT INTO `config_databases` VALUES ('7', '172.20.130.11', '银谷在线从库', 'mysql', 'jr_activity', '3306', 'shujvbs_20181121', 'KDQT4u$fWuR', '1', '2018-11-23', '2018-11-23');
INSERT INTO `config_databases` VALUES ('8', '172.20.130.15', '贷后从库', 'mysql', 'loan_after', '3306', 'shujvbs_20181121', 'KDQT4u$fWuR', '1', '2018-11-23', '2018-11-23');
INSERT INTO `config_databases` VALUES ('9', '172.20.130.17', '普惠运营从库', 'mysql', 'puhui_operation', '3306', 'shujvbs_20181121', 'KDQT4u$fWuR', '1', '2018-11-23', '2018-11-23');
INSERT INTO `config_databases` VALUES ('10', '172.20.130.6', '支付从库       ', 'mysql', 'accent-xabank-prod', '3306', 'shujvbs_20181121', 'KDQT4u$fWuR', '1', '2018-11-23', '2018-11-23');
INSERT INTO `config_databases` VALUES ('11', '172.20.130.6', '支付从库       ', 'mysql', 'pwg_prod_plat', '3306', 'shujvbs_20181121', 'KDQT4u$fWuR', '1', '2018-11-23', '2018-11-23');
INSERT INTO `config_databases` VALUES ('12', '10.0.82.165', '债匹从（不确定，由小兵负责mq推送）', 'mysql', '~', '3306', 'shujvbs_20181121', 'KDQT4u$fWuR', '1', '2018-11-23', '2018-11-23');
INSERT INTO `config_databases` VALUES ('13', '172.16.32.89', '信审从库', 'mysql', 'loan_rm_pro', '3306', 'shujvbs_20181121', 'KDQT4u$fWuR', '1', '2018-11-25', '2018-11-25');
INSERT INTO `config_databases` VALUES ('14', '172.20.130.2', '借款端从库', 'mysql', 'loan_online', '3360', 'shujvbs_20181121', 'KDQT4u$fWuR', '1', '2018-11-25', '2018-11-25');

-- ----------------------------
-- Table structure for config_tasks
-- ----------------------------
DROP TABLE IF EXISTS `config_tasks`;
CREATE TABLE `config_tasks` (
  `task_id` int(11) NOT NULL DEFAULT '0' COMMENT '任务id',
  `task_name` varchar(128) DEFAULT NULL COMMENT '任务名称',
  `source_db_id` int(11) DEFAULT NULL COMMENT '源数据库id',
  `select_sql` varchar(3000) DEFAULT NULL COMMENT '查询sql',
  `target_db_id` int(11) DEFAULT NULL COMMENT '目标数据库',
  `target_table` varchar(128) DEFAULT NULL COMMENT '目标表',
  `delete_sql` varchar(512) DEFAULT NULL COMMENT '删除目标表数据',
  `task_status` int(11) DEFAULT NULL COMMENT '任务状态',
  `if_valid` int(11) DEFAULT NULL COMMENT '是否有效',
  `workflow_id` int(11) DEFAULT NULL COMMENT '工作集',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of config_tasks
-- ----------------------------
INSERT INTO `config_tasks` VALUES ('3', '测试', '0', 'select * from test1', '0', 'test2', 'DELETE FROM test2 WHERE field3 BETWEEN \'{param_start_time}\' AND \'{param_end_time}\'', '0', '1', '0', '2018-11-23 16:22:12', '2018-11-23 16:22:15');
INSERT INTO `config_tasks` VALUES ('4', '用户信息', '4', 'SELECT \n	u.user_id AS \'userId\', \n	join_time AS \'userCreateTime\', \n	1 AS \'userStatus\', \n	1 AS \'userType\', \n	1 AS \'userAttr\', \n	card_name AS \'userName\', \n	IF(id_type=\'01\',1,2) AS \'countries\', \n	IF(id_type=\'01\',1,2) AS \'cardType\', \n	card_number AS \'userIdcard\', \n	\'\' AS \'userIdcardHash\', \n	u.phonenumber AS \'userPhone\', \n	\'-1\' AS \'userLawperson\', \n	\'-1\' AS \'userFund\', \n	\'-1\' AS \'userProvince\', \n	\'-1\' AS \'userAddress\', \n	\'-1\' AS \'registerDate\',\n	email AS \'userMail\', \n	\'\' AS \'userAscription\', \n	\'\' AS \'userAge\', \n	\'\' AS \'userSex\', \n	\'\' AS \'phoneAscription\', \n	IF(pay_channel=\'BAOFOO\',\'宝付支付\',\'西安银行柿园路支行\') AS \'userPay\', \n	IF(pay_channel=\'BAOFOO\',\'-1\',u.ele_acct_no) AS \'userPayAccount\', \n	b.bank_name AS \'userBank\', \n	b.bank_card_id AS \'userBankAccount\',auth_time as \'date_created\'  \nFROM \njr_user.user_info u LEFT JOIN jr_user.user_bankcard b ON u.user_id=b.user_id \nWHERE auth_time BETWEEN \'{param_start_time}\' AND \'{param_end_time}\'', '1', 'sync_user', 'DELETE FROM sync_user WHERE date_created BETWEEN \'{param_start_time}\' AND \'{param_end_time}\'', '0', '1', '1', '2018-11-23 16:29:43', '2018-11-23 16:29:52');
INSERT INTO `config_tasks` VALUES ('5', '散标(标的)数据\r\n', '9', '\nSELECT\n\'\' AS productStartTime,\npro.product_type AS productRegType ,\nCONCAT(oi.actual_product_name,oi.approval_term) AS productName,\n\'\' AS bankNo,\noi.order_num AS sourceProductCode ,\noi.id_num AS userIdcardHash ,\nclp.purpose AS loanUse ,\n-1 AS loanDescribe ,\npro.rate / 100 AS loanRate ,\noi.signature_principal AS amount,\n1 AS rate,\n\'\' AS termType ,\noi.term AS term,\npro.repay_type AS payType ,\ncww.loan_fee AS serviceCost,\n0 AS riskMargin ,\n\'1\' AS loanType ,\n\'\' AS loanCreditRating,\n\'\' AS securityInfo ,\n\'\' AS collateralDesc ,\n\'\' AS collateralInfo ,\n1 AS overdueLimmit ,\n180 AS badDebtLimmit ,\n0.01 AS amountLimmts ,\n999999.99 AS amountLimmtl ,\n0 AS allowTransfer ,\n0 AS closeLimmit,\n1 AS securityType ,\n\'\' AS securityCompanyName ,\n\'\' AS securityCompanyIdcard ,\n\'\' AS isFinancingAssure ,\n\'\' AS securityAmount ,\n\'合作机构\' AS projectSource ,\n\'\' AS sourceProductUrl,\na.CREATE_TIME AS date_created\nFROM order_info oi\nLEFT JOIN product pro ON oi.actual_product_id = product_code\nLEFT JOIN customer_loan_purpose clp ON oi.order_num = clp.order_num\nLEFT JOIN customer_worker_write cww ON oi.order_num = cww.order_num\nSELECT b.INTO_APP_ID AS sourceProductCode,a.RISK_CONTENT AS loanCreditRating  \nFROM lb_t_into_riskpoint_info a\nJOIN lb_t_into_info b ON a.FK_INTO_APP_ID=b.id AND a.RISK_CODE=\'CREDITRISK004\' \nWHERE a.CREATE_TIME BETWEEN \'{param_start_time}\' AND \'{param_end_time}\'\n', '1', 'tmp_2_1', 'TRUNCATE TABLE tmp_2_1', '0', '1', '1', '2018-11-23 17:13:47', '2018-11-23 17:14:00');
INSERT INTO `config_tasks` VALUES ('6', '散标(标的)数据\r\n', '13', '\nSELECT b.INTO_APP_ID AS sourceProductCode,a.RISK_CONTENT AS loanCreditRating\nFROM lb_t_into_riskpoint_info a\nJOIN lb_t_into_info b ON a.FK_INTO_APP_ID=b.id AND a.RISK_CODE=\'CREDITRISK004\'\nAND a.CREATE_TIME BETWEEN \'{param_start_time}\' AND \'{param_end_time}\'\n', '1', 'tmp_2_2', 'TRUNCATE TABLE tmp_2_2', '0', '1', '1', '2018-11-23 17:13:47', '2018-11-23 17:14:00');
INSERT INTO `config_tasks` VALUES ('7', '散标(标的)数据\r\n', '5', '\nSELECT\ncreditor_id AS \'sourceProductCode\',\nCONCAT(\'https://www.yingujr.com/list/borrow_detail?numeration=\',order_num,\'&id=\',id,\'&itemType=\',item_type,\'&creditorId=\',creditor_id) AS \'sourceProductUrl\'\nFROM \njr_p2m.t_pre_creditor_info\nWHERE\nitem_type=2 AND \ncreate_time  BETWEEN \'{param_start_time}\' AND \'{param_end_time}\'\n', '1', 'tmp_2_3', 'TRUNCATE TABLE tmp_2_3', '0', '1', '1', '2018-11-23 17:13:47', '2018-11-23 17:14:00');
INSERT INTO `config_tasks` VALUES ('8', '散标(标的)数据\r\n', '6', '\nSELECT\n	order_num AS \'sourceProductCode\',\n	MIN(update_time) AS \'productStartTime\'\nFROM\n	jr_pay.putaway_details\nWHERE\n	is_second = 1 \nAND is_putaway = 2\nAND update_time BETWEEN \'{param_start_time}\' AND \'{param_end_time}\'\nGROUP BY order_num\n', '1', 'tmp_2_4', 'TRUNCATE TABLE tmp_2_4', '0', '1', '1', '2018-11-23 17:13:47', '2018-11-23 17:14:00');
INSERT INTO `config_tasks` VALUES ('9', '散标(标的)数据\r\n', '1', '\nSELECT \nt4.productStartTime AS productStartTime ,\nt1.productRegType AS productRegType ,\nt1.productName AS productName ,\nt1.bankNo AS bankNo ,\nt1.sourceProductCode AS sourceProductCode ,\nt1.userIdcardHash AS userIdcardHash ,\nt1.loanUse AS loanUse ,\nt1.loanDescribe AS loanDescribe ,\nt1.loanRate AS loanRate ,\nt1.amount AS amount ,\nt1.rate AS rate ,\nt1.termType AS termType ,\nt1.term AS term ,\nt1.payType AS payType ,\nt1.serviceCost AS serviceCost ,\nt1.riskMargin AS riskMargin ,\nt1.loanType AS loanType ,\nt2.loanCreditRating AS loanCreditRating ,\nt1.securityInfo AS securityInfo ,\nt1.collateralDesc AS collateralDesc ,\nt1.collateralInfo AS collateralInfo ,\nt1.overdueLimmit AS overdueLimmit ,\nt1.badDebtLimmit AS badDebtLimmit ,\nt1.amountLimmts AS amountLimmts ,\nt1.amountLimmtl AS amountLimmtl ,\nt1.allowTransfer AS allowTransfer ,\nt1.closeLimmit AS closeLimmit ,\nt1.securityType AS securityType ,\nt1.securityCompanyName AS securityCompanyName ,\nt1.securityCompanyIdcard AS securityCompanyIdcard ,\nt1.isFinancingAssure AS isFinancingAssure ,\nt1.securityAmount AS securityAmount ,\nt1.projectSource AS projectSource ,\nt3.sourceProductUrl AS sourceProductUrl,\nt1.date_created AS date_created\n FROM tmp_2_1 t1\nLEFT JOIN tmp_2_2 t2 ON t1.sourceProductCode = t2.sourceProductCode\nLEFT JOIN tmp_2_3 t3 ON t2.sourceProductCode = t3.sourceProductCode\nLEFT JOIN tmp_2_4 t4 ON t3.sourceProductCode = t4.sourceProductCode\n', '1', 'sync_debt', 'DELETE FROM sync_debt WHERE date_created BETWEEN \'{param_start_time}\' AND \'{param_start_time}\'\r\n', '0', '1', '1', '2018-11-23 17:13:47', '2018-11-23 17:14:00');
INSERT INTO `config_tasks` VALUES ('10', '散标状态\r\n', '8', '\nSELECT\n	loan_code AS sourceProductCode, \n	-1 AS sourceFinancingCode,  \n	(\n		CASE `status`\n		WHEN 1 THEN\n			\'5\'\n		WHEN 2 THEN\n			\'3\'\n		WHEN 4 THEN\n			\'3\'\n		WHEN 5 THEN\n			\'4\'\n		ELSE\n			NULL\n		END\n	) AS \'productStatus\', \n	(\n		CASE `status`\n		WHEN 1 THEN\n			\'还款中\'\n		WHEN 2 THEN\n			\'还款结束\'\n		WHEN 4 THEN\n			\'还款结束\'\n		WHEN 5 THEN\n			\'逾期\'\n		ELSE\n			NULL\n		END\n	) AS \'productStatusDesc\',  \n	update_date AS \'productDate\',\n	update_date AS \'date_created\'\nFROM rec_loan\nWHERE del_flag = 0\nAND data_flag = 0\nAND draw_status = 3\nAND update_date >= \'{param_start_time}\'\nAND update_date <= \'{param_end_time}\'\n', '1', 'sync_status', 'DELETE FROM sync_status WHERE date_created BETWEEN \'{param_start_time}\' AND \'{param_end_time}\'', '0', '1', '1', '2018-11-23 17:13:47', '2018-11-23 17:14:00');
INSERT INTO `config_tasks` VALUES ('11', '散标状态\r\n', '9', '\nSELECT\norder_num AS sourceProductCode,\n-1 AS sourceFinancingCode,\n\'流标\' AS productStatus,\n-1 AS productStatusDesc,\nupdate_time AS productDate,\nupdate_time AS date_created\nFROM order_info\nWHERE`status` IN(\'510\', \'715\', \'740\', \'940\')\nAND update_time >= \'{param_start_time}\'\nAND update_time <= \'{param_end_time}\'\n', '1', 'sync_status', null, '0', '1', '1', '2018-11-23 17:13:47', '2018-11-23 17:14:00');
INSERT INTO `config_tasks` VALUES ('12', '散标状态\r\n', '14', '\nselect creditor_rights_no AS sourceProductCode,\n	2 as sourceFinancingCode,\n	9 AS productStatus,\n	\'放款\' AS productStatusDesc,\n	fund_time AS productDate,\n	fund_time as date_created\nfrom la_t_fund_reg where fund_status = 4\nAND fund_time >= \'{param_start_time}\'\nAND fund_time <= \'{param_end_time}\'', '1', 'sync_status', null, '0', '1', '1', '2018-11-23 17:13:47', '2018-11-23 17:14:00');
INSERT INTO `config_tasks` VALUES ('13', '散标状态\r\n', '10', '\nSELECT proNumber AS sourceProductCode,\n-1 AS sourceFinancingCode,\nCASE optType WHEN \'S\' THEN \'9\' WHEN \'F\' THEN \'2\' END AS productStatus,\nCASE optType WHEN \'S\' THEN \'放款\' END AS productStatusDesc,\nmodifyTime AS productDate,\nmodifyTime AS date_created\nFROM cg_project_result_confirm WHERE \nbankState=1 AND accState=1\nAND modifyTime >= \'{param_start_time}\'\nAND modifyTime <= \'{param_end_time}\'', '1', 'sync_status', null, '0', '1', '1', '2018-11-23 17:13:47', '2018-11-23 17:14:00');
INSERT INTO `config_tasks` VALUES ('14', '还款计划', '8', '\nSELECT\n	loan.loan_code AS \'sourceProductCode\',\n	loan.customer_ID_card AS \'userIdcardHash\',\n	loan.repayment_period AS \'totalIssue\',\n	plan.period AS \'issue\',\n	CONCAT(\n		loan.loan_code,\n		\'-\',\n		plan.period\n	) AS \'replanId\',\n	ROUND(plan.plan_repayment_principal, 2) AS \'curFund\',\n	ROUND(plan.plan_repayment_interest, 2) AS \'curInterest\', \n	plan.current_end_date AS \'repayTime\',\n	plan.update_date as date_created\nFROM rec_loan loan\nJOIN rec_repayment plan ON loan.id = plan.loan_detail_id\nWHERE loan.del_flag = 0\nAND loan.data_flag = 0\nAND loan.draw_status = 3\nAND plan.del_flag = 0\nAND plan.update_date >= \'{param_start_time}\'\nAND plan.update_date <= \'{param_end_time}\'', '1', 'sync_repayment_plan', 'DELETE FROM sync_repayment_plan WHERE date_created BETWEEN \'{param_start_time}\' AND \'{param_end_time}\'', '0', '1', '1', '2018-11-23 17:13:47', '2018-11-23 17:14:00');
INSERT INTO `config_tasks` VALUES ('17', '交易流水1', '8', '\r\n\r\nSELECT\r\n	serial.create_date AS \'transTime\',\r\n	serial.serial_no AS \'transId\',\r\n	serial.serial_no AS \'bankTransId\',\r\n	loan.loan_code AS \'sourceProductCode\',\r\n	1 AS \'transType\',\r\n	\'放款\' AS \'transTypeDec\',\r\n	ROUND(loan.real_lend_money, 2) AS \'transMoney\',\r\n	DATE_FORMAT(\r\n		serial.update_date,\r\n		\'%Y-%m-%d\'\r\n	) AS \'transDate\',\r\n	\'e\' AS \'transPayment\',\r\n	loan.customer_id_card AS \'userIdcard\',\r\n	\'西安银行柿园路支行\' AS \'transBank\',\r\n	serial.create_date AS date_created\r\nFROM\r\n	rec_loan loan\r\nJOIN rec_repayment_record SERIAL ON loan.id = serial.loan_detail_id\r\nWHERE loan.del_flag = 0\r\nAND loan.data_flag = 0\r\nAND loan.draw_status = 3\r\nAND loan.business_type = 2\r\nAND serial.`status` = 3\r\nAND serial.update_date >= \'{param_start_time}\'\r\nAND serial.update_date <= \'{param_end_time}\'\r\n\r\n', '1', 'sync_transaction', 'DELETE FROM sync_transaction WHERE date_created BETWEEN \'{param_start_time}\' AND \'{param_end_time}\' AND trans_type=\'1\'', '0', '1', '1', null, null);
INSERT INTO `config_tasks` VALUES ('18', '交易流水2 存管出借信息(增量)', '6', '\nSELECT\n	create_time AS \'transTime\',\n	serial_no AS \'transId\',\n	serial_no AS \'bankTransId\',\n	 \'\' AS \'sourceProductCode\',\n	 \'\' AS \'sourceProductName\',\n	 \'\' AS \'sourceFinancingCode\',\n	 \'\' AS \'sourceFinancingName\',\n	 \'\' AS \'finClaimId\',\n	 \'\' AS \'transferId\', \n	\'-1\' AS \'replanId\',\n	2 AS \'transType\',\n	\'\' AS \'transTypeDec\',\n	sign_amount AS \'transMoney\',\n	DATE(create_time) AS \'transDate\',\n	\'a\' AS \'transPayment\',\n	user_id AS \'userIdcardHash\',\n	\'西安银行柿园路支行\' AS \'transBank\',\n	create_time AS date_created	\nFROM jr_pay.user_buy_sign_agreement \nWHERE `status`=1 AND update_time BETWEEN \'{param_start_time}\' AND \'{param_end_time}\'\n', '1', 'sync_transaction', 'DELETE FROM sync_transaction WHERE date_created BETWEEN \'{param_start_time}\' AND \'{param_end_time}\' AND trans_type=\'2\'', '0', '1', '1', null, null);
INSERT INTO `config_tasks` VALUES ('19', '交易流水2 三方出借信息(增量)', '6', '\nSELECT\n	p.create_time AS \'transTime\',\n	p.serial_no AS \'transId\',\n	\'-1\' AS \'replanId\',\n	2 AS \'transType\',\n	\'\' AS \'transTypeDec\',\n	amount AS \'transMoney\',\n	DATE(p.create_time) AS \'transDate\',\n	\'e\' AS \'transPayment\',\n	b.user_id AS \'userId\',\n	\'宝付支付\' AS \'transBank\',\n	p.create_time AS date_created\nFROM jr_pay.user_buy_plan b\nLEFT JOIN jr_pay.pay_log p ON b.order_id = p.global_id\nWHERE b.`status` = 1 \nAND p.pay_channel=\'BAOFOO\' \nAND request_type=\'PURCHASE\' \nAND req_return_code=\'SUCCESS\'\nAND update_time BETWEEN \'{param_start_time}\' AND \'{param_end_time}\'\n', '1', 'sync_transaction', null, '0', '1', '1', null, null);
INSERT INTO `config_tasks` VALUES ('20', '交易流水4 交易流水 - 存管（4-平台服务费）loan-after', '8', '\nSELECT\n	serial.create_date AS \'transTime\',\n	serial.serial_no AS \'transId\',\n	serial.serial_no AS \'bankTransId\',\n	loan.loan_code AS \'sourceProductCode\',\n	4 AS \'transType\',\n	\'平台服务费\' AS \'transTypeDec\',\n	ROUND(loan.service_fee, 2) AS \'transMoney\',\n	DATE_FORMAT(\n		serial.update_date,\n		\'%Y-%m-%d\'\n	) AS \'transDate\',\n	\'e\' AS \'transPayment\',\n	loan.customer_id_card AS \'userIdcard\',\n	\'西安银行柿园路支行\' AS \'transBank\',\n	serial.create_date AS \'date_created\'\nFROM rec_loan loan\nJOIN rec_repayment_record SERIAL ON loan.id = serial.loan_detail_id\nWHERE	loan.del_flag = 0\nAND loan.data_flag = 0\nAND loan.draw_status = 3\nAND loan.business_type = 2\nAND serial.update_date BETWEEN \'{param_start_time}\' AND \'{param_end_time}\'\nAND serial.`status` = 3\n', '1', 'sync_transaction', null, '0', '1', '1', null, null);
INSERT INTO `config_tasks` VALUES ('21', '交易流水4 银谷在线提供 jr_pay，jr_p2m', '6', '\nSELECT\n	p.create_time AS \'transTime\', \n	p.serial_no AS \'transId\',\n	p.serial_no AS \'bankTransId\',\n	\'\' AS \'sourceProductCode\',\n	\'-1\' AS \'replanId\',\n	4 AS \'transType\',\n	\'平台服务费\' AS \'transTypeDec\',\n	t.service_fee AS \'transMoney\',\n	DATE(p.create_time) AS \'transDate\',\n	\'a\' AS \'transPayment\',\n	p.user_id AS \'userId\',\n	\'西安银行柿园路支行\' AS \'transBank\',\n	p.create_time AS  date_created\nFROM jr_pay.pay_log p\nLEFT JOIN jr_p2m.t_user_interest_record t ON p.serial_no = t.order_id\nWHERE service_fee > 0 \nAND t.`status` = 2\nAND p.call_back_return_code=\'SUCCESS\'\nAND p.request_type=\'ACCOUNT_TRANSFER\' \nAND p.create_time BETWEEN \'{param_start_time}\' AND \'{param_end_time}\'\n', '1', 'sync_transaction', 'DELETE FROM sync_transaction WHERE date_created BETWEEN \'{param_start_time}\' AND \'{param_end_time}\' AND trans_type=\'4\'', '0', '1', '1', null, null);
INSERT INTO `config_tasks` VALUES ('22', '交易流水8 存管投资人赎回本金', '6', '\nSELECT\n	p.create_time AS \'transTime\', \n	p.serial_no AS \'transId\',\n	p.serial_no AS \'bankTransId\',\n	\'-1\' AS \'replanId\',\n	8 AS \'transType\',\n	\'\' AS \'transTypeDec\',\n	t.agreed_principal AS \'transMoney\',\n	DATE(p.create_time) AS \'transDate\',\n	\'a\' AS \'transPayment\',\n	p.user_id AS \'userId\',\n	\'西安银行柿园路支行\' AS \'transBank\',\n	p.create_time AS \'date_created\'\nFROM	jr_pay.pay_log p\nLEFT JOIN jr_p2m.t_user_interest_record t ON p.serial_no = t.order_id\nWHERE	agreed_principal > 0\nAND t.`status` = 2\nAND p.call_back_return_code=\'SUCCESS\'\nAND p.request_type=\'ACCOUNT_TRANSFER\'\nAND p.create_time BETWEEN \'{param_start_time}\' AND \'{param_end_time}\'\n', '1', 'sync_transaction', 'DELETE FROM sync_transaction WHERE date_created BETWEEN \'{param_start_time}\' AND \'{param_end_time}\' AND trans_type=\'8\'', '0', '1', '1', null, null);
INSERT INTO `config_tasks` VALUES ('23', '交易流水8 三方投资人赎回本金', '5', '\nSELECT\n	p.create_time AS \'transTime\', \n	p.serial_no AS \'transId\',\n	\'-1\' AS \'replanId\',\n	8 AS \'transType\',\n	\'\' AS \'transTypeDec\',\n	t.agreed_principal AS \'transMoney\',\n	DATE(p.create_time) AS \'transDate\',\n	\'e\' AS \'transPayment\',\n	p.user_id AS \'userId\',\n	\'宝付支付\' AS \'transBank\',\n	p.create_time AS date_created\nFROM	jr_pay.pay_log p\nLEFT JOIN jr_p2m.t_user_interest_record t ON p.global_id = t.order_id\nWHERE\n	agreed_principal > 0 \nAND t.`status` = 2 \nAND p.call_back_return_code=\'SUCCESS\'\nAND p.request_type=\'MATURITY_REDEEM\'\nAND p.create_time BETWEEN \'{param_start_time}\' AND \'{param_end_time}\'\n', '1', 'sync_transaction', null, '0', '1', '1', null, null);
INSERT INTO `config_tasks` VALUES ('24', '交易流水 宝付交易流水-代扣', '11', '\nSELECT r.createTime AS transTime, r.serialNo AS transId, \n-1 AS bankTransId, \n-1 AS sourceProductCode, \n-1 AS sourceProductName, \n-1 AS sourceFinancingCode, \n\'6\' AS transType, \n\'充值\' AS transTypeDec, \nr.amount AS transMoney, \nDATE_FORMAT(r.createTime, \'%Y-%m-%d\') AS transDate, \n\'e\' AS transPayment, \nIF(ISNULL(r.idCardNo),a.idCardNo,r.idCardNo) AS userIdcardHash, \'宝付支付\' AS transBank，\nr.createTime AS date_created,\nFROM pgw_recharge_withdraw r LEFT JOIN pgw_account a ON r.bindId=a.bindId \nWHERE r.status=0 AND r.transactionType IN (\'DIRECT_WITHHOLD\') \nAND r.modifyTime BETWEEN \'{param_start_time}\' AND \'{param_end_time}\' \nGROUP BY r.serialNo\n', '1', 'sync_transaction', 'DELETE FROM sync_transaction WHERE date_created BETWEEN \'{param_start_time}\' AND \'{param_end_time}\' AND trans_type IN (\'6\',\'7\')', '0', '1', '1', null, null);
INSERT INTO `config_tasks` VALUES ('25', '交易流水 宝付交易流水-宝付提现', '11', '\nSELECT w.createTime AS transTime, w.serialNo AS transId, -1 AS bankTransId, -1 AS sourceProductCode, -1 AS sourceProductName, -1 AS sourceFinancingCode, \nCASE w.transactionType WHEN \'提现\' THEN \'7\' END  AS transType, \nCASE w.transactionType WHEN \'提现\' THEN \'提现\' END  AS transTypeDec, \nw.amount AS transMoney, DATE_FORMAT(w.createTime, \'%Y-%m-%d\') AS transDate, \'e\' AS transPayment, \nIF(ISNULL(w.idCardNo),a.idCardNo,w.idCardNo) AS userIdcardHash,\'宝付支付\' AS transBank,\nw.createTime AS date_created\nFROM pgw_withdraw w \nLEFT JOIN pgw_account a ON w.bindId=a.bindId \nWHERE w.status=0 \nAND w.modifyTime BETWEEN \'{param_start_time}\' AND \'{param_end_time}\'\nGROUP BY w.serialNo\n', '1', 'sync_transaction', null, '0', '1', '1', null, null);
INSERT INTO `config_tasks` VALUES ('26', '交易流水 账户宝网关充值交易流水', '2', '\nSELECT\n	DATE_FORMAT(t.date_created,\'%Y-%m-%d %H:%i:%s\') AS transTime,t.order_no AS transId ,\n	- 1 AS bankTransId ,- 1 AS sourceProductCode ,- 1 AS sourceProductName ,- 1 AS sourceFinancingCode,\n	CASE t.request_type WHEN \'CONFIRM_WITHHOLD\' THEN \'6\' WHEN \'GATEWAY_WITHHOLD\' THEN \'6\' WHEN \'PAYMENT_REQUEST\' THEN \'7\' END AS transType,\n	CASE t.request_type WHEN \'CONFIRM_WITHHOLD\' THEN \'充值\' WHEN \'GATEWAY_WITHHOLD\' THEN \'充值\' WHEN \'PAYMENT_REQUEST\' THEN \'提现\' END AS transTypeDec,\n	t.amount AS transMoney,DATE_FORMAT(transaction_date,\'%Y-%m-%d\') AS transDate,\n	CASE t.request_type WHEN \'GATEWAY_WITHHOLD\' THEN \'b\' WHEN \'CONFIRM_WITHHOLD\' THEN \'e\' WHEN \'PAYMENT_REQUEST\' THEN \'e\' END AS transPayment,\n	c.id_card_no AS userIdcardHash,\'宝付支付\' AS transBank,\n	DATE_FORMAT(t.date_created,\'%Y-%m-%d %H:%i:%s\') AS date_created \nFROM transaction_flow_entity t INNER JOIN customer_business_entity b ON t.user_id = b.user_id INNER JOIN customer_entity c ON b.customer_id = c.id\nWHERE t.request_type=\'GATEWAY_WITHHOLD\' AND t.last_modified BETWEEN \'{param_start_time}\' AND \'{param_end_time}\'\n', '1', 'sync_transaction', null, '0', '1', '1', null, null);
INSERT INTO `config_tasks` VALUES ('27', '交易流水 宝付快捷充值 支付宝付快捷充值交易流水', '11', '\nSELECT r.createTime AS transTime, r.serialNo AS transId, -1 AS bankTransId, \n-1 AS sourceProductCode, -1 AS sourceProductName, -1 AS sourceFinancingCode, \'6\' AS transType, \'充值\' AS transTypeDec, \nr.amount AS transMoney, DATE_FORMAT(r.createTime, \'%Y-%m-%d\') AS transDate, \n\'f\' AS transPayment, -1 AS userIdcardHash, \'宝付\' AS transBank,r.userId, r.createTime AS date_created\n FROM pgw_recharge_withdraw r WHERE r.status=0 AND r.transactionType=\'快捷充值\' AND r.subBizType!=\'MONTH_PAY\' \n AND r.modifyTime BETWEEN \'{param_start_time}\' AND \'{param_end_time}\'\n', '1', 'sync_transaction', null, '0', '1', '1', null, null);
INSERT INTO `config_tasks` VALUES ('28', '交易流水 宝付快捷充值 自助月还宝付快捷充值交易流水', '3', '\nSELECT\ndataCreated AS transTime,serialNo AS transId,\'-1\' AS bankTransId,\'-1\' AS sourceProductCode,\'-1\' AS sourceProductName,\'-1\' AS sourceFinancingCode,\'6\' AS transType,\n\'充值\' AS transTypeDec,amount AS transMoney,SUBSTR(dataCreated FROM 1 FOR 10)AS transDate,\'e\' AS transPayment,lenderIdCardNo AS userIdcardHash,\'宝付支付\' AS transBank\n, dataCreated AS date_created\nFROM t_report WHERE channelCode = \'BAOFOO\' AND paymentType = \'CONFIRM_WITHHOLD\' AND returnCode = \'SUCCESS\' \nAND lastModified BETWEEN \'{param_start_time}\' AND \'{param_end_time}\'\nUNION ALL\nSELECT\ndataCreated AS transTime,serialNo AS transId,\'-1\' AS bankTransId,\'-1\' AS sourceProductCode,\'-1\' AS sourceProductName,\'-1\' AS sourceFinancingCode,\'6\' AS transType,\n	\'充值\' AS transTypeDec,amount AS transMoney,SUBSTR(dataCreated FROM 1 FOR 10)AS transDate,\'e\' AS transPayment,lenderIdCardNo AS userIdcardHash,\'宝付支付\' AS transBank\n,dataCreated AS date_created\nFROM t_report_ws WHERE channelCode = \'BAOFOO\' AND paymentType = \'CONFIRM_WITHHOLD\' AND returnCode = \'SUCCESS\' \nAND lastModified BETWEEN \'{param_start_time}\' AND \'{param_end_time}\'\nUNION ALL\nSELECT\ndataCreated AS transTime,serialNo AS transId,\'-1\' AS bankTransId,\'-1\' AS sourceProductCode,\'-1\' AS sourceProductName,\'-1\' AS sourceFinancingCode,\'6\' AS transType,\n	\'充值\' AS transTypeDec,amount AS transMoney,SUBSTR(dataCreated FROM 1 FOR 10)AS transDate,\'e\' AS transPayment,lenderIdCardNo AS userIdcardHash,\'宝付支付\' AS transBank\n,dataCreated AS date_created\nFROM t_report_puhui_withhold\nWHERE channelCode = \'BAOFOO\' AND paymentType = \'CONFIRM_WITHHOLD\' AND returnCode = \'SUCCESS\' \nAND lastModified BETWEEN \'{param_start_time}\' AND \'{param_end_time}\'\n', '1', 'sync_transaction', null, '0', '1', '1', null, null);
INSERT INTO `config_tasks` VALUES ('29', '交易流水 存管充值提现代扣交易流 ', '10', '\nSELECT createTime AS transTime,serialNo AS transId,serialNo AS bankTransId,\'-1\' AS sourceProductCode,\n	\'-1\' AS sourceProductName,\'-1\' AS sourceFinancingCode,\'7\' AS transType,\n	\'提现\' AS transTypeDec,ROUND(amount / 100, 2)AS transMoney,transDate AS transDate,\n	\'e\' AS transPayment,idCard AS userIdcardHash,\'西安银行柿园路支行\' AS transBank,\n	createTime AS date_created\nFROM cg_withdraw \nWHERE bankstate = 1 AND modifyTime BETWEEN \'{param_start_time}\' AND \'{param_end_time}\'\nUNION ALL\nSELECT\n	createTime AS transTime,serialNo AS transId,serialNo AS bankTransId,\'-1\' AS sourceProductCode,\'-1\' AS sourceProductName,\'-1\' AS sourceFinancingCode,\'6\' AS transType,\'充值\' AS transTypeDec,\n	ROUND(amount / 100, 2)AS transMoney,transDate AS transDate,\'e\' AS transPayment,idCard AS userIdcardHash,\'西安银行柿园路支行\' AS transBank\nFROM cg_batchwithhold_dtl\nWHERE transState = 0 AND modifyTime BETWEEN \'{param_start_time}\' AND \'{param_end_time}\'\nUNION ALL\nSELECT \n	createTime AS transTime,serialNo AS transId, serialNo AS bankTransId, \'-1\' AS sourceProductCode, \'-1\' AS sourceProductName, \'-1\' AS sourceFinancingCode,\n	\'6\' AS transType,\'充值\' AS transTypeDec,ROUND((amount / 100),2) AS transMoney, transDate,\n	\'f\' AS transPayment,idCard AS userIdcardHash, \'西安银行柿园路支行\' AS transBank,createTime AS date_created\nFROM cg_recharge \nWHERE bankstate = 1 AND modifyTime BETWEEN \'{param_start_time}\' AND \'{param_end_time}\'\nUNION ALL\nSELECT\n	asd.createTime AS transTime,asd.serialNo AS transId,asd.serialNo AS bankTransId , -1 AS sourceProductCode , -1 AS sourceProductName , -1 AS sourceFinancingCode,6 AS transType,\n	\'充值\' AS transTypeDec,asd.amount AS transMoney,DATE_FORMAT(asd.createTime, \'%Y-%m-%d\') AS transDate,\'d\' AS transPayment,\n	oa.idCard AS userIdcardHash,\'西安银行柿园路支行\' AS transBank,createTime AS date_created\nFROM cg_account_synz_dtl asd LEFT JOIN (\n	SELECT eleAcctNo,idCard FROM cg_open_account WHERE bankState = 1 GROUP BY eleAcctNo, idCard\n) oa ON oa.eleAcctNo = asd.eleAccNo\nWHERE asd.eleAccNo LIKE \'888888%\' AND asd.transType=0 AND modifyTime BETWEEN \'{param_start_time}\' AND \'{param_end_time}\'\nUNION ALL\nSELECT \n	cb.createTime AS transTime,dtl.serialNo AS transId, dtl.serialNo AS bankTransId, \'-1\' AS sourceProductCode, \'-1\' AS sourceProductName, \'-1\' AS sourceFinancingCode,\n	\'6\'AS transType,\'充值\' AS transTypeDec,ROUND((dtl.transAmount / 100),2) AS transMoney, cb.transDate,\n	\'f\' AS transPayment,dtl.idCard AS userIdcardHash, \'西安银行柿园路支行\' AS transBank,createTime AS date_created\nFROM cg_batchrebate_dtl dtl \nLEFT JOIN cg_batchrebate cb ON cb.id = dtl.rebateId \nWHERE dtl.bankState = 1 AND cb.bankState = 1 AND cb.bizType=\'4\' AND cb.account= \'404011580000071367\' AND cb.subBizType = \'YGOL\'\nAND cb.modifyTime BETWEEN \'{param_start_time}\' AND \'{param_end_time}\'\n', '1', 'sync_transaction', null, '0', '1', '1', null, null);
INSERT INTO `config_tasks` VALUES ('30', '交易流水 除宝付外的三方代扣代付数据', '11', '\r\nSELECT createTime AS transTime, requestId AS transId, -1 AS bankTransId, -1 AS sourceProductCode, -1 AS sourceProductName, -1 AS sourceFinancingCode, \r\nCASE paymentType WHEN \'DEBIT\' THEN \'6\' WHEN \'MONTH_DEBIT\' THEN \'6\' WHEN \'PAY\' THEN \'12\' WHEN \'MONTH_PAY\' THEN \'12\' END  AS transType, \r\nCASE paymentType WHEN \'DEBIT\' THEN \'充值\' WHEN \'MONTH_DEBIT\' THEN \'充值\' WHEN \'PAY\' THEN \'代付\' WHEN \'MONTH_PAY\' THEN \'代付\' END AS transTypeDec, \r\namount AS transMoney, DATE_FORMAT(createTime, \'%Y-%m-%d\') AS transDate, \'e\' AS transPayment, orderNum AS userIdcardHash, \r\nCASE channelCode WHEN \'CPCNPAY\' THEN \'中金支付\' WHEN \'CHANPAY\' THEN \'畅捷支付\' WHEN \'PAYEASE\' THEN \'首信易支付\' WHEN \'ATOBOPAY\' THEN \'金运通支付\' \r\nWHEN \'UNSPAY\' THEN \'银生宝支付\' WHEN \'BAOFOO\' THEN \'宝付支付\' WHEN \'HNAPAY\' THEN \'新生支付\' WHEN \'BILL99PAY\' THEN \'快钱支付\' \r\nWHEN \'ALLINPAY\' THEN \'通联支付\' WHEN \'CHINAPNR\' THEN \'汇付支付\' END AS transBank, createTime AS date_created \r\nFROM pgw_payment_singlejournal WHERE paymentStatus=1 AND modifyTime BETWEEN \'{param_start_time}\' AND \'{param_end_time}\'\r\nUNION ALL\r\nSELECT createTime AS transTime, requestId AS transId, -1 AS bankTransId, -1 AS sourceProductCode, -1 AS sourceProductName, -1 AS sourceFinancingCode, \r\nCASE paymentType WHEN \'DEBIT\' THEN \'6\' WHEN \'MONTH_DEBIT\' THEN \'6\' WHEN \'PAY\' THEN \'12\' WHEN \'MONTH_PAY\' THEN \'12\' END  AS transType, \r\nCASE paymentType WHEN \'DEBIT\' THEN \'充值\' WHEN \'MONTH_DEBIT\' THEN \'充值\' WHEN \'PAY\' THEN \'代付\' WHEN \'MONTH_PAY\' THEN \'代付\' END AS transTypeDec, \r\namount AS transMoney, DATE_FORMAT(createTime, \'%Y-%m-%d\') AS transDate, \'e\' AS transPayment, orderNum AS userIdcardHash, \r\nCASE channelCode WHEN \'CPCNPAY\' THEN \'中金支付\' WHEN \'CHANPAY\' THEN \'畅捷支付\' WHEN \'PAYEASE\' THEN \'首信易支付\' WHEN \'ATOBOPAY\' THEN \'金运通支付\' \r\nWHEN \'UNSPAY\' THEN \'银生宝支付\' WHEN \'BAOFOO\' THEN \'宝付支付\' WHEN \'HNAPAY\' THEN \'新生支付\' WHEN \'BILL99PAY\' THEN \'快钱支付\' \r\nWHEN \'ALLINPAY\' THEN \'通联支付\' WHEN \'CHINAPNR\' THEN \'汇付支付\' END AS transBank ,createTime AS date_created \r\nFROM pgw_payment_journal WHERE paymentStatus=1 AND modifyTime BETWEEN \'{param_start_time}\' AND \'{param_end_time}\'\r\n', '1', 'sync_transaction', null, '0', '1', '1', null, null);
INSERT INTO `config_tasks` VALUES ('31', '交易流水 除宝付外的三方充值数据', '11', '\nSELECT createTime AS transTime, serialNo AS transId, -1 AS bankTransId, -1 AS sourceProductCode, -1 AS sourceProductName, -1 AS sourceFinancingCode, \n\'6\' AS transType, \'充值\'  AS transTypeDec, amount AS transMoney, DATE_FORMAT(transactionDate, \'%Y-%m-%d\') AS transDate, \'f\' AS transPayment, userId AS userIdcardHash, \nCASE channelCode WHEN \'CPCNPAY\' THEN \'中金支付\' WHEN \'CHANPAY\' THEN \'畅捷支付\' WHEN \'PAYEASE\' THEN \'首信易支付\' WHEN \'ATOBOPAY\' THEN \'金运通支付\' \nWHEN \'UNSPAY\' THEN \'银生宝支付\' WHEN \'BAOFOO\' THEN \'宝付支付\' WHEN \'HNAPAY\' THEN \'新生支付\' WHEN \'BILL99PAY\' THEN \'快钱支付\' \nWHEN \'ALLINPAY\' THEN \'通联支付\' WHEN \'CHINAPNR\' THEN \'汇付支付\' END AS transBank  , createTime AS date_created \nFROM pgw_payment_recharge WHERE requestType=\'CONFIRM_RECHARGE\' AND `status`=1 AND modifyTime BETWEEN \'{param_start_time}\' AND \'{param_end_time}\'\nUNION ALL\nSELECT createTime AS transTime, serialNo AS transId, -1 AS bankTransId, -1 AS sourceProductCode, -1 AS sourceProductName, -1 AS sourceFinancingCode, \n\'6\' AS transType, \'充值\'  AS transTypeDec, amount AS transMoney, DATE_FORMAT(requestTime, \'%Y-%m-%d\') AS transDate, \'f\' AS transPayment, userId AS userIdcardHash, \n\'快钱\' AS transBank , createTime AS date_created \nFROM pgw_payment_bill WHERE `status`=1 AND modifyTime BETWEEN \'{param_start_time}\' AND \'{param_end_time}\'\nUNION ALL\nSELECT createTime AS transTime, serialNo AS transId, -1 AS bankTransId, -1 AS sourceProductCode, -1 AS sourceProductName, -1 AS sourceFinancingCode, \n\'6\' AS transType, \'充值\'  AS transTypeDec, amount AS transMoney, DATE_FORMAT(requestTime, \'%Y-%m-%d\') AS transDate, \'f\' AS transPayment, userId AS userIdcardHash, \n\'汇付\' AS transBank , createTime AS date_created \nFROM pgw_payment_chinapnr WHERE `status`=1 AND modifyTime BETWEEN \'{param_start_time}\' AND \'{param_end_time}\'\n', '1', 'sync_transaction', null, '0', '1', '1', null, null);
INSERT INTO `config_tasks` VALUES ('32', '交易流水 交易流水 - 存管(18-本金)', '8', '\nSELECT\n	serial.create_date AS \'transTime\',\n	serial.serial_no AS \'transId\',\n	serial.serial_no AS \'bankTransId\',\n	loan.loan_code AS \'sourceProductCode\',\n	18 AS \'transType\',\n	\'还款本金\' AS \'transTypeDec\',\n	ROUND(plan.actual_repayment_principal,2) AS \'transMoney\',\n	DATE_FORMAT(serial.update_date,\'%Y-%m-%d\') AS \'transDate\',\n	\'e\' AS \'transPayment\', \n	loan.customer_id_card AS \'userIdcard\',\n	\'西安银行柿园路支行\' AS \'transBank\' ,\n	serial.create_date AS \'date_created\'\nFROM	rec_loan loan\nJOIN rec_repayment plan ON loan.id = plan.loan_detail_id\nJOIN rec_repayment_plan_relation record ON plan.id = record.loan_repayment_plan_id\nJOIN rec_repayment_record SERIAL ON record.id = serial.rel_id\nAND serial.type IN (2, 6, 12)\nWHERE	loan.del_flag = 0\nAND loan.data_flag = 0\nAND loan.draw_status = 3\nAND loan.business_type = 2\nAND plan.del_flag = 0\nAND record.del_flag = 0\nAND serial.update_date BETWEEN \'{param_start_time}\' AND \'{param_end_time}\'\nAND serial.`status` = 3\nGROUP BY serial.serial_no\n', '1', 'sync_transaction', 'DELETE FROM sync_transaction WHERE date_created BETWEEN \'{param_start_time}\' AND \'{param_end_time}\' AND trans_type = \'18\'', '0', '1', '1', null, null);
INSERT INTO `config_tasks` VALUES ('33', '交易流水18 交易流水 - 三方（18-本金） ', null, '\nSELECT\nloan.loan_code AS \'sourceProductCode\', \nplan.period, \nplan.update_date,\nplan.current_end_date,\n18 AS \'transType\',\n\'还款本金\' AS \'transTypeDec\',\nROUND(plan.actual_repayment_principal,2) AS \'transMoney\',\nDATE_FORMAT(plan.update_date,\'%Y-%m-%d\') AS \'transDate\'，\nloan.customer_id_card AS \'userIdcard\',\n\'e\' AS \'transPayment\'\n, plan.update_date AS date_created\nFROM rec_loan loan\nJOIN rec_repayment plan ON loan.id = plan.loan_detail_id\nWHERE loan.del_flag = 0 AND loan.data_flag = 0 AND loan.draw_status = 3\nAND loan.business_type = 2\nAND plan.del_flag = 0\nAND plan.update_date BETWEEN \'{param_start_time}\' AND \'{param_start_time}\'\n', '1', 'aTemp', null, '0', '1', '1', null, null);
INSERT INTO `config_tasks` VALUES ('34', '交易流水18 交易流水 - 三方（18-本金） ', null, '\nSELECT serialNo,orderNum,lastModified,repaymentPeriod,REPLACE (repaymentPeriod, \'|\', \',\') AS temStr,channelCode FROM t_report_puhui_withhold\nWHERE returnCode = \'SUCCESS\' AND paymentType NOT IN (\'PRE_RECHARGE\',\'PRE_WITHHOLD\',\'PRE_RECHARGE_AGREEMENT\')\nAND isAdvanceSettled = \'false\'  AND channelCode !=\'XABANK\' AND paymentType !=\'BANK_RECHARGE\'\nAND lastModified  BETWEEN \'{param_start_time}\' AND \'{param_start_time}\'\nUNION ALL\nSELECT serialNo,orderNum,lastModified,repaymentPeriod,REPLACE (repaymentPeriod, \'|\', \',\') AS temStr,channelCode  FROM t_report\nWHERE returnCode = \'SUCCESS\' AND paymentType NOT IN (\'PRE_RECHARGE\',\'PRE_WITHHOLD\',\'PRE_RECHARGE_AGREEMENT\')\nAND isAdvanceSettled = \'false\'  AND channelCode !=\'XABANK\' AND paymentType !=\'BANK_RECHARGE\'\nAND lastModified  BETWEEN \'{param_start_time}\' AND \'{param_start_time}\'\nUNION  ALL\nSELECT serialNo,orderNum,lastModified,repaymentPeriod,REPLACE (repaymentPeriod, \'|\', \',\') AS temStr,channelCode  FROM t_report_ws\nWHERE returnCode = \'SUCCESS\' AND paymentType NOT IN (\'PRE_RECHARGE\',\'PRE_WITHHOLD\',\'PRE_RECHARGE_AGREEMENT\')\nAND isAdvanceSettled = \'false\'  AND channelCode !=\'XABANK\' AND paymentType !=\'BANK_RECHARGE\'\nAND plan.update_date BETWEEN \'{param_start_time}\' AND \'{param_start_time}\'\n', '1', 'bTemp', null, '0', '0', '1', null, null);
INSERT INTO `config_tasks` VALUES ('35', '交易流水18 交易流水 - 三方（18-本金） ', null, '\r\nSELECT\r\nloan.loan_code AS \'sourceProductCode\',\r\nplan.period, \r\nplan.update_date,\r\nplan.current_end_date,\r\n18 AS \'transType\',\r\n\'还款本金\' AS \'transTypeDec\',\r\nROUND(\r\nplan.actual_repayment_principal,\r\n2\r\n) AS \'transMoney\',\r\nDATE_FORMAT(\r\nplan.update_date,\'%Y-%m-%d\') AS \'transDate\'，\r\nloan.customer_id_card AS \'userIdcard\',\r\n\'e\' AS \'transPayment\' \r\nFROM\r\nrec_loan loan\r\nJOIN rec_repayment plan ON loan.id = plan.loan_detail_id\r\nWHERE\r\nloan.del_flag = 0\r\nAND loan.data_flag = 0\r\nAND loan.draw_status = 3\r\nAND loan.business_type = 2\r\nAND plan.del_flag = 0\r\nAND plan.update_date BETWEEN \'{param_start_time}\' AND \'{param_start_time}\'\r\n', '1', 'aaTemp', null, '0', '0', '1', null, null);
INSERT INTO `config_tasks` VALUES ('36', '交易流水18 交易流水 - 三方（18-本金） ', null, '\nSELECT\n	s.order_number AS \'sourceProductCode\',\n	s.repay_date AS \'current_end_date\',\n	s.global_Id AS \'transId\',\n	s.process_time AS \'transTime\',\n	s.Pay_Channel AS \'transBank\'\nFROM	payment_flow s\nWHERE	s.`status` = 2\nAND s.process_time BETWEEN \'{param_start_time}\' AND \'{param_start_time}\'\n', '1', 'bbTemp', null, '0', '0', '1', null, null);
INSERT INTO `config_tasks` VALUES ('37', '交易流水18', null, null, '1', null, null, '0', '0', '1', null, null);
INSERT INTO `config_tasks` VALUES ('38', '交易流水18', null, null, '1', null, null, '0', '0', '1', null, null);
INSERT INTO `config_tasks` VALUES ('39', '交易流水19 ', '8', '\nSELECT\n	serial.create_date AS \'transTime\',\n	serial.serial_no AS \'transId\',\n	serial.serial_no AS \'bankTransId\',\n	loan.loan_code AS \'sourceProductCode\',\n	19 AS \'transType\',\n	\'还款利息\' AS \'transTypeDec\',\n	ROUND(\n		plan.actual_repayment_interest,\n		2\n	) AS \'transMoney\',\n	loan.customer_id_card AS \'userIdcard\',\n	DATE_FORMAT(\n		serial.update_date,\n		\'%Y-%m-%d\'\n	) AS \'transDate\',\n	\'e\' AS \'transPayment\'\n	loan.customer_id_card AS \'userIdcard\',\n	\'西安银行柿园路支行\' AS \'transBank\',\n	serial.create_date  AS date_created\nFROM\n	rec_loan loan\nJOIN rec_repayment plan ON loan.id = plan.loan_detail_id\nJOIN rec_repayment_plan_relation record ON plan.id = record.loan_repayment_plan_id\nJOIN rec_repayment_record SERIAL ON record.id = serial.rel_id\nAND serial.type IN (2, 6, 12)\nWHERE	loan.del_flag = 0\nAND loan.data_flag = 0\nAND loan.draw_status = 3\nAND loan.business_type = 2\nAND plan.del_flag = 0\nAND record.del_flag = 0\nAND serial.update_date BETWEEN \'{param_start_time}\' AND \'{param_end_time}\'\nAND serial.`status` = 3\nGROUP BY serial.serial_no\n', '1', 'sync_transaction', 'DELETE FROM sync_transaction WHERE date_created BETWEEN \'{param_start_time}\' AND \'{param_end_time}\' AND trans_type = \'19\'', '0', '1', '1', null, null);
INSERT INTO `config_tasks` VALUES ('40', '交易流水19', null, null, '1', null, null, '0', '0', '1', null, null);
INSERT INTO `config_tasks` VALUES ('41', '交易流水19', null, null, '1', null, null, '0', '0', '1', null, null);
INSERT INTO `config_tasks` VALUES ('42', '交易流水19', null, null, '1', null, null, '0', '0', '1', null, null);
INSERT INTO `config_tasks` VALUES ('43', '交易流水19', null, null, '1', null, null, '0', '0', '1', null, null);
INSERT INTO `config_tasks` VALUES ('44', '交易流水19', null, null, '1', null, null, '0', '0', '1', null, null);
INSERT INTO `config_tasks` VALUES ('45', '交易流水27 交易流水 - 存管（27-代偿金）', '8', '\nSELECT\n	serial.create_date AS \'transTime\',\n	serial.serial_no AS \'transId\',\n	serial.serial_no AS \'bankTransId\',\n	loan.loan_code AS \'sourceProductCode\',\n	27 AS \'transType\',\n	\'代偿金\' AS \'transTypeDec\',\n	ROUND(serial.actual_money, 2) AS \'transMoney\',\n	DATE_FORMAT(\n		serial.update_date,\n		\'%Y-%m-%d\'\n	) AS \'transDate\',\n	serial.create_date AS date_created\nFROM\n	rec_loan loan\nJOIN rec_repayment plan ON loan.id = plan.loan_detail_id\nJOIN rec_repayment_plan_relation record ON plan.id = record.loan_repayment_plan_id\nJOIN rec_repayment_record SERIAL ON record.id = serial.rel_id\nAND serial.type = 5\nWHERE\n	loan.del_flag = 0\nAND loan.data_flag = 0\nAND loan.draw_status = 3\nAND loan.business_type = 2\nAND plan.del_flag = 0\nAND record.del_flag = 0\nAND serial.update_date BETWEEN \'{param_start_time}\' AND \'{param_end_time}\'\nAND serial.`status` = 3\nGROUP BY serial.serial_no\n', '1', 'sync_transaction', 'DELETE FROM sync_transaction WHERE date_created BETWEEN \'{param_start_time}\' AND \'{param_end_time}\' AND trans_type = \'27\'', '0', '1', '1', null, null);
INSERT INTO `config_tasks` VALUES ('46', '交易流水10 存管派息红包', '6', '\nSELECT\n	p.create_time AS \'transTime\', \n	p.serial_no AS \'transId\',\n	p.serial_no AS \'bankTransId\',\n	\'-1\' AS \'replanId\',\n	10 AS \'transType\',\n	\'\' AS \'transTypeDec\', \n	t.value_added_interest AS \'transMoney\',\n	DATE(p.create_time) AS \'transDate\',\n	\'a\' AS \'transPayment\',\n	p.user_id AS \'userId\',\n	\'西安银行柿园路支行\' AS \'transBank\' ,\n	p.create_time AS date_created\nFROM\n	jr_pay.pay_log p\nLEFT JOIN jr_p2m.t_user_interest_record t ON p.serial_no = t.order_id\nWHERE\n	value_added_interest > 0 \nAND t.`status` = 2\nAND p.call_back_return_code=\'SUCCESS\'\nAND p.request_type=\'ACCOUNT_TRANSFER\' \nAND p.create_time BETWEEN \'{param_start_time}\' AND \'{param_end_time}\'\n', '1', 'sync_transaction', 'DELETE FROM sync_transaction WHERE date_created BETWEEN \'{param_start_time}\' AND \'{param_end_time}\' AND trans_type = \'10\'', '0', '1', '1', null, null);
INSERT INTO `config_tasks` VALUES ('49', '交易流水10 三方投资红包', '6', '\nSELECT\n	p.create_time AS \'transTime\',\n	p.serial_no AS \'transId\', \n	\'-1\' AS \'replanId\',\n	10 AS \'transType\',\n	\'\' AS \'transTypeDec\', \n	coupon_amount AS \'transMoney\',\n	DATE(p.create_time) AS \'transDate\',\n	\'e\' AS \'transPayment\',\n	b.user_id AS \'userId\',\n	\'宝付支付\' AS \'transBank\' ,\n	p.create_time AS date_created\nFROM\n	jr_pay.user_buy_plan b\nLEFT JOIN jr_pay.pay_log p ON b.order_id = p.global_id\nWHERE\n	b.`status` = 1 \nAND p.pay_channel=\'BAOFOO\' \nAND request_type=\'PURCHASE\' \nAND req_return_code=\'SUCCESS\'\nAND coupon_type=5\nAND p.create_time BETWEEN \'{param_start_time}\' AND \'{param_end_time}\'\n', '1', 'sync_transaction', null, '0', '1', '1', null, null);
INSERT INTO `config_tasks` VALUES ('50', '交易流水10 现金红包兑换流水', '6', '\nSELECT\n	ui.user_id AS \'userId\',\n	sequence_id AS \'transId\', \n	IF(ui.pay_channel=\'BAOFOO\',\'\',sequence_id) AS \'bankTransId\',\n	\'-1\' AS \'replanId\',\n	10 AS \'transType\',\n	\'\' AS \'transTypeDec\', \n	coupon_amount AS \'transMoney\', \n	DATE(create_time) AS \'transDate\',\n	IF(ui.pay_channel=\'BAOFOO\',\'e\',\'a\') AS \'transPayment\',\n	IF(ui.pay_channel=\'BAOFOO\',\'宝付支付\',\'西安银行柿园路支行\') AS \'transBank\' ,\n	create_time AS date_created\nFROM\n	jr_activity.user_cash_coupon ucc LEFT JOIN\n	jr_user.user_info ui ON ucc.user_id=ui.user_id\nWHERE\n	ucc.`status`=1\n	AND update_time  BETWEEN \'{param_start_time}\' AND \'{param_end_time}\'\n', '1', 'sync_transaction', null, '0', '1', '1', null, null);
INSERT INTO `config_tasks` VALUES ('47', '存管投资红包', '6', '\nSELECT\n	e.create_time AS \'transTime\',\n	serial_no AS \'transId\',\n	serial_no AS \'bankTransId\',\n	\'-1\' AS \'replanId\',\n	10 AS \'transType\',\n	\'\' AS \'transTypeDec\', \n	sign_amount AS \'transMoney\',\n	DATE(e.create_time) AS \'transDate\',\n	\'a\' AS \'transPayment\',\n	e.user_id AS \'userIdcardHash\',\n	\'西安银行柿园路支行\' AS \'transBank\',\n	e.create_time AS date_created\nFROM\n	jr_pay.user_buy_sign_agreement e LEFT JOIN\n	jr_p2m.t_user_plan tup ON e.lending_id=tup.lending_id\nWHERE e.`status`=1 AND \ntup.coupon_type=5 \nAND e.update_time BETWEEN \'{param_start_time}\' AND \'{param_end_time}\'\n', '1', 'sync_transaction', null, '0', '1', '1', null, null);
INSERT INTO `config_tasks` VALUES ('48', '三方派息红包', '6', '\nSELECT\n	p.create_time AS \'transTime\', \n	p.serial_no AS \'transId\',\n	\'-1\' AS \'replanId\',\n	10 AS \'transType\',\n	\'\' AS \'transTypeDec\', \n	t.value_added_interest AS \'transMoney\',\n	DATE(p.create_time) AS \'transDate\',\n	\'e\' AS \'transPayment\',\n	p.user_id AS \'userId\',\n	\'宝付支付\' AS \'transBank\',\n	p.create_time AS date_created\nFROM\n	jr_pay.pay_log p\nLEFT JOIN jr_p2m.t_user_interest_record t ON p.global_id = t.order_id\nWHERE\n	value_added_interest > 0\nAND t.`status` = 2\nAND p.call_back_return_code=\'SUCCESS\'\nAND p.request_type=\'MATURITY_REDEEM\' \nAND p.create_time BETWEEN \'{param_start_time}\' AND \'{param_end_time}\'\n', '1', 'sync_transaction', null, '0', '1', '1', null, null);

-- ----------------------------
-- Table structure for config_workflows
-- ----------------------------
DROP TABLE IF EXISTS `config_workflows`;
CREATE TABLE `config_workflows` (
  `workflow_id` int(11) NOT NULL DEFAULT '0' COMMENT '工作集id',
  `workflow_name` varchar(128) DEFAULT NULL COMMENT '工作集名称',
  `run_status` int(11) DEFAULT NULL COMMENT '运行状态',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of config_workflows
-- ----------------------------
INSERT INTO `config_workflows` VALUES ('1', '数据源同步', '0', '2018-11-23 13:34:45', '2018-11-23 13:34:48');
INSERT INTO `config_workflows` VALUES ('2', '数据加工', '0', '2018-11-23 13:35:19', '2018-11-23 13:35:23');
INSERT INTO `config_workflows` VALUES ('0', '测试', '0', '2018-11-25 17:36:45', '2018-11-25 17:36:47');

-- ----------------------------
-- Table structure for config_workflow_time
-- ----------------------------
DROP TABLE IF EXISTS `config_workflow_time`;
CREATE TABLE `config_workflow_time` (
  `param_start_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `param_end_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of config_workflow_time
-- ----------------------------
INSERT INTO `config_workflow_time` VALUES ('2018-11-25 20:29:40', '2018-11-24 20:33:01', '2018-11-25 17:21:33', '2018-11-25 17:21:33');

-- ----------------------------
-- Table structure for file_attachments
-- ----------------------------
DROP TABLE IF EXISTS `file_attachments`;
CREATE TABLE `file_attachments` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `file_name` varchar(255) DEFAULT NULL COMMENT '文件名',
  `file_size` bigint(20) DEFAULT NULL COMMENT '文件大小',
  `file_path` varchar(255) DEFAULT NULL COMMENT '文件路径',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `type` varchar(100) DEFAULT NULL COMMENT '附件类型',
  `status` varchar(100) DEFAULT NULL COMMENT '状态 0：未生成 1：已生成',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of file_attachments
-- ----------------------------

-- ----------------------------
-- Table structure for file_attachments_map
-- ----------------------------
DROP TABLE IF EXISTS `file_attachments_map`;
CREATE TABLE `file_attachments_map` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `file_id` bigint(20) DEFAULT NULL COMMENT '文件ID',
  `file_name` varchar(255) DEFAULT NULL COMMENT '文件名称',
  `file_path` varchar(255) DEFAULT NULL COMMENT '文件地址',
  `create_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `type` varchar(100) DEFAULT NULL COMMENT '附件类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='附件映射表';

-- ----------------------------
-- Records of file_attachments_map
-- ----------------------------

-- ----------------------------
-- Table structure for ifcert_message_log
-- ----------------------------
DROP TABLE IF EXISTS `ifcert_message_log`;
CREATE TABLE `ifcert_message_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cause` varchar(255) DEFAULT NULL COMMENT '操作',
  `created_time` datetime DEFAULT NULL COMMENT '创建时间',
  `detail_log` text COMMENT '详细记录',
  `table_name` varchar(255) DEFAULT NULL COMMENT '表名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9781 DEFAULT CHARSET=utf8 COMMENT='日志记录表';

-- ----------------------------
-- Records of ifcert_message_log
-- ----------------------------

-- ----------------------------
-- Table structure for inf_batch
-- ----------------------------
DROP TABLE IF EXISTS `inf_batch`;
CREATE TABLE `inf_batch` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '批次流水号seq',
  `trade_code` varchar(128) DEFAULT NULL COMMENT '交易类型',
  `batch_number` varchar(128) DEFAULT NULL,
  `status` varchar(20) DEFAULT '0' COMMENT '批次处理状态',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `remark` varchar(256) DEFAULT NULL COMMENT '备注信息',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=484 DEFAULT CHARSET=utf8mb4 COMMENT='批次表';

-- ----------------------------
-- Records of inf_batch
-- ----------------------------
INSERT INTO `inf_batch` VALUES ('1', 'infTransferInfoService', null, null, '2018-11-22 15:22:57', null, null);
INSERT INTO `inf_batch` VALUES ('2', 'infTransferInfoService', null, null, '2018-11-22 15:24:27', null, null);
INSERT INTO `inf_batch` VALUES ('3', 'infDebtService', null, null, '2018-11-22 15:24:27', null, null);
INSERT INTO `inf_batch` VALUES ('4', 'infDebtService', null, null, '2018-11-22 15:24:27', null, null);
INSERT INTO `inf_batch` VALUES ('5', 'infTransferInfoService', null, null, '2018-11-22 15:41:40', null, null);
INSERT INTO `inf_batch` VALUES ('6', 'infDebtService', null, null, '2018-11-22 15:42:34', null, null);
INSERT INTO `inf_batch` VALUES ('7', 'infDebtStatusService', null, null, '2018-11-22 15:43:37', null, null);
INSERT INTO `inf_batch` VALUES ('8', 'infRepaymentPlanService', null, null, '2018-11-22 15:43:58', null, null);
INSERT INTO `inf_batch` VALUES ('9', 'infTransferInfoService', null, null, '2018-11-22 15:45:52', null, null);
INSERT INTO `inf_batch` VALUES ('10', 'infTransferInfoService', null, null, '2018-11-22 15:45:52', null, null);
INSERT INTO `inf_batch` VALUES ('11', 'infTransferInfoService', null, null, '2018-11-22 15:45:54', null, null);
INSERT INTO `inf_batch` VALUES ('12', 'infDebtService', null, null, '2018-11-22 15:46:04', null, null);
INSERT INTO `inf_batch` VALUES ('13', 'infDebtService', null, null, '2018-11-22 15:46:11', null, null);
INSERT INTO `inf_batch` VALUES ('14', 'infDebtStatusService', null, null, '2018-11-22 15:46:13', null, null);
INSERT INTO `inf_batch` VALUES ('15', 'infRepaymentPlanService', null, null, '2018-11-22 15:46:14', null, null);
INSERT INTO `inf_batch` VALUES ('16', 'infDebtStatusService', null, null, '2018-11-22 15:46:14', null, null);
INSERT INTO `inf_batch` VALUES ('17', 'infRepaymentPlanService', null, null, '2018-11-22 15:46:14', null, null);
INSERT INTO `inf_batch` VALUES ('18', 'infTransactionService', null, null, '2018-11-22 15:46:14', null, null);
INSERT INTO `inf_batch` VALUES ('19', 'infTransactionService', null, null, '2018-11-22 15:46:14', null, null);
INSERT INTO `inf_batch` VALUES ('20', 'infTransferProjectService', null, null, '2018-11-22 15:46:15', null, null);
INSERT INTO `inf_batch` VALUES ('21', 'infTransferProjectService', null, null, '2018-11-22 15:46:15', null, null);
INSERT INTO `inf_batch` VALUES ('22', 'infTransferStatusService', null, null, '2018-11-22 15:46:59', null, null);
INSERT INTO `inf_batch` VALUES ('23', 'infTransferStatusService', null, null, '2018-11-22 15:47:00', null, null);
INSERT INTO `inf_batch` VALUES ('24', 'infDebtService', null, null, '2018-11-22 15:47:00', null, null);
INSERT INTO `inf_batch` VALUES ('25', 'infTakeInfoService', null, null, '2018-11-22 15:47:28', null, null);
INSERT INTO `inf_batch` VALUES ('26', 'infDebtStatusService', null, null, '2018-11-22 15:47:28', null, null);
INSERT INTO `inf_batch` VALUES ('27', 'infTakeInfoService', null, null, '2018-11-22 15:47:28', null, null);
INSERT INTO `inf_batch` VALUES ('28', 'infRepaymentPlanService', null, null, '2018-11-22 15:47:43', null, null);
INSERT INTO `inf_batch` VALUES ('29', 'infTransferInfoService', null, null, '2018-11-22 15:48:27', null, null);
INSERT INTO `inf_batch` VALUES ('30', 'infDebtService', null, null, '2018-11-22 15:48:27', null, null);
INSERT INTO `inf_batch` VALUES ('31', 'infDebtStatusService', null, null, '2018-11-22 15:48:27', null, null);
INSERT INTO `inf_batch` VALUES ('32', 'infRepaymentPlanService', null, null, '2018-11-22 15:48:27', null, null);
INSERT INTO `inf_batch` VALUES ('33', 'infTransactionService', null, null, '2018-11-22 15:48:27', null, null);
INSERT INTO `inf_batch` VALUES ('34', 'infTransferProjectService', null, null, '2018-11-22 15:48:27', null, null);
INSERT INTO `inf_batch` VALUES ('35', 'infTransferStatusService', null, null, '2018-11-22 15:48:28', null, null);
INSERT INTO `inf_batch` VALUES ('36', 'infTakeInfoService', null, null, '2018-11-22 15:48:28', null, null);
INSERT INTO `inf_batch` VALUES ('37', 'infTransferInfoService', null, '0', '2018-11-22 16:26:22', null, null);
INSERT INTO `inf_batch` VALUES ('38', 'infDebtService', null, '0', '2018-11-22 16:26:22', null, null);
INSERT INTO `inf_batch` VALUES ('39', 'infDebtStatusService', null, '0', '2018-11-22 16:26:22', null, null);
INSERT INTO `inf_batch` VALUES ('40', 'infRepaymentPlanService', null, '0', '2018-11-22 16:26:22', null, null);
INSERT INTO `inf_batch` VALUES ('41', 'infTransactionService', null, '0', '2018-11-22 16:26:23', null, null);
INSERT INTO `inf_batch` VALUES ('42', 'infTransferProjectService', null, '0', '2018-11-22 16:26:23', null, null);
INSERT INTO `inf_batch` VALUES ('43', 'infTransferStatusService', null, '0', '2018-11-22 16:26:23', null, null);
INSERT INTO `inf_batch` VALUES ('44', 'infTakeInfoService', null, '0', '2018-11-22 16:26:23', null, null);
INSERT INTO `inf_batch` VALUES ('45', 'infTransferInfoService', null, '0', '2018-11-23 15:26:28', null, null);
INSERT INTO `inf_batch` VALUES ('46', 'infDebtService', null, '0', '2018-11-23 15:26:28', null, null);
INSERT INTO `inf_batch` VALUES ('47', 'infDebtStatusService', null, '0', '2018-11-23 15:26:28', null, null);
INSERT INTO `inf_batch` VALUES ('48', 'infRepaymentPlanService', null, '0', '2018-11-23 15:26:28', null, null);
INSERT INTO `inf_batch` VALUES ('49', 'infTransactionService', null, '0', '2018-11-23 15:26:28', null, null);
INSERT INTO `inf_batch` VALUES ('50', 'infTransferProjectService', null, '0', '2018-11-23 15:26:28', null, null);
INSERT INTO `inf_batch` VALUES ('51', 'infTransferStatusService', null, '0', '2018-11-23 15:26:28', null, null);
INSERT INTO `inf_batch` VALUES ('52', 'infTakeInfoService', null, '0', '2018-11-23 15:26:28', null, null);
INSERT INTO `inf_batch` VALUES ('53', 'infTransferInfoService', null, '0', '2018-11-23 15:45:49', null, null);
INSERT INTO `inf_batch` VALUES ('54', 'infTransferInfoService', null, '0', '2018-11-23 15:50:09', null, null);
INSERT INTO `inf_batch` VALUES ('55', 'infTransferInfoService', null, '0', '2018-11-23 15:56:40', null, null);
INSERT INTO `inf_batch` VALUES ('56', 'infDebtService', null, '0', '2018-11-23 15:56:40', null, null);
INSERT INTO `inf_batch` VALUES ('57', 'infDebtStatusService', null, '0', '2018-11-23 15:56:40', null, null);
INSERT INTO `inf_batch` VALUES ('58', 'infRepaymentPlanService', null, '0', '2018-11-23 15:56:40', null, null);
INSERT INTO `inf_batch` VALUES ('59', 'infTransactionService', null, '0', '2018-11-23 15:56:40', null, null);
INSERT INTO `inf_batch` VALUES ('60', 'infTransferProjectService', null, '0', '2018-11-23 15:56:40', null, null);
INSERT INTO `inf_batch` VALUES ('61', 'infTransferStatusService', null, '0', '2018-11-23 15:56:40', null, null);
INSERT INTO `inf_batch` VALUES ('62', 'infTakeInfoService', null, '0', '2018-11-23 15:56:40', null, null);
INSERT INTO `inf_batch` VALUES ('63', 'infTransferInfoService', null, '0', '2018-11-23 15:59:53', null, null);
INSERT INTO `inf_batch` VALUES ('64', 'infTransferInfoService', null, '0', '2018-11-23 15:59:53', null, null);
INSERT INTO `inf_batch` VALUES ('65', 'infDebtService', null, '0', '2018-11-23 16:01:32', null, null);
INSERT INTO `inf_batch` VALUES ('66', 'infDebtService', null, '0', '2018-11-23 16:01:36', null, null);
INSERT INTO `inf_batch` VALUES ('67', 'infDebtStatusService', null, '0', '2018-11-23 16:01:36', null, null);
INSERT INTO `inf_batch` VALUES ('68', 'infDebtStatusService', null, '0', '2018-11-23 16:01:36', null, null);
INSERT INTO `inf_batch` VALUES ('69', 'infRepaymentPlanService', null, '0', '2018-11-23 16:01:41', null, null);
INSERT INTO `inf_batch` VALUES ('70', 'infRepaymentPlanService', null, '0', '2018-11-23 16:01:41', null, null);
INSERT INTO `inf_batch` VALUES ('71', 'infTransactionService', null, '0', '2018-11-23 16:01:41', null, null);
INSERT INTO `inf_batch` VALUES ('72', 'infTransactionService', null, '0', '2018-11-23 16:01:41', null, null);
INSERT INTO `inf_batch` VALUES ('73', 'infTransferProjectService', null, '0', '2018-11-23 16:01:41', null, null);
INSERT INTO `inf_batch` VALUES ('74', 'infTransferProjectService', null, '0', '2018-11-23 16:01:41', null, null);
INSERT INTO `inf_batch` VALUES ('75', 'infTransferStatusService', null, '0', '2018-11-23 16:01:41', null, null);
INSERT INTO `inf_batch` VALUES ('76', 'infTransferStatusService', null, '0', '2018-11-23 16:01:41', null, null);
INSERT INTO `inf_batch` VALUES ('77', 'infTakeInfoService', null, '0', '2018-11-23 16:01:41', null, null);
INSERT INTO `inf_batch` VALUES ('78', 'infTakeInfoService', null, '0', '2018-11-23 16:01:41', null, null);
INSERT INTO `inf_batch` VALUES ('79', 'infTransferInfoService', null, '0', '2018-11-23 16:09:19', null, null);
INSERT INTO `inf_batch` VALUES ('80', 'infTransferInfoService', null, '0', '2018-11-23 17:32:50', null, null);
INSERT INTO `inf_batch` VALUES ('81', 'infDebtService', null, '0', '2018-11-23 17:33:12', null, null);
INSERT INTO `inf_batch` VALUES ('82', 'infDebtStatusService', null, '0', '2018-11-23 17:33:12', null, null);
INSERT INTO `inf_batch` VALUES ('83', 'infRepaymentPlanService', null, '0', '2018-11-23 17:33:12', null, null);
INSERT INTO `inf_batch` VALUES ('84', 'infTransactionService', null, '0', '2018-11-23 17:33:12', null, null);
INSERT INTO `inf_batch` VALUES ('85', 'infTransferProjectService', null, '0', '2018-11-23 17:33:12', null, null);
INSERT INTO `inf_batch` VALUES ('86', 'infTransferStatusService', null, '0', '2018-11-23 17:33:12', null, null);
INSERT INTO `inf_batch` VALUES ('87', 'infTakeInfoService', null, '0', '2018-11-23 17:33:12', null, null);
INSERT INTO `inf_batch` VALUES ('88', 'infTransferInfoService', null, '0', '2018-11-23 18:03:39', null, null);
INSERT INTO `inf_batch` VALUES ('89', 'infDebtService', null, '0', '2018-11-23 18:03:39', null, null);
INSERT INTO `inf_batch` VALUES ('90', 'infDebtStatusService', null, '0', '2018-11-23 18:03:39', null, null);
INSERT INTO `inf_batch` VALUES ('91', 'infRepaymentPlanService', null, '0', '2018-11-23 18:03:39', null, null);
INSERT INTO `inf_batch` VALUES ('92', 'infTransactionService', null, '0', '2018-11-23 18:03:39', null, null);
INSERT INTO `inf_batch` VALUES ('93', 'infTransferProjectService', null, '0', '2018-11-23 18:03:39', null, null);
INSERT INTO `inf_batch` VALUES ('94', 'infTransferStatusService', null, '0', '2018-11-23 18:03:39', null, null);
INSERT INTO `inf_batch` VALUES ('95', 'infTakeInfoService', null, '0', '2018-11-23 18:03:39', null, null);
INSERT INTO `inf_batch` VALUES ('96', 'infTransferInfoService', null, '0', '2018-11-23 18:12:20', null, null);
INSERT INTO `inf_batch` VALUES ('97', 'infDebtService', null, '0', '2018-11-23 18:13:04', null, null);
INSERT INTO `inf_batch` VALUES ('98', 'infDebtStatusService', null, '0', '2018-11-23 18:13:04', null, null);
INSERT INTO `inf_batch` VALUES ('99', 'infRepaymentPlanService', null, '0', '2018-11-23 18:13:04', null, null);
INSERT INTO `inf_batch` VALUES ('100', 'infTransactionService', null, '0', '2018-11-23 18:13:04', null, null);
INSERT INTO `inf_batch` VALUES ('101', 'infTransferProjectService', null, '0', '2018-11-23 18:13:04', null, null);
INSERT INTO `inf_batch` VALUES ('102', 'infTransferStatusService', null, '0', '2018-11-23 18:13:04', null, null);
INSERT INTO `inf_batch` VALUES ('103', 'infTakeInfoService', null, '0', '2018-11-23 18:13:04', null, null);
INSERT INTO `inf_batch` VALUES ('104', 'infTransferInfoService', null, '0', '2018-11-23 18:13:56', null, null);
INSERT INTO `inf_batch` VALUES ('105', 'infDebtService', null, '0', '2018-11-23 18:14:12', null, null);
INSERT INTO `inf_batch` VALUES ('106', 'infTransferInfoService', null, '0', '2018-11-23 18:14:12', null, null);
INSERT INTO `inf_batch` VALUES ('107', 'infDebtStatusService', null, '0', '2018-11-23 18:14:13', null, null);
INSERT INTO `inf_batch` VALUES ('108', 'infDebtService', null, '0', '2018-11-23 18:14:13', null, null);
INSERT INTO `inf_batch` VALUES ('109', 'infRepaymentPlanService', null, '0', '2018-11-23 18:14:13', null, null);
INSERT INTO `inf_batch` VALUES ('110', 'infDebtStatusService', null, '0', '2018-11-23 18:14:13', null, null);
INSERT INTO `inf_batch` VALUES ('111', 'infTransactionService', null, '0', '2018-11-23 18:14:13', null, null);
INSERT INTO `inf_batch` VALUES ('112', 'infRepaymentPlanService', null, '0', '2018-11-23 18:14:13', null, null);
INSERT INTO `inf_batch` VALUES ('113', 'infTransferProjectService', null, '0', '2018-11-23 18:14:13', null, null);
INSERT INTO `inf_batch` VALUES ('114', 'infTransactionService', null, '0', '2018-11-23 18:14:13', null, null);
INSERT INTO `inf_batch` VALUES ('115', 'infTransferStatusService', null, '0', '2018-11-23 18:14:13', null, null);
INSERT INTO `inf_batch` VALUES ('116', 'infTransferProjectService', null, '0', '2018-11-23 18:14:13', null, null);
INSERT INTO `inf_batch` VALUES ('117', 'infTakeInfoService', null, '0', '2018-11-23 18:14:13', null, null);
INSERT INTO `inf_batch` VALUES ('118', 'infTransferStatusService', null, '0', '2018-11-23 18:14:13', null, null);
INSERT INTO `inf_batch` VALUES ('119', 'infTakeInfoService', null, '0', '2018-11-23 18:14:13', null, null);
INSERT INTO `inf_batch` VALUES ('120', 'infTransferInfoService', null, '0', '2018-11-23 18:14:29', null, null);
INSERT INTO `inf_batch` VALUES ('121', 'infDebtService', null, '0', '2018-11-23 18:14:29', null, null);
INSERT INTO `inf_batch` VALUES ('122', 'infDebtStatusService', null, '0', '2018-11-23 18:14:29', null, null);
INSERT INTO `inf_batch` VALUES ('123', 'infRepaymentPlanService', null, '0', '2018-11-23 18:14:29', null, null);
INSERT INTO `inf_batch` VALUES ('124', 'infTransactionService', null, '0', '2018-11-23 18:14:29', null, null);
INSERT INTO `inf_batch` VALUES ('125', 'infTransferProjectService', null, '0', '2018-11-23 18:14:29', null, null);
INSERT INTO `inf_batch` VALUES ('126', 'infTransferStatusService', null, '0', '2018-11-23 18:14:29', null, null);
INSERT INTO `inf_batch` VALUES ('127', 'infTakeInfoService', null, '0', '2018-11-23 18:14:29', null, null);
INSERT INTO `inf_batch` VALUES ('128', 'infTransferInfoService', null, '0', '2018-11-23 18:14:40', null, null);
INSERT INTO `inf_batch` VALUES ('129', 'infDebtService', null, '0', '2018-11-23 18:14:40', null, null);
INSERT INTO `inf_batch` VALUES ('130', 'infDebtStatusService', null, '0', '2018-11-23 18:14:40', null, null);
INSERT INTO `inf_batch` VALUES ('131', 'infRepaymentPlanService', null, '0', '2018-11-23 18:14:40', null, null);
INSERT INTO `inf_batch` VALUES ('132', 'infTransactionService', null, '0', '2018-11-23 18:14:40', null, null);
INSERT INTO `inf_batch` VALUES ('133', 'infTransferProjectService', null, '0', '2018-11-23 18:14:40', null, null);
INSERT INTO `inf_batch` VALUES ('134', 'infTransferStatusService', null, '0', '2018-11-23 18:14:41', null, null);
INSERT INTO `inf_batch` VALUES ('135', 'infTakeInfoService', null, '0', '2018-11-23 18:14:41', null, null);
INSERT INTO `inf_batch` VALUES ('136', 'infTransferInfoService', null, '0', '2018-11-23 18:15:39', null, null);
INSERT INTO `inf_batch` VALUES ('137', 'infDebtService', null, '0', '2018-11-23 18:16:38', null, null);
INSERT INTO `inf_batch` VALUES ('138', 'infDebtStatusService', null, '0', '2018-11-23 18:16:38', null, null);
INSERT INTO `inf_batch` VALUES ('139', 'infRepaymentPlanService', null, '0', '2018-11-23 18:16:38', null, null);
INSERT INTO `inf_batch` VALUES ('140', 'infTransactionService', null, '0', '2018-11-23 18:16:38', null, null);
INSERT INTO `inf_batch` VALUES ('141', 'infTransferProjectService', null, '0', '2018-11-23 18:16:38', null, null);
INSERT INTO `inf_batch` VALUES ('142', 'infTransferStatusService', null, '0', '2018-11-23 18:16:38', null, null);
INSERT INTO `inf_batch` VALUES ('143', 'infTakeInfoService', null, '0', '2018-11-23 18:16:38', null, null);
INSERT INTO `inf_batch` VALUES ('144', 'infTransferInfoService', null, '0', '2018-11-23 18:16:49', null, null);
INSERT INTO `inf_batch` VALUES ('145', 'infDebtService', null, '0', '2018-11-23 18:17:20', null, null);
INSERT INTO `inf_batch` VALUES ('146', 'infTransferInfoService', null, '0', '2018-11-23 18:18:44', null, null);
INSERT INTO `inf_batch` VALUES ('147', 'infTransferInfoService', null, '0', '2018-11-23 18:25:17', null, null);
INSERT INTO `inf_batch` VALUES ('148', 'infTransferInfoService', null, '0', '2018-11-23 18:49:47', null, null);
INSERT INTO `inf_batch` VALUES ('149', 'infTransferInfoService', null, '0', '2018-11-23 20:16:17', null, null);
INSERT INTO `inf_batch` VALUES ('150', 'infTransferInfoService', null, '0', '2018-11-23 20:32:58', null, null);
INSERT INTO `inf_batch` VALUES ('151', 'infTransferInfoService', null, '0', '2018-11-23 20:42:22', null, null);
INSERT INTO `inf_batch` VALUES ('152', 'infTransferInfoService', null, '0', '2018-11-23 20:48:42', null, null);
INSERT INTO `inf_batch` VALUES ('153', 'infTransferInfoService', null, '0', '2018-11-23 21:07:41', null, null);
INSERT INTO `inf_batch` VALUES ('154', 'infTransferInfoService', null, '0', '2018-11-24 10:13:50', null, null);
INSERT INTO `inf_batch` VALUES ('155', 'infTransferInfoService', null, '0', '2018-11-24 10:42:05', null, null);
INSERT INTO `inf_batch` VALUES ('156', 'infTransferInfoService', null, '0', '2018-11-24 10:48:30', null, null);
INSERT INTO `inf_batch` VALUES ('157', 'infTransferInfoService', null, '0', '2018-11-24 10:51:23', null, null);
INSERT INTO `inf_batch` VALUES ('158', 'infTransferInfoService', null, '0', '2018-11-24 10:55:26', null, null);
INSERT INTO `inf_batch` VALUES ('159', 'infTransferInfoService', null, '0', '2018-11-24 11:19:00', null, null);
INSERT INTO `inf_batch` VALUES ('160', 'infTransferInfoService', null, '0', '2018-11-24 11:29:45', null, null);
INSERT INTO `inf_batch` VALUES ('161', 'infTransferInfoService', null, '0', '2018-11-24 11:42:17', null, null);
INSERT INTO `inf_batch` VALUES ('162', 'infTransferInfoService', null, '0', '2018-11-24 11:46:14', null, null);
INSERT INTO `inf_batch` VALUES ('163', 'infTransferInfoService', null, '0', '2018-11-24 12:01:46', null, null);
INSERT INTO `inf_batch` VALUES ('164', 'infTransferInfoService', null, '0', '2018-11-24 12:02:49', null, null);
INSERT INTO `inf_batch` VALUES ('165', 'infTransferInfoService', null, '0', '2018-11-24 12:04:53', null, null);
INSERT INTO `inf_batch` VALUES ('166', 'infTransferInfoService', null, '0', '2018-11-24 12:11:30', null, null);
INSERT INTO `inf_batch` VALUES ('167', 'infTransferInfoService', null, '0', '2018-11-24 12:15:00', null, null);
INSERT INTO `inf_batch` VALUES ('168', 'infDebtService', null, '0', '2018-11-24 12:15:08', null, null);
INSERT INTO `inf_batch` VALUES ('169', 'infDebtStatusService', null, '0', '2018-11-24 12:15:08', null, null);
INSERT INTO `inf_batch` VALUES ('170', 'infRepaymentPlanService', null, '0', '2018-11-24 12:15:08', null, null);
INSERT INTO `inf_batch` VALUES ('171', 'infTransactionService', null, '0', '2018-11-24 12:15:08', null, null);
INSERT INTO `inf_batch` VALUES ('172', 'infTransferProjectService', null, '0', '2018-11-24 12:15:08', null, null);
INSERT INTO `inf_batch` VALUES ('173', 'infTransferStatusService', null, '0', '2018-11-24 12:15:08', null, null);
INSERT INTO `inf_batch` VALUES ('174', 'infTakeInfoService', null, '0', '2018-11-24 12:15:08', null, null);
INSERT INTO `inf_batch` VALUES ('175', 'infTransferInfoService', null, '0', '2018-11-24 12:25:46', null, null);
INSERT INTO `inf_batch` VALUES ('176', 'infDebtService', null, '0', '2018-11-24 12:26:35', null, null);
INSERT INTO `inf_batch` VALUES ('177', 'infDebtStatusService', null, '0', '2018-11-24 12:26:35', null, null);
INSERT INTO `inf_batch` VALUES ('178', 'infRepaymentPlanService', null, '0', '2018-11-24 12:26:35', null, null);
INSERT INTO `inf_batch` VALUES ('179', 'infTransactionService', null, '0', '2018-11-24 12:26:35', null, null);
INSERT INTO `inf_batch` VALUES ('180', 'infTransferProjectService', null, '0', '2018-11-24 12:26:35', null, null);
INSERT INTO `inf_batch` VALUES ('181', 'infTransferStatusService', null, '0', '2018-11-24 12:26:36', null, null);
INSERT INTO `inf_batch` VALUES ('182', 'infTakeInfoService', null, '0', '2018-11-24 12:26:36', null, null);
INSERT INTO `inf_batch` VALUES ('183', 'infTransferInfoService', 'CERT20171018002_201811241_183', '10207', '2018-11-24 12:34:08', '2018-11-24 12:34:51', '[调试]错误,Creditor投资金额(元)(invAmount)错误, 原因有以下几种可能: , 示例数据:100.00 <-> 推送数据: 12');
INSERT INTO `inf_batch` VALUES ('184', 'infDebtService', null, '0', '2018-11-24 12:34:54', null, null);
INSERT INTO `inf_batch` VALUES ('185', 'infDebtStatusService', null, '0', '2018-11-24 12:34:54', null, null);
INSERT INTO `inf_batch` VALUES ('186', 'infRepaymentPlanService', null, '0', '2018-11-24 12:34:54', null, null);
INSERT INTO `inf_batch` VALUES ('187', 'infTransactionService', null, '0', '2018-11-24 12:34:54', null, null);
INSERT INTO `inf_batch` VALUES ('188', 'infTransferProjectService', null, '0', '2018-11-24 12:34:54', null, null);
INSERT INTO `inf_batch` VALUES ('189', 'infTransferStatusService', null, '0', '2018-11-24 12:34:54', null, null);
INSERT INTO `inf_batch` VALUES ('190', 'infTakeInfoService', null, '0', '2018-11-24 12:34:54', null, null);
INSERT INTO `inf_batch` VALUES ('191', 'infTransferInfoService', null, '0', '2018-11-24 12:36:35', null, null);
INSERT INTO `inf_batch` VALUES ('192', 'infDebtService', null, '0', '2018-11-24 12:36:40', null, null);
INSERT INTO `inf_batch` VALUES ('193', 'infTransferInfoService', null, '0', '2018-11-24 12:36:40', null, null);
INSERT INTO `inf_batch` VALUES ('194', 'infTransferInfoService', null, '0', '2018-11-24 12:36:40', null, null);
INSERT INTO `inf_batch` VALUES ('195', 'infDebtStatusService', null, '0', '2018-11-24 12:36:40', null, null);
INSERT INTO `inf_batch` VALUES ('196', 'infDebtService', null, '0', '2018-11-24 12:36:41', null, null);
INSERT INTO `inf_batch` VALUES ('197', 'infDebtService', null, '0', '2018-11-24 12:36:41', null, null);
INSERT INTO `inf_batch` VALUES ('198', 'infRepaymentPlanService', null, '0', '2018-11-24 12:36:41', null, null);
INSERT INTO `inf_batch` VALUES ('199', 'infDebtStatusService', null, '0', '2018-11-24 12:36:41', null, null);
INSERT INTO `inf_batch` VALUES ('200', 'infDebtStatusService', null, '0', '2018-11-24 12:36:41', null, null);
INSERT INTO `inf_batch` VALUES ('201', 'infRepaymentPlanService', null, '0', '2018-11-24 12:36:41', null, null);
INSERT INTO `inf_batch` VALUES ('202', 'infTransactionService', null, '0', '2018-11-24 12:36:41', null, null);
INSERT INTO `inf_batch` VALUES ('203', 'infRepaymentPlanService', null, '0', '2018-11-24 12:36:41', null, null);
INSERT INTO `inf_batch` VALUES ('204', 'infTransactionService', null, '0', '2018-11-24 12:36:41', null, null);
INSERT INTO `inf_batch` VALUES ('205', 'infTransferProjectService', null, '0', '2018-11-24 12:36:41', null, null);
INSERT INTO `inf_batch` VALUES ('206', 'infTransactionService', null, '0', '2018-11-24 12:36:41', null, null);
INSERT INTO `inf_batch` VALUES ('207', 'infTransferProjectService', null, '0', '2018-11-24 12:36:41', null, null);
INSERT INTO `inf_batch` VALUES ('208', 'infTransferProjectService', null, '0', '2018-11-24 12:36:41', null, null);
INSERT INTO `inf_batch` VALUES ('209', 'infTransferStatusService', null, '0', '2018-11-24 12:36:41', null, null);
INSERT INTO `inf_batch` VALUES ('210', 'infTransferStatusService', null, '0', '2018-11-24 12:36:41', null, null);
INSERT INTO `inf_batch` VALUES ('211', 'infTransferStatusService', null, '0', '2018-11-24 12:36:41', null, null);
INSERT INTO `inf_batch` VALUES ('212', 'infTakeInfoService', null, '0', '2018-11-24 12:36:41', null, null);
INSERT INTO `inf_batch` VALUES ('213', 'infTakeInfoService', null, '0', '2018-11-24 12:36:41', null, null);
INSERT INTO `inf_batch` VALUES ('214', 'infTakeInfoService', null, '0', '2018-11-24 12:36:41', null, null);
INSERT INTO `inf_batch` VALUES ('215', 'infTransferInfoService', null, '0', '2018-11-24 12:38:51', null, null);
INSERT INTO `inf_batch` VALUES ('216', 'infDebtService', null, '0', '2018-11-24 12:38:51', null, null);
INSERT INTO `inf_batch` VALUES ('217', 'infDebtStatusService', null, '0', '2018-11-24 12:38:51', null, null);
INSERT INTO `inf_batch` VALUES ('218', 'infRepaymentPlanService', null, '0', '2018-11-24 12:38:51', null, null);
INSERT INTO `inf_batch` VALUES ('219', 'infTransactionService', null, '0', '2018-11-24 12:38:51', null, null);
INSERT INTO `inf_batch` VALUES ('220', 'infTransferProjectService', null, '0', '2018-11-24 12:38:51', null, null);
INSERT INTO `inf_batch` VALUES ('221', 'infTransferStatusService', null, '0', '2018-11-24 12:38:51', null, null);
INSERT INTO `inf_batch` VALUES ('222', 'infTakeInfoService', null, '0', '2018-11-24 12:38:51', null, null);
INSERT INTO `inf_batch` VALUES ('223', 'infTransferInfoService', null, '0', '2018-11-24 13:25:58', null, null);
INSERT INTO `inf_batch` VALUES ('224', 'infDebtService', null, '0', '2018-11-24 13:25:58', null, null);
INSERT INTO `inf_batch` VALUES ('225', 'infDebtStatusService', null, '0', '2018-11-24 13:25:58', null, null);
INSERT INTO `inf_batch` VALUES ('226', 'infRepaymentPlanService', null, '0', '2018-11-24 13:25:58', null, null);
INSERT INTO `inf_batch` VALUES ('227', 'infTransactionService', null, '0', '2018-11-24 13:25:58', null, null);
INSERT INTO `inf_batch` VALUES ('228', 'infTransferProjectService', null, '0', '2018-11-24 13:25:58', null, null);
INSERT INTO `inf_batch` VALUES ('229', 'infTransferStatusService', null, '0', '2018-11-24 13:25:58', null, null);
INSERT INTO `inf_batch` VALUES ('230', 'infTakeInfoService', null, '0', '2018-11-24 13:25:58', null, null);
INSERT INTO `inf_batch` VALUES ('231', 'infTransferInfoService', null, '0', '2018-11-24 13:26:40', null, null);
INSERT INTO `inf_batch` VALUES ('232', 'infDebtService', null, '0', '2018-11-24 13:26:40', null, null);
INSERT INTO `inf_batch` VALUES ('233', 'infDebtStatusService', null, '0', '2018-11-24 13:26:40', null, null);
INSERT INTO `inf_batch` VALUES ('234', 'infRepaymentPlanService', null, '0', '2018-11-24 13:26:41', null, null);
INSERT INTO `inf_batch` VALUES ('235', 'infTransactionService', null, '0', '2018-11-24 13:26:41', null, null);
INSERT INTO `inf_batch` VALUES ('236', 'infTransferProjectService', null, '0', '2018-11-24 13:26:41', null, null);
INSERT INTO `inf_batch` VALUES ('237', 'infTransferStatusService', null, '0', '2018-11-24 13:26:41', null, null);
INSERT INTO `inf_batch` VALUES ('238', 'infTakeInfoService', null, '0', '2018-11-24 13:26:41', null, null);
INSERT INTO `inf_batch` VALUES ('239', 'infTransferInfoService', null, '0', '2018-11-24 13:28:24', null, null);
INSERT INTO `inf_batch` VALUES ('240', 'infDebtService', null, '0', '2018-11-24 13:28:36', null, null);
INSERT INTO `inf_batch` VALUES ('241', 'infDebtStatusService', null, '0', '2018-11-24 13:28:42', null, null);
INSERT INTO `inf_batch` VALUES ('242', 'infRepaymentPlanService', null, '0', '2018-11-24 13:28:50', null, null);
INSERT INTO `inf_batch` VALUES ('243', 'infTransactionService', null, '0', '2018-11-24 13:28:52', null, null);
INSERT INTO `inf_batch` VALUES ('244', 'infTransferProjectService', null, '0', '2018-11-24 13:28:53', null, null);
INSERT INTO `inf_batch` VALUES ('245', 'infTransferStatusService', null, '0', '2018-11-24 13:28:53', null, null);
INSERT INTO `inf_batch` VALUES ('246', 'infTakeInfoService', null, '0', '2018-11-24 13:28:58', null, null);
INSERT INTO `inf_batch` VALUES ('247', 'infTransferInfoService', null, '0', '2018-11-24 13:35:44', null, null);
INSERT INTO `inf_batch` VALUES ('248', 'infDebtService', null, '0', '2018-11-24 13:35:54', null, null);
INSERT INTO `inf_batch` VALUES ('249', 'infDebtStatusService', null, '0', '2018-11-24 13:35:56', null, null);
INSERT INTO `inf_batch` VALUES ('250', 'infRepaymentPlanService', null, '0', '2018-11-24 13:35:57', null, null);
INSERT INTO `inf_batch` VALUES ('251', 'infTransactionService', null, '0', '2018-11-24 13:35:58', null, null);
INSERT INTO `inf_batch` VALUES ('252', 'infTransferProjectService', null, '0', '2018-11-24 13:35:59', null, null);
INSERT INTO `inf_batch` VALUES ('253', 'infTransferStatusService', null, '0', '2018-11-24 13:35:59', null, null);
INSERT INTO `inf_batch` VALUES ('254', 'infTakeInfoService', null, '0', '2018-11-24 13:36:02', null, null);
INSERT INTO `inf_batch` VALUES ('255', 'infTransferInfoService', 'CERT20171018002_201811241_255', '10208', '2018-11-24 13:36:27', '2018-11-24 13:36:52', '[调试]错误,Creditor投资预期年化收益率(invRate)错误, 原因有以下几种可能: , 示例数据:2018-10-11 11:20:20 <-> 推送数据: 1');
INSERT INTO `inf_batch` VALUES ('256', 'infDebtService', null, '0', '2018-11-24 13:36:53', null, null);
INSERT INTO `inf_batch` VALUES ('257', 'infDebtStatusService', null, '0', '2018-11-24 13:36:53', null, null);
INSERT INTO `inf_batch` VALUES ('258', 'infRepaymentPlanService', null, '0', '2018-11-24 13:36:53', null, null);
INSERT INTO `inf_batch` VALUES ('259', 'infTransactionService', null, '0', '2018-11-24 13:36:53', null, null);
INSERT INTO `inf_batch` VALUES ('260', 'infTransferProjectService', null, '0', '2018-11-24 13:36:53', null, null);
INSERT INTO `inf_batch` VALUES ('261', 'infTransferStatusService', null, '0', '2018-11-24 13:36:53', null, null);
INSERT INTO `inf_batch` VALUES ('262', 'infTakeInfoService', null, '0', '2018-11-24 13:36:53', null, null);
INSERT INTO `inf_batch` VALUES ('263', 'infTransferInfoService', null, '0', '2018-11-24 18:38:18', null, null);
INSERT INTO `inf_batch` VALUES ('264', 'infTransferInfoService', 'CERT20171018002_201811241_264', '10208', '2018-11-24 18:40:09', '2018-11-24 18:41:02', '[调试]错误,Creditor投资预期年化收益率(invRate)错误, 原因有以下几种可能: , 示例数据:2018-10-11 11:20:20 <-> 推送数据: 1');
INSERT INTO `inf_batch` VALUES ('265', 'infDebtService', 'CERT20171018002_201811241_265', '3032', '2018-11-24 18:41:04', '2018-11-24 18:41:04', '[调试]错误,InfScatterInvest借款年利率数据(loanRate)错误, 原因有以下几种可能: 1.  该字段为空   2. 字段名错误    3. 小数点未保留到6位  4.长度超过32, 示例数据:0.092342 <-> 推送数据: loan_rate');
INSERT INTO `inf_batch` VALUES ('266', 'infDebtStatusService', null, '0', '2018-11-24 18:41:06', null, null);
INSERT INTO `inf_batch` VALUES ('267', 'infRepaymentPlanService', null, '0', '2018-11-24 18:41:06', null, null);
INSERT INTO `inf_batch` VALUES ('268', 'infTransactionService', null, '0', '2018-11-24 18:41:06', null, null);
INSERT INTO `inf_batch` VALUES ('269', 'infTransferProjectService', null, '0', '2018-11-24 18:41:06', null, null);
INSERT INTO `inf_batch` VALUES ('270', 'infTransferStatusService', null, '0', '2018-11-24 18:41:06', null, null);
INSERT INTO `inf_batch` VALUES ('271', 'infTakeInfoService', null, '0', '2018-11-24 18:41:06', null, null);
INSERT INTO `inf_batch` VALUES ('272', 'infTransferInfoService', null, '0', '2018-11-24 18:41:31', null, null);
INSERT INTO `inf_batch` VALUES ('273', 'infDebtService', null, '0', '2018-11-24 18:41:31', null, null);
INSERT INTO `inf_batch` VALUES ('274', 'infDebtStatusService', null, '0', '2018-11-24 18:41:31', null, null);
INSERT INTO `inf_batch` VALUES ('275', 'infRepaymentPlanService', null, '0', '2018-11-24 18:41:31', null, null);
INSERT INTO `inf_batch` VALUES ('276', 'infTransactionService', null, '0', '2018-11-24 18:41:31', null, null);
INSERT INTO `inf_batch` VALUES ('277', 'infTransferProjectService', null, '0', '2018-11-24 18:41:31', null, null);
INSERT INTO `inf_batch` VALUES ('278', 'infTransferStatusService', null, '0', '2018-11-24 18:41:31', null, null);
INSERT INTO `inf_batch` VALUES ('279', 'infTakeInfoService', null, '0', '2018-11-24 18:41:31', null, null);
INSERT INTO `inf_batch` VALUES ('280', 'infTransferInfoService', null, '0', '2018-11-24 18:46:25', null, null);
INSERT INTO `inf_batch` VALUES ('281', 'infDebtService', null, '0', '2018-11-24 18:46:25', null, null);
INSERT INTO `inf_batch` VALUES ('282', 'infDebtStatusService', null, '0', '2018-11-24 18:46:25', null, null);
INSERT INTO `inf_batch` VALUES ('283', 'infRepaymentPlanService', null, '0', '2018-11-24 18:46:25', null, null);
INSERT INTO `inf_batch` VALUES ('284', 'infTransactionService', null, '0', '2018-11-24 18:46:25', null, null);
INSERT INTO `inf_batch` VALUES ('285', 'infTransferProjectService', null, '0', '2018-11-24 18:46:25', null, null);
INSERT INTO `inf_batch` VALUES ('286', 'infTransferStatusService', null, '0', '2018-11-24 18:46:25', null, null);
INSERT INTO `inf_batch` VALUES ('287', 'infTakeInfoService', null, '0', '2018-11-24 18:46:25', null, null);
INSERT INTO `inf_batch` VALUES ('288', 'infTransferInfoService', null, '0', '2018-11-24 18:53:23', null, null);
INSERT INTO `inf_batch` VALUES ('289', 'infDebtService', null, '0', '2018-11-24 18:53:23', null, null);
INSERT INTO `inf_batch` VALUES ('290', 'infDebtStatusService', null, '0', '2018-11-24 18:53:23', null, null);
INSERT INTO `inf_batch` VALUES ('291', 'infRepaymentPlanService', null, '0', '2018-11-24 18:53:23', null, null);
INSERT INTO `inf_batch` VALUES ('292', 'infTransactionService', null, '0', '2018-11-24 18:53:23', null, null);
INSERT INTO `inf_batch` VALUES ('293', 'infTransferProjectService', null, '0', '2018-11-24 18:53:23', null, null);
INSERT INTO `inf_batch` VALUES ('294', 'infTransferStatusService', null, '0', '2018-11-24 18:53:23', null, null);
INSERT INTO `inf_batch` VALUES ('295', 'infTakeInfoService', null, '0', '2018-11-24 18:53:23', null, null);
INSERT INTO `inf_batch` VALUES ('296', 'infTransferInfoService', null, '0', '2018-11-24 19:00:29', null, null);
INSERT INTO `inf_batch` VALUES ('297', 'infDebtService', 'CERT20171018002_201811241_297', '3032', '2018-11-24 19:00:29', '2018-11-24 19:00:37', '[调试]错误,InfScatterInvest借款年利率数据(loanRate)错误, 原因有以下几种可能: 1.  该字段为空   2. 字段名错误    3. 小数点未保留到6位  4.长度超过32, 示例数据:0.092342 <-> 推送数据: 0.12123');
INSERT INTO `inf_batch` VALUES ('298', 'infDebtStatusService', null, '0', '2018-11-24 19:00:38', null, null);
INSERT INTO `inf_batch` VALUES ('299', 'infRepaymentPlanService', null, '0', '2018-11-24 19:00:38', null, null);
INSERT INTO `inf_batch` VALUES ('300', 'infTransactionService', null, '0', '2018-11-24 19:00:38', null, null);
INSERT INTO `inf_batch` VALUES ('301', 'infTransferProjectService', null, '0', '2018-11-24 19:00:38', null, null);
INSERT INTO `inf_batch` VALUES ('302', 'infTransferStatusService', null, '0', '2018-11-24 19:00:38', null, null);
INSERT INTO `inf_batch` VALUES ('303', 'infTakeInfoService', null, '0', '2018-11-24 19:00:38', null, null);
INSERT INTO `inf_batch` VALUES ('304', 'infTransferInfoService', null, '0', '2018-11-24 19:07:28', null, null);
INSERT INTO `inf_batch` VALUES ('305', 'infDebtService', 'CERT20171018002_201811241_305', '1605', '2018-11-24 19:07:28', '2018-11-24 19:10:29', '[调试]错误, 接口, 传入了非法字段，请仔细检查fieldsError');
INSERT INTO `inf_batch` VALUES ('306', 'infTransferInfoService', null, '0', '2018-11-26 18:59:53', null, null);
INSERT INTO `inf_batch` VALUES ('307', 'infDebtService', 'CERT20171018002_201811261_307', '1605', '2018-11-26 19:03:50', '2018-11-26 19:04:50', '[调试]错误, 接口, 传入了非法字段，请仔细检查fieldsError');
INSERT INTO `inf_batch` VALUES ('308', 'infDebtStatusService', null, '0', '2018-11-26 19:04:51', null, null);
INSERT INTO `inf_batch` VALUES ('309', 'infRepaymentPlanService', null, '0', '2018-11-26 19:04:51', null, null);
INSERT INTO `inf_batch` VALUES ('310', 'infTransactionService', null, '0', '2018-11-26 19:04:53', null, null);
INSERT INTO `inf_batch` VALUES ('311', 'infTransferProjectService', null, '0', '2018-11-26 19:04:53', null, null);
INSERT INTO `inf_batch` VALUES ('312', 'infTransferStatusService', null, '0', '2018-11-26 19:04:53', null, null);
INSERT INTO `inf_batch` VALUES ('313', 'infTakeInfoService', null, '0', '2018-11-26 19:04:53', null, null);
INSERT INTO `inf_batch` VALUES ('314', 'infTransferInfoService', null, '0', '2018-11-26 19:07:10', null, null);
INSERT INTO `inf_batch` VALUES ('315', 'infDebtService', null, '0', '2018-11-26 19:07:10', null, null);
INSERT INTO `inf_batch` VALUES ('316', 'infDebtStatusService', null, '0', '2018-11-26 19:08:17', null, null);
INSERT INTO `inf_batch` VALUES ('317', 'infRepaymentPlanService', null, '0', '2018-11-26 19:08:17', null, null);
INSERT INTO `inf_batch` VALUES ('318', 'infTransactionService', null, '0', '2018-11-26 19:09:02', null, null);
INSERT INTO `inf_batch` VALUES ('319', 'infTransferInfoService', null, '0', '2018-11-26 19:14:45', null, null);
INSERT INTO `inf_batch` VALUES ('320', 'infDebtService', null, '0', '2018-11-26 19:14:45', null, null);
INSERT INTO `inf_batch` VALUES ('321', 'infDebtStatusService', 'CERT20171018002_201811261_321', '6006', '2018-11-26 19:14:51', '2018-11-26 19:15:53', '[调试]错误,InfStatus状态更新时间(productDate)错误, 原因有以下几种可能: 1.  该字段为空   2. 字段名错误     3. 格式错误：yyyy-MM-dd hh:mm:ss  4. 长度超过, 示例数据:2016-05-12 18:33:59 <-> 推送数据: null');
INSERT INTO `inf_batch` VALUES ('322', 'infRepaymentPlanService', null, '0', '2018-11-26 19:15:54', null, null);
INSERT INTO `inf_batch` VALUES ('323', 'infTransferInfoService', null, '0', '2018-11-26 19:20:37', null, null);
INSERT INTO `inf_batch` VALUES ('324', 'infDebtService', null, '0', '2018-11-26 19:20:37', null, null);
INSERT INTO `inf_batch` VALUES ('325', 'infDebtStatusService', null, '0', '2018-11-26 19:20:37', null, null);
INSERT INTO `inf_batch` VALUES ('326', 'infRepaymentPlanService', null, '0', '2018-11-26 19:20:37', null, null);
INSERT INTO `inf_batch` VALUES ('327', 'infTransferInfoService', null, '0', '2018-11-26 20:08:59', null, null);
INSERT INTO `inf_batch` VALUES ('328', 'infDebtService', null, '0', '2018-11-26 20:08:59', null, null);
INSERT INTO `inf_batch` VALUES ('329', 'infTransferInfoService', null, '0', '2018-11-26 20:13:48', null, null);
INSERT INTO `inf_batch` VALUES ('330', 'infDebtService', null, '0', '2018-11-26 20:13:48', null, null);
INSERT INTO `inf_batch` VALUES ('331', 'infDebtStatusService', null, '0', '2018-11-26 20:13:48', null, null);
INSERT INTO `inf_batch` VALUES ('332', 'infRepaymentPlanService', 'CERT20171018002_201811261_332', '1606', '2018-11-26 20:13:48', '2018-11-26 20:13:58', '[调试]错误, 接口, inftype与url不对应');
INSERT INTO `inf_batch` VALUES ('333', 'infTransactionService', null, '0', '2018-11-26 20:13:59', null, null);
INSERT INTO `inf_batch` VALUES ('334', 'infTransferProjectService', null, '0', '2018-11-26 20:13:59', null, null);
INSERT INTO `inf_batch` VALUES ('335', 'infTransferStatusService', null, '0', '2018-11-26 20:13:59', null, null);
INSERT INTO `inf_batch` VALUES ('336', 'infTakeInfoService', null, '0', '2018-11-26 20:13:59', null, null);
INSERT INTO `inf_batch` VALUES ('337', 'infTransferInfoService', null, '0', '2018-11-26 20:31:18', null, null);
INSERT INTO `inf_batch` VALUES ('338', 'infDebtService', null, '0', '2018-11-26 20:31:18', null, null);
INSERT INTO `inf_batch` VALUES ('339', 'infDebtStatusService', null, '0', '2018-11-26 20:31:18', null, null);
INSERT INTO `inf_batch` VALUES ('340', 'infRepaymentPlanService', null, '0', '2018-11-26 20:31:18', null, null);
INSERT INTO `inf_batch` VALUES ('341', 'infTransactionService', null, '0', '2018-11-26 20:31:23', null, null);
INSERT INTO `inf_batch` VALUES ('342', 'infTransferProjectService', null, '0', '2018-11-26 20:31:24', null, null);
INSERT INTO `inf_batch` VALUES ('343', 'infTransferStatusService', null, '0', '2018-11-26 20:31:24', null, null);
INSERT INTO `inf_batch` VALUES ('344', 'infTakeInfoService', null, '0', '2018-11-26 20:31:24', null, null);
INSERT INTO `inf_batch` VALUES ('345', 'infTransferInfoService', null, '0', '2018-11-26 20:32:16', null, null);
INSERT INTO `inf_batch` VALUES ('346', 'infDebtService', null, '0', '2018-11-26 20:32:16', null, null);
INSERT INTO `inf_batch` VALUES ('347', 'infDebtStatusService', null, '0', '2018-11-26 20:32:16', null, null);
INSERT INTO `inf_batch` VALUES ('348', 'infRepaymentPlanService', 'CERT20171018002_201811261_348', '10110', '2018-11-26 20:32:16', '2018-11-26 20:32:24', '[调试]错误,RepaymentPlan当期应还款时间点(repayTime)错误, 原因有以下几种可能: , 示例数据:2018-10-11 11:20:20 <-> 推送数据: 2018-11-25');
INSERT INTO `inf_batch` VALUES ('349', 'infTransactionService', null, '0', '2018-11-26 20:32:25', null, null);
INSERT INTO `inf_batch` VALUES ('350', 'infTransferProjectService', null, '0', '2018-11-26 20:32:25', null, null);
INSERT INTO `inf_batch` VALUES ('351', 'infTransferStatusService', null, '0', '2018-11-26 20:32:25', null, null);
INSERT INTO `inf_batch` VALUES ('352', 'infTakeInfoService', null, '0', '2018-11-26 20:32:26', null, null);
INSERT INTO `inf_batch` VALUES ('353', 'infTransferInfoService', null, '0', '2018-11-26 20:36:51', null, null);
INSERT INTO `inf_batch` VALUES ('354', 'infDebtService', null, '0', '2018-11-26 20:36:51', null, null);
INSERT INTO `inf_batch` VALUES ('355', 'infDebtStatusService', null, '0', '2018-11-26 20:36:51', null, null);
INSERT INTO `inf_batch` VALUES ('356', 'infRepaymentPlanService', null, '0', '2018-11-26 20:36:51', null, null);
INSERT INTO `inf_batch` VALUES ('357', 'infTransactionService', null, '0', '2018-11-26 20:36:55', null, null);
INSERT INTO `inf_batch` VALUES ('358', 'infTransferProjectService', null, '0', '2018-11-26 20:36:55', null, null);
INSERT INTO `inf_batch` VALUES ('359', 'infTransferStatusService', null, '0', '2018-11-26 20:36:55', null, null);
INSERT INTO `inf_batch` VALUES ('360', 'infTakeInfoService', null, '0', '2018-11-26 20:36:55', null, null);
INSERT INTO `inf_batch` VALUES ('361', 'infTransferInfoService', null, '0', '2018-11-26 20:37:40', null, null);
INSERT INTO `inf_batch` VALUES ('362', 'infDebtService', null, '0', '2018-11-26 20:37:40', null, null);
INSERT INTO `inf_batch` VALUES ('363', 'infDebtStatusService', null, '0', '2018-11-26 20:37:40', null, null);
INSERT INTO `inf_batch` VALUES ('364', 'infRepaymentPlanService', null, '0', '2018-11-26 20:37:40', null, null);
INSERT INTO `inf_batch` VALUES ('365', 'infTransactionService', null, '0', '2018-11-26 20:37:53', null, null);
INSERT INTO `inf_batch` VALUES ('366', 'infTransferProjectService', null, '0', '2018-11-26 20:37:53', null, null);
INSERT INTO `inf_batch` VALUES ('367', 'infTransferStatusService', null, '0', '2018-11-26 20:37:53', null, null);
INSERT INTO `inf_batch` VALUES ('368', 'infTakeInfoService', null, '0', '2018-11-26 20:37:54', null, null);
INSERT INTO `inf_batch` VALUES ('369', 'infTransferInfoService', null, '0', '2018-11-26 20:50:39', null, null);
INSERT INTO `inf_batch` VALUES ('370', 'infDebtService', null, '0', '2018-11-26 20:50:39', null, null);
INSERT INTO `inf_batch` VALUES ('371', 'infDebtStatusService', null, '0', '2018-11-26 20:50:39', null, null);
INSERT INTO `inf_batch` VALUES ('372', 'infRepaymentPlanService', null, '0', '2018-11-26 20:50:39', null, null);
INSERT INTO `inf_batch` VALUES ('373', 'infTransactionService', 'CERT20171018002_201811261_373', '1606', '2018-11-26 20:52:09', '2018-11-26 20:52:14', '[调试]错误, 接口, inftype与url不对应');
INSERT INTO `inf_batch` VALUES ('374', 'infTransferProjectService', null, '0', '2018-11-26 20:52:15', null, null);
INSERT INTO `inf_batch` VALUES ('375', 'infTransferStatusService', null, '0', '2018-11-26 20:52:15', null, null);
INSERT INTO `inf_batch` VALUES ('376', 'infTakeInfoService', null, '0', '2018-11-26 20:52:15', null, null);
INSERT INTO `inf_batch` VALUES ('377', 'infTransferInfoService', null, '0', '2018-11-26 20:56:14', null, null);
INSERT INTO `inf_batch` VALUES ('378', 'infDebtService', null, '0', '2018-11-26 20:56:23', null, null);
INSERT INTO `inf_batch` VALUES ('379', 'infDebtStatusService', null, '0', '2018-11-26 20:56:23', null, null);
INSERT INTO `inf_batch` VALUES ('380', 'infRepaymentPlanService', null, '0', '2018-11-26 20:56:23', null, null);
INSERT INTO `inf_batch` VALUES ('381', 'infTransactionService', null, '0', '2018-11-26 20:56:29', null, null);
INSERT INTO `inf_batch` VALUES ('382', 'infTransferProjectService', null, '0', '2018-11-26 20:56:29', null, null);
INSERT INTO `inf_batch` VALUES ('383', 'infTransferStatusService', null, '0', '2018-11-26 20:56:29', null, null);
INSERT INTO `inf_batch` VALUES ('384', 'infTakeInfoService', null, '0', '2018-11-26 20:56:29', null, null);
INSERT INTO `inf_batch` VALUES ('385', 'infTransferInfoService', null, '0', '2018-11-26 21:06:16', null, null);
INSERT INTO `inf_batch` VALUES ('386', 'infTransferInfoService', null, '0', '2018-11-26 21:06:16', null, null);
INSERT INTO `inf_batch` VALUES ('387', 'infDebtService', 'CERT20171018002_201811261_387', '3032', '2018-11-26 21:06:18', '2018-11-26 21:06:23', '[调试]错误,InfScatterInvest借款年利率数据(loanRate)错误, 原因有以下几种可能: 1.  该字段为空   2. 字段名错误    3. 小数点未保留到6位  4.长度超过32, 示例数据:0.092342 <-> 推送数据: null');
INSERT INTO `inf_batch` VALUES ('388', 'infDebtService', 'CERT20171018002_201811261_388', '3032', '2018-11-26 21:06:18', '2018-11-26 21:06:23', '[调试]错误,InfScatterInvest借款年利率数据(loanRate)错误, 原因有以下几种可能: 1.  该字段为空   2. 字段名错误    3. 小数点未保留到6位  4.长度超过32, 示例数据:0.092342 <-> 推送数据: null');
INSERT INTO `inf_batch` VALUES ('389', 'infDebtStatusService', 'CERT20171018002_201811261_389', '6006', '2018-11-26 21:06:24', '2018-11-26 21:06:25', '[调试]错误,InfStatus状态更新时间(productDate)错误, 原因有以下几种可能: 1.  该字段为空   2. 字段名错误     3. 格式错误：yyyy-MM-dd hh:mm:ss  4. 长度超过, 示例数据:2016-05-12 18:33:59 <-> 推送数据: null');
INSERT INTO `inf_batch` VALUES ('390', 'infDebtStatusService', 'CERT20171018002_201811261_390', '6006', '2018-11-26 21:06:24', '2018-11-26 21:06:25', '[调试]错误,InfStatus状态更新时间(productDate)错误, 原因有以下几种可能: 1.  该字段为空   2. 字段名错误     3. 格式错误：yyyy-MM-dd hh:mm:ss  4. 长度超过, 示例数据:2016-05-12 18:33:59 <-> 推送数据: null');
INSERT INTO `inf_batch` VALUES ('391', 'infRepaymentPlanService', null, '0', '2018-11-26 21:06:26', null, null);
INSERT INTO `inf_batch` VALUES ('392', 'infRepaymentPlanService', null, '0', '2018-11-26 21:06:26', null, null);
INSERT INTO `inf_batch` VALUES ('393', 'infTransactionService', null, '0', '2018-11-26 21:06:58', null, null);
INSERT INTO `inf_batch` VALUES ('394', 'infTransactionService', null, '0', '2018-11-26 21:06:58', null, null);
INSERT INTO `inf_batch` VALUES ('395', 'infTransferProjectService', null, '0', '2018-11-26 21:06:58', null, null);
INSERT INTO `inf_batch` VALUES ('396', 'infTransferProjectService', null, '0', '2018-11-26 21:06:58', null, null);
INSERT INTO `inf_batch` VALUES ('397', 'infTransferStatusService', null, '0', '2018-11-26 21:06:58', null, null);
INSERT INTO `inf_batch` VALUES ('398', 'infTransferStatusService', null, '0', '2018-11-26 21:06:58', null, null);
INSERT INTO `inf_batch` VALUES ('399', 'infTakeInfoService', null, '0', '2018-11-26 21:06:59', null, null);
INSERT INTO `inf_batch` VALUES ('400', 'infTakeInfoService', null, '0', '2018-11-26 21:06:59', null, null);
INSERT INTO `inf_batch` VALUES ('401', 'infTransferInfoService', null, '0', '2018-11-26 21:18:57', null, null);
INSERT INTO `inf_batch` VALUES ('402', 'infDebtService', 'CERT20171018002_201811261_402', '3032', '2018-11-26 21:19:01', '2018-11-26 21:22:31', '[调试]错误,InfScatterInvest借款年利率数据(loanRate)错误, 原因有以下几种可能: 1.  该字段为空   2. 字段名错误    3. 小数点未保留到6位  4.长度超过32, 示例数据:0.092342 <-> 推送数据: null');
INSERT INTO `inf_batch` VALUES ('403', 'infTransferInfoService', null, '0', '2018-11-26 21:19:01', null, null);
INSERT INTO `inf_batch` VALUES ('404', 'infDebtService', 'CERT20171018002_201811261_404', '3032', '2018-11-26 21:19:11', '2018-11-26 21:22:56', '[调试]错误,InfScatterInvest借款年利率数据(loanRate)错误, 原因有以下几种可能: 1.  该字段为空   2. 字段名错误    3. 小数点未保留到6位  4.长度超过32, 示例数据:0.092342 <-> 推送数据: null');
INSERT INTO `inf_batch` VALUES ('405', 'infDebtStatusService', null, '0', '2018-11-26 21:22:57', null, null);
INSERT INTO `inf_batch` VALUES ('406', 'infRepaymentPlanService', null, '0', '2018-11-26 21:22:57', null, null);
INSERT INTO `inf_batch` VALUES ('407', 'infDebtStatusService', null, '0', '2018-11-26 21:22:57', null, null);
INSERT INTO `inf_batch` VALUES ('408', 'infRepaymentPlanService', null, '0', '2018-11-26 21:22:57', null, null);
INSERT INTO `inf_batch` VALUES ('409', 'infTransactionService', null, '0', '2018-11-26 21:23:19', null, null);
INSERT INTO `inf_batch` VALUES ('410', 'infTransactionService', null, '0', '2018-11-26 21:23:19', null, null);
INSERT INTO `inf_batch` VALUES ('411', 'infTransferProjectService', null, '0', '2018-11-26 21:23:19', null, null);
INSERT INTO `inf_batch` VALUES ('412', 'infTransferProjectService', null, '0', '2018-11-26 21:23:19', null, null);
INSERT INTO `inf_batch` VALUES ('413', 'infTransferStatusService', null, '0', '2018-11-26 21:23:19', null, null);
INSERT INTO `inf_batch` VALUES ('414', 'infTransferStatusService', null, '0', '2018-11-26 21:23:19', null, null);
INSERT INTO `inf_batch` VALUES ('415', 'infTakeInfoService', null, '0', '2018-11-26 21:23:19', null, null);
INSERT INTO `inf_batch` VALUES ('416', 'infTakeInfoService', null, '0', '2018-11-26 21:23:19', null, null);
INSERT INTO `inf_batch` VALUES ('417', 'infTransferInfoService', null, '0', '2018-11-26 21:23:49', null, null);
INSERT INTO `inf_batch` VALUES ('418', 'infDebtService', null, '0', '2018-11-26 21:24:04', null, null);
INSERT INTO `inf_batch` VALUES ('419', 'infDebtStatusService', null, '0', '2018-11-26 21:24:04', null, null);
INSERT INTO `inf_batch` VALUES ('420', 'infRepaymentPlanService', null, '0', '2018-11-26 21:24:04', null, null);
INSERT INTO `inf_batch` VALUES ('421', 'infTransactionService', null, '0', '2018-11-26 21:24:16', null, null);
INSERT INTO `inf_batch` VALUES ('422', 'infTransferProjectService', null, '0', '2018-11-26 21:24:16', null, null);
INSERT INTO `inf_batch` VALUES ('423', 'infTransferStatusService', null, '0', '2018-11-26 21:24:17', null, null);
INSERT INTO `inf_batch` VALUES ('424', 'infTakeInfoService', null, '0', '2018-11-26 21:24:17', null, null);
INSERT INTO `inf_batch` VALUES ('425', 'infTransferInfoService', null, '0', '2018-11-27 15:41:01', null, null);
INSERT INTO `inf_batch` VALUES ('426', 'infDebtService', 'CERT20171018002_201811271_426', '3032', '2018-11-27 15:41:16', '2018-11-27 15:42:07', '[调试]错误,InfScatterInvest借款年利率数据(loanRate)错误, 原因有以下几种可能: 1.  该字段为空   2. 字段名错误    3. 小数点未保留到6位  4.长度超过32, 示例数据:0.092342 <-> 推送数据: null');
INSERT INTO `inf_batch` VALUES ('427', 'infDebtStatusService', null, '0', '2018-11-27 15:42:08', null, null);
INSERT INTO `inf_batch` VALUES ('428', 'infRepaymentPlanService', 'CERT20171018002_201811271_428', '0000', '2018-11-27 15:42:08', '2018-11-27 15:43:08', ' 接口, 数据已成功上报，正在等待处理');
INSERT INTO `inf_batch` VALUES ('429', 'infTransactionService', null, '0', '2018-11-27 15:43:09', null, null);
INSERT INTO `inf_batch` VALUES ('430', 'infTransferProjectService', null, '0', '2018-11-27 15:43:09', null, null);
INSERT INTO `inf_batch` VALUES ('431', 'infTransferStatusService', null, '0', '2018-11-27 15:43:10', null, null);
INSERT INTO `inf_batch` VALUES ('432', 'infTakeInfoService', null, '0', '2018-11-27 15:43:10', null, null);
INSERT INTO `inf_batch` VALUES ('433', 'infTransferInfoService', null, '0', '2018-11-27 15:44:54', null, null);
INSERT INTO `inf_batch` VALUES ('434', 'infDebtService', 'CERT20171018002_201811271_434', '3031', '2018-11-27 15:44:54', '2018-11-27 15:46:07', '[调试]错误,InfScatterInvest用户标示哈希(userIdcardHash)错误, 原因有以下几种可能: 1.  该字段为空   2. 字段名错误    3.长度超过64, 示例数据:708aad7d957d8146e312c3c0b5dde272e4e52c02b9af3c5d2e35534f5c69ca90 <-> 推送数据: null');
INSERT INTO `inf_batch` VALUES ('435', 'infDebtStatusService', null, '0', '2018-11-27 15:46:08', null, null);
INSERT INTO `inf_batch` VALUES ('436', 'infRepaymentPlanService', null, '0', '2018-11-27 15:46:08', null, null);
INSERT INTO `inf_batch` VALUES ('437', 'infTransactionService', null, '0', '2018-11-27 15:46:08', null, null);
INSERT INTO `inf_batch` VALUES ('438', 'infTransferProjectService', null, '0', '2018-11-27 15:46:08', null, null);
INSERT INTO `inf_batch` VALUES ('439', 'infTransferStatusService', null, '0', '2018-11-27 15:46:08', null, null);
INSERT INTO `inf_batch` VALUES ('440', 'infTakeInfoService', null, '0', '2018-11-27 15:46:08', null, null);
INSERT INTO `inf_batch` VALUES ('441', 'infTransferInfoService', null, '0', '2018-11-27 15:47:02', null, null);
INSERT INTO `inf_batch` VALUES ('442', 'infDebtService', 'CERT20171018002_201811271_442', '1605', '2018-11-27 15:47:02', '2018-11-27 15:47:17', '[调试]错误, 接口, 传入了非法字段，请仔细检查fieldsError');
INSERT INTO `inf_batch` VALUES ('443', 'infDebtStatusService', null, '0', '2018-11-27 15:47:18', null, null);
INSERT INTO `inf_batch` VALUES ('444', 'infRepaymentPlanService', null, '0', '2018-11-27 15:47:18', null, null);
INSERT INTO `inf_batch` VALUES ('445', 'infTransactionService', null, '0', '2018-11-27 15:47:18', null, null);
INSERT INTO `inf_batch` VALUES ('446', 'infTransferProjectService', null, '0', '2018-11-27 15:47:18', null, null);
INSERT INTO `inf_batch` VALUES ('447', 'infTransferStatusService', null, '0', '2018-11-27 15:47:18', null, null);
INSERT INTO `inf_batch` VALUES ('448', 'infTakeInfoService', null, '0', '2018-11-27 15:47:18', null, null);
INSERT INTO `inf_batch` VALUES ('449', 'infTransferInfoService', null, '0', '2018-11-27 15:49:06', null, null);
INSERT INTO `inf_batch` VALUES ('450', 'infDebtService', 'CERT20171018002_201811271_450', '1605', '2018-11-27 15:49:06', '2018-11-27 15:49:19', '[调试]错误, 接口, 传入了非法字段，请仔细检查fieldsError');
INSERT INTO `inf_batch` VALUES ('451', 'infDebtStatusService', null, '0', '2018-11-27 15:49:20', null, null);
INSERT INTO `inf_batch` VALUES ('452', 'infRepaymentPlanService', null, '0', '2018-11-27 15:49:20', null, null);
INSERT INTO `inf_batch` VALUES ('453', 'infTransactionService', null, '0', '2018-11-27 15:49:20', null, null);
INSERT INTO `inf_batch` VALUES ('454', 'infTransferProjectService', null, '0', '2018-11-27 15:49:20', null, null);
INSERT INTO `inf_batch` VALUES ('455', 'infTransferStatusService', null, '0', '2018-11-27 15:49:20', null, null);
INSERT INTO `inf_batch` VALUES ('456', 'infTakeInfoService', null, '0', '2018-11-27 15:49:20', null, null);
INSERT INTO `inf_batch` VALUES ('457', 'infTransferInfoService', null, '0', '2018-11-27 15:57:21', null, null);
INSERT INTO `inf_batch` VALUES ('458', 'infDebtService', 'CERT20171018002_201811271_458', '1605', '2018-11-27 15:57:21', '2018-11-27 15:57:30', '[调试]错误, 接口, 传入了非法字段，请仔细检查fieldsError');
INSERT INTO `inf_batch` VALUES ('459', 'infDebtStatusService', null, '0', '2018-11-27 15:57:31', null, null);
INSERT INTO `inf_batch` VALUES ('460', 'infRepaymentPlanService', null, '0', '2018-11-27 15:57:31', null, null);
INSERT INTO `inf_batch` VALUES ('461', 'infTransactionService', null, '0', '2018-11-27 15:57:31', null, null);
INSERT INTO `inf_batch` VALUES ('462', 'infTransferProjectService', null, '0', '2018-11-27 15:57:31', null, null);
INSERT INTO `inf_batch` VALUES ('463', 'infTransferStatusService', null, '0', '2018-11-27 15:57:31', null, null);
INSERT INTO `inf_batch` VALUES ('464', 'infTakeInfoService', null, '0', '2018-11-27 15:57:31', null, null);
INSERT INTO `inf_batch` VALUES ('465', 'infDebtStatusService', 'CERT20171018002_201811281_465', '1605', '2018-11-28 20:09:55', '2018-11-28 20:09:56', '[调试]错误, 接口, 传入了非法字段，请仔细检查fieldsError');
INSERT INTO `inf_batch` VALUES ('466', 'infRepaymentPlanService', 'CERT20171018002_201811281_466', '0000', '2018-11-28 20:09:56', '2018-11-28 20:09:57', ' 接口, 数据已成功上报，正在等待处理');
INSERT INTO `inf_batch` VALUES ('467', 'infDebtStatusService', 'CERT20171018002_201811281_467', '1605', '2018-11-28 20:11:05', '2018-11-28 20:11:05', '[调试]错误, 接口, 传入了非法字段，请仔细检查fieldsError');
INSERT INTO `inf_batch` VALUES ('468', 'infRepaymentPlanService', 'CERT20171018002_201811281_468', '0000', '2018-11-28 20:11:05', '2018-11-28 20:11:06', ' 接口, 数据已成功上报，正在等待处理');
INSERT INTO `inf_batch` VALUES ('469', 'infDebtStatusService', 'CERT20171018002_201811281_469', '1605', '2018-11-28 20:13:23', '2018-11-28 20:13:31', '[调试]错误, 接口, 传入了非法字段，请仔细检查fieldsError');
INSERT INTO `inf_batch` VALUES ('470', 'infRepaymentPlanService', 'CERT20171018002_201811281_470', '0000', '2018-11-28 20:13:31', '2018-11-28 20:13:34', ' 接口, 数据已成功上报，正在等待处理');
INSERT INTO `inf_batch` VALUES ('471', 'infDebtStatusService', null, '0', '2018-11-28 20:59:33', null, null);
INSERT INTO `inf_batch` VALUES ('472', 'infRepaymentPlanService', 'CERT20171018002_201811281_472', '0000', '2018-11-28 20:59:33', '2018-11-28 20:59:46', ' 接口, 数据已成功上报，正在等待处理');
INSERT INTO `inf_batch` VALUES ('473', 'infDebtStatusService', 'CERT20171018002_201811281_473', '1605', '2018-11-28 21:03:20', '2018-11-28 21:03:41', '[调试]错误, 接口, 传入了非法字段，请仔细检查fieldsError');
INSERT INTO `inf_batch` VALUES ('474', 'infDebtStatusService', 'CERT20171018002_201811281_474', '1605', '2018-11-28 21:11:11', '2018-11-28 21:11:30', '[调试]错误, 接口, 传入了非法字段，请仔细检查fieldsError');
INSERT INTO `inf_batch` VALUES ('475', 'infDebtStatusService', 'CERT20171018002_201811281_475', '1605', '2018-11-28 21:11:16', '2018-11-28 21:11:40', '[调试]错误, 接口, 传入了非法字段，请仔细检查fieldsError');
INSERT INTO `inf_batch` VALUES ('476', 'infDebtStatusService', 'CERT20171018002_201811281_476', '1605', '2018-11-28 21:11:16', '2018-11-28 21:11:40', '[调试]错误, 接口, 传入了非法字段，请仔细检查fieldsError');
INSERT INTO `inf_batch` VALUES ('477', 'infDebtStatusService', 'CERT20171018002_201811291_477', '1605', '2018-11-29 10:51:18', '2018-11-29 10:51:46', '[调试]错误, 接口, 传入了非法字段，请仔细检查fieldsError');
INSERT INTO `inf_batch` VALUES ('478', 'infDebtStatusService', 'CERT20171018002_201811291_478', '1605', '2018-11-29 11:11:21', '2018-11-29 11:12:48', '[调试]错误, 接口, 传入了非法字段，请仔细检查fieldsError');
INSERT INTO `inf_batch` VALUES ('479', 'infDebtStatusService', 'CERT20171018002_201811291_479', '0000', '2018-11-29 11:47:06', '2018-11-29 11:47:11', ' 接口, 数据已成功上报，正在等待处理');
INSERT INTO `inf_batch` VALUES ('480', 'infDebtService', null, '0', '2018-11-30 20:05:20', null, null);
INSERT INTO `inf_batch` VALUES ('481', 'infDebtService', 'CERT20171018002_201811301_481', '1605', '2018-11-30 20:06:06', '2018-11-30 20:06:06', '[调试]错误, 接口, 传入了非法字段，请仔细检查fieldsError');
INSERT INTO `inf_batch` VALUES ('482', 'infDebtService', 'CERT20171018002_201811301_482', '3029', '2018-11-30 20:12:36', '2018-11-30 20:12:36', '[调试]错误,InfScatterInvest项目来源(projectSource)错误, 原因有以下几种可能: 1.  该字段为空   2. 字段名错误    3.长度超过128, 示例数据:线下 <-> 推送数据: 测试');
INSERT INTO `inf_batch` VALUES ('483', 'infDebtService', 'CERT20171018002_201811301_483', '3028', '2018-11-30 20:16:04', '2018-11-30 20:16:05', '[调试]错误,InfScatterInvest担保方式保证(securityType)错误, 原因有以下几种可能: 1.  该字段为空   2. 字段名错误    3.长度超过50, 示例数据:抵押 <-> 推送数据: null');

-- ----------------------------
-- Table structure for inf_debt
-- ----------------------------
DROP TABLE IF EXISTS `inf_debt`;
CREATE TABLE `inf_debt` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date_created` datetime DEFAULT NULL COMMENT '数据创建时间',
  `dept_id` varchar(20) DEFAULT NULL COMMENT '数据来源id',
  `version` varchar(20) DEFAULT NULL COMMENT '接口版本号',
  `source_code` varchar(64) DEFAULT NULL COMMENT '平台编号 ',
  `product_start_time` varchar(40) DEFAULT NULL COMMENT '开标时间',
  `product_reg_type` varchar(40) DEFAULT NULL COMMENT '散标类别',
  `product_name` varchar(256) DEFAULT NULL COMMENT '散标名称',
  `bank_no` varchar(128) DEFAULT NULL COMMENT '存管银行标的编号',
  `source_product_code` varchar(64) DEFAULT NULL COMMENT '原散标编号',
  `user_idcard` varchar(64) DEFAULT NULL COMMENT '借款用户标示',
  `loan_use` varchar(10) DEFAULT NULL COMMENT '借款用途',
  `loan_describe` varchar(2000) DEFAULT NULL COMMENT '借款说明',
  `loan_rate` varchar(32) DEFAULT NULL COMMENT '借款年利率',
  `amount` varchar(32) DEFAULT NULL COMMENT '借款金额',
  `rate` varchar(32) DEFAULT NULL COMMENT '投资年化收益率',
  `term` varchar(5) DEFAULT NULL COMMENT '借款期限',
  `pay_type` varchar(5) DEFAULT NULL COMMENT '还款类型',
  `service_cost` varchar(32) DEFAULT NULL COMMENT '手续费（服务费）',
  `risk_margin` varchar(32) DEFAULT NULL COMMENT '风险保证金',
  `loan_type` varchar(64) DEFAULT NULL COMMENT '借款类型',
  `loan_credit_rating` varchar(10) DEFAULT NULL COMMENT '借款主体信用评级',
  `security_info` varchar(256) DEFAULT NULL COMMENT '担保信息',
  `collateral_desc` varchar(2000) DEFAULT NULL COMMENT '抵押/质押物描述',
  `collateral_info` varchar(64) DEFAULT NULL COMMENT '抵押(质押物)平均处置周期',
  `overdue_limmit` varchar(10) DEFAULT NULL COMMENT '逾期期限',
  `bad_debt_limmit` varchar(10) DEFAULT NULL COMMENT '坏账期限',
  `amount_limmts` varchar(20) DEFAULT NULL COMMENT '最小投资金额',
  `amount_limmtl` varchar(20) DEFAULT NULL COMMENT '最大投资金额',
  `allow_transfer` varchar(10) DEFAULT NULL COMMENT '是否允许债权转让',
  `close_limmit` varchar(10) DEFAULT NULL COMMENT '封闭期',
  `security_type` varchar(50) DEFAULT NULL COMMENT '担保方式',
  `security_company_name` varchar(255) DEFAULT NULL COMMENT '第三方担保机构/保险公司的全称',
  `security_company_idcard` varchar(255) DEFAULT NULL COMMENT '担保机构或保险公司统一社会信用代码',
  `is_financing_assure` int(2) DEFAULT NULL COMMENT '是否具有融资担保业务经营许可证',
  `security_amount` varchar(32) DEFAULT NULL COMMENT '担保金额',
  `project_source` varchar(128) DEFAULT NULL COMMENT '项目来源',
  `source_product_url` varchar(256) DEFAULT NULL COMMENT '原产品链接',
  `batch_number` varchar(128) DEFAULT NULL COMMENT '批次编号',
  `batch_status` varchar(20) DEFAULT '0' COMMENT '批次推送结果',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8 COMMENT='散标(标的)数据表';

-- ----------------------------
-- Records of inf_debt
-- ----------------------------
INSERT INTO `inf_debt` VALUES ('58', '2018-11-23 15:16:51', null, null, null, '2018-11-23 15:16:51', null, null, null, 'AKPHYB3642018112300001', '210102198301301141', '测试', '-1', '0.1', '', '', '24', null, '25479.19', '0', '1', 'A', null, null, null, '1', '180', '0.01', '999999.99', '0', '0', null, null, null, null, null, '3', '-1', 'CERT20171018002_201811301_483', '3028');

-- ----------------------------
-- Table structure for inf_debt_status
-- ----------------------------
DROP TABLE IF EXISTS `inf_debt_status`;
CREATE TABLE `inf_debt_status` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date_created` datetime DEFAULT NULL COMMENT '数据创建时间',
  `dept_id` varchar(20) DEFAULT NULL COMMENT '数据来源id',
  `version` varchar(20) DEFAULT NULL COMMENT '接口版本号',
  `source_code` varchar(64) DEFAULT NULL COMMENT '平台编号 ',
  `source_product_code` varchar(64) DEFAULT NULL COMMENT '原散标编号',
  `source_financing_code` varchar(64) DEFAULT NULL COMMENT '原产品信息编号',
  `product_status` varchar(20) DEFAULT NULL COMMENT '状态编码',
  `product_status_desc` varchar(20) DEFAULT NULL COMMENT '状态描述',
  `product_date` varchar(40) DEFAULT NULL COMMENT '状态更新时间',
  `batch_number` varchar(128) DEFAULT NULL COMMENT '批次编号',
  `batch_status` varchar(20) DEFAULT '0' COMMENT '批次推送结果',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='散标状态表';

-- ----------------------------
-- Records of inf_debt_status
-- ----------------------------
INSERT INTO `inf_debt_status` VALUES ('15', '2018-11-23 14:55:58', null, null, null, 'CD3201704060006', 'CD32017040600011', '3', '还款结束', '2018-11-23 14:55:58', 'CERT20171018002_201811291_479', '0000');

-- ----------------------------
-- Table structure for inf_repayment_plan
-- ----------------------------
DROP TABLE IF EXISTS `inf_repayment_plan`;
CREATE TABLE `inf_repayment_plan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date_created` datetime DEFAULT NULL COMMENT '数据创建时间',
  `dept_id` varchar(20) DEFAULT NULL COMMENT '数据来源id',
  `version` varchar(20) DEFAULT NULL COMMENT '接口版本号',
  `source_code` varchar(64) DEFAULT NULL COMMENT '平台编号 ',
  `source_product_code` varchar(64) DEFAULT NULL COMMENT '原散标编号 ',
  `user_idcard` varchar(64) DEFAULT NULL COMMENT '借款用户标 示',
  `total_issue` int(11) DEFAULT NULL COMMENT '总期数',
  `issue` int(11) DEFAULT NULL COMMENT '当前期数 ',
  `replan_id` varchar(128) DEFAULT NULL COMMENT '还款计划编号 ',
  `cur_fund` varchar(40) DEFAULT NULL COMMENT '当期应还本 金（元） ',
  `cur_interest` varchar(40) DEFAULT NULL COMMENT '当期应还利 息（元）',
  `repay_time` varchar(64) DEFAULT NULL COMMENT '当期应还款 时间点 ',
  `batch_number` varchar(128) DEFAULT NULL COMMENT '批次编号',
  `batch_status` varchar(20) DEFAULT '0' COMMENT '批次推送结果',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='还款计划';

-- ----------------------------
-- Records of inf_repayment_plan
-- ----------------------------
INSERT INTO `inf_repayment_plan` VALUES ('5', '2018-11-26 00:00:00', '', null, null, 'KMPHYB602018032900004', '532323197709101318', '12', '8', 'KMPHYB602018032900004-8', '6066.13', '327.34', '2018-11-25', 'CERT20171018002_201811281_472', '0000');
INSERT INTO `inf_repayment_plan` VALUES ('6', '2018-11-26 00:00:00', '', null, null, 'KMPHYB602018032900004', '532323197709101318', '12', '8', 'KMPHYB602018032900004-8', '6066.13', '327.34', '2018-11-25', 'CERT20171018002_201811281_472', '0000');
INSERT INTO `inf_repayment_plan` VALUES ('7', '2018-11-26 00:00:00', '', null, null, 'KMPHYB602018032900004', '532323197709101318', '12', '8', 'KMPHYB602018032900004-8', '6066.13', '327.34', '2018-11-25', 'CERT20171018002_201811281_472', '0000');
INSERT INTO `inf_repayment_plan` VALUES ('9', '2018-11-26 00:00:00', '', null, null, 'KMPHYB602018032900004', '532323197709101318', '12', '8', 'KMPHYB602018032900004-8', '6066.13', '327.34', '2018-11-25', 'CERT20171018002_201811281_472', '0000');
INSERT INTO `inf_repayment_plan` VALUES ('10', '2018-11-26 00:00:00', '', null, null, 'KMPHYB602018032900004', '532323197709101318', '12', '8', 'KMPHYB602018032900004-8', '6066.13', '327.34', '2018-11-25', 'CERT20171018002_201811281_472', '0000');

-- ----------------------------
-- Table structure for inf_take_info
-- ----------------------------
DROP TABLE IF EXISTS `inf_take_info`;
CREATE TABLE `inf_take_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date_created` datetime DEFAULT NULL COMMENT '数据创建时间',
  `dept_id` varchar(20) DEFAULT NULL COMMENT '数据来源id',
  `version` varchar(20) DEFAULT NULL COMMENT '接口版本号',
  `source_code` varchar(64) DEFAULT NULL COMMENT '平台编号 ',
  `un_fin_claim_id` varchar(128) DEFAULT NULL COMMENT '承接信息编号 ',
  `transfer_id` varchar(128) DEFAULT NULL COMMENT '转让编号',
  `fin_claim_id` varchar(128) DEFAULT NULL COMMENT '债权信息编号',
  `user_idcard` varchar(64) DEFAULT NULL COMMENT '承接人用户标 示',
  `take_amount` varchar(20) DEFAULT NULL COMMENT '承接人投资金 额(元) ',
  `take_interest` varchar(20) DEFAULT NULL COMMENT '承接利息金额 (元) ',
  `float_money` varchar(20) DEFAULT NULL COMMENT '承接浮动金额 (元) ',
  `take_rate` varchar(20) DEFAULT NULL COMMENT '承接预期年化 收益率 ',
  `take_time` varchar(32) DEFAULT NULL COMMENT '承接时间  ',
  `redpackage` varchar(20) DEFAULT NULL COMMENT '投资红包 ',
  `lock_time` varchar(32) DEFAULT NULL COMMENT '封闭截止时间 ',
  `batch_number` varchar(128) DEFAULT NULL COMMENT '批次编号',
  `batch_status` varchar(20) DEFAULT NULL COMMENT '批次推送结果',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='承接信息';

-- ----------------------------
-- Records of inf_take_info
-- ----------------------------

-- ----------------------------
-- Table structure for inf_transaction
-- ----------------------------
DROP TABLE IF EXISTS `inf_transaction`;
CREATE TABLE `inf_transaction` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date_created` datetime DEFAULT NULL COMMENT '数据创建时间',
  `dept_id` varchar(20) DEFAULT NULL COMMENT '数据来源id',
  `version` varchar(20) DEFAULT NULL COMMENT '接口版本号',
  `source_code` varchar(64) DEFAULT NULL COMMENT '平台编号 ',
  `trans_time` varchar(80) DEFAULT NULL COMMENT '交易流水时间',
  `trans_id` varchar(128) DEFAULT NULL COMMENT '平台交易流水号',
  `bank_trans_id` varchar(128) DEFAULT NULL COMMENT '存管银行流水编号',
  `source_product_code` varchar(64) DEFAULT NULL COMMENT '原散标编号',
  `source_product_name` varchar(256) DEFAULT NULL COMMENT '原散标名称',
  `source_financing_code` varchar(64) DEFAULT NULL COMMENT '原产品信息编号',
  `source_financing_name` varchar(256) DEFAULT NULL COMMENT '原产品信息名称',
  `fin_claim_id` varchar(128) DEFAULT NULL COMMENT '债权编号',
  `transfer_id` varchar(128) DEFAULT NULL COMMENT '转让项目编号 ',
  `replan_id` varchar(128) DEFAULT NULL COMMENT '还款计划编号',
  `trans_type` varchar(20) DEFAULT NULL COMMENT '交易类型',
  `trans_type_dec` varchar(256) DEFAULT NULL COMMENT '交易类型描述',
  `trans_money` varchar(32) DEFAULT NULL COMMENT '交易金额',
  `trans_date` varchar(20) DEFAULT NULL COMMENT '交易日期',
  `trans_payment` varchar(20) DEFAULT NULL COMMENT '交易方式',
  `user_idcard` varchar(20) DEFAULT NULL COMMENT '用户标示',
  `trans_bank` varchar(128) DEFAULT NULL COMMENT '交易银行（或第三方支付名称）',
  `batch_number` varchar(128) DEFAULT NULL COMMENT '批次编号',
  `batch_status` varchar(20) DEFAULT '0' COMMENT '批次推送结果',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='交易流水表';

-- ----------------------------
-- Records of inf_transaction
-- ----------------------------
INSERT INTO `inf_transaction` VALUES ('7', '2018-11-23 13:34:05', null, null, null, '2018-11-23 13:34:05', '10180927112454887182', '10180927112454887182', '-1', '-1', '-1', '-1', null, null, null, '7', '测试', '30152.50', '2018-11-23', 'e', '340505195305151089', '中国银行', 'CERT20171018002_201811261_373', '1606');

-- ----------------------------
-- Table structure for inf_transfer_info
-- ----------------------------
DROP TABLE IF EXISTS `inf_transfer_info`;
CREATE TABLE `inf_transfer_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date_created` datetime DEFAULT NULL COMMENT '数据创建时间',
  `dept_id` varchar(20) DEFAULT NULL COMMENT '数据来源id',
  `version` varchar(20) DEFAULT NULL COMMENT '接口版本号',
  `source_code` varchar(64) DEFAULT NULL COMMENT '平台编号 ',
  `fin_claim_id` varchar(128) DEFAULT NULL COMMENT '债权信息编号',
  `source_product_code` varchar(64) DEFAULT NULL COMMENT '原散标编号 ',
  `source_financing_code` varchar(64) DEFAULT NULL COMMENT '原产品信息 编号',
  `user_idcard` varchar(64) DEFAULT NULL COMMENT '投资人用户 标示',
  `inv_amount` varchar(20) DEFAULT NULL COMMENT '投资人实际支付的投资金 额，单位是元，精确到小 数点后两位 ',
  `inv_rate` varchar(20) DEFAULT NULL COMMENT '投资预期年 化收益率 ',
  `inv_time` varchar(32) DEFAULT NULL COMMENT '投资计息时间 ',
  `redpackage` varchar(20) DEFAULT NULL COMMENT '投资红包',
  `lock_time` varchar(20) DEFAULT NULL COMMENT '封闭截止时间',
  `batch_number` varchar(128) DEFAULT NULL COMMENT '批次编号',
  `batch_status` varchar(20) DEFAULT '0' COMMENT '批次推送结果',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='债权信息';

-- ----------------------------
-- Records of inf_transfer_info
-- ----------------------------

-- ----------------------------
-- Table structure for inf_transfer_project
-- ----------------------------
DROP TABLE IF EXISTS `inf_transfer_project`;
CREATE TABLE `inf_transfer_project` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date_created` datetime DEFAULT NULL COMMENT '数据创建时间',
  `dept_id` varchar(20) DEFAULT NULL COMMENT '数据来源id',
  `version` varchar(20) DEFAULT NULL COMMENT '接口版本号',
  `source_code` varchar(64) DEFAULT NULL COMMENT '平台编号 ',
  `transfer_id` varchar(128) DEFAULT NULL COMMENT '转让编号',
  `bank_no` varchar(128) DEFAULT NULL COMMENT '存管银行债权 编号 ',
  `from_type` char(1) DEFAULT NULL COMMENT '债权信息编号',
  `fin_claim_id` varchar(64) DEFAULT NULL COMMENT '债权项目编号 或承接项目编 码 ',
  `user_idcard` varchar(64) DEFAULT NULL COMMENT '投资人用户标 示',
  `source_product_code` varchar(64) DEFAULT NULL COMMENT '原散标编号',
  `source_financing_code` varchar(64) DEFAULT NULL COMMENT '原产品信息编 号',
  `transfer_amount` varchar(20) DEFAULT NULL COMMENT '计划转让本金 (元) ',
  `transfer_interest` varchar(20) DEFAULT NULL COMMENT '转让利息 ',
  `float_money` varchar(20) DEFAULT NULL COMMENT '浮动金额 ',
  `transfer_date` varchar(32) DEFAULT NULL COMMENT '转让项目发布 的日期 ',
  `source_product_url` varchar(200) DEFAULT NULL COMMENT '转让债权信息 的链接 URL',
  `batch_number` varchar(128) DEFAULT NULL COMMENT '批次编号',
  `batch_status` varchar(20) DEFAULT '0' COMMENT '批次推送结果',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='转让项目';

-- ----------------------------
-- Records of inf_transfer_project
-- ----------------------------

-- ----------------------------
-- Table structure for inf_transfer_status
-- ----------------------------
DROP TABLE IF EXISTS `inf_transfer_status`;
CREATE TABLE `inf_transfer_status` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date_created` datetime DEFAULT NULL,
  `dept_id` varchar(20) DEFAULT NULL,
  `version` varchar(20) DEFAULT NULL COMMENT '接口版本号',
  `source_code` varchar(64) DEFAULT NULL COMMENT '平台编号 ',
  `transfer_id` varchar(128) DEFAULT NULL COMMENT '转让项目编号',
  `transfer_status` varchar(20) DEFAULT NULL COMMENT '状态编码 ',
  `amount` varchar(20) DEFAULT NULL COMMENT '成功转让本金 金额(元) ',
  `interest` varchar(20) DEFAULT NULL COMMENT '成功转让利息 金额 (元) ',
  `float_money` varchar(20) DEFAULT NULL COMMENT '成功转让浮动金额 (元) ',
  `product_date` varchar(40) DEFAULT NULL COMMENT '状态更新时间',
  `batch_number` varchar(128) DEFAULT NULL COMMENT '批次编号',
  `batch_status` varchar(20) DEFAULT '0' COMMENT '批次推送结果',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='转让状态';

-- ----------------------------
-- Records of inf_transfer_status
-- ----------------------------

-- ----------------------------
-- Table structure for inf_user
-- ----------------------------
DROP TABLE IF EXISTS `inf_user`;
CREATE TABLE `inf_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date_created` datetime DEFAULT NULL COMMENT '数据创建时间',
  `dept_id` varchar(20) DEFAULT NULL COMMENT '数据来源id',
  `version` varchar(20) DEFAULT NULL COMMENT '接口版本号',
  `source_code` varchar(64) DEFAULT NULL COMMENT '平台编号 ',
  `user_create_time` varchar(40) DEFAULT NULL COMMENT '用户注册时间',
  `user_status` varchar(64) DEFAULT NULL COMMENT '用户状态编码',
  `user_type` varchar(20) DEFAULT NULL COMMENT '用户类型',
  `user_attr` varchar(20) DEFAULT NULL COMMENT '用户属性',
  `user_name` varchar(256) DEFAULT NULL COMMENT '用户姓名/名称',
  `countries` varchar(20) DEFAULT NULL COMMENT '国别',
  `card_type` varchar(20) DEFAULT NULL COMMENT '证件类型',
  `user_idcard` varchar(64) DEFAULT NULL COMMENT '用户标识',
  `user_idcard_hash` varchar(64) DEFAULT NULL COMMENT '用户标识hash',
  `user_phone` varchar(64) DEFAULT NULL COMMENT '用户联系手机',
  `user_phone_hash` varchar(64) DEFAULT NULL COMMENT '手机号哈希 ',
  `user_uuid` varchar(64) DEFAULT NULL COMMENT '用户手机盐 值',
  `user_lawperson` varchar(64) DEFAULT NULL COMMENT '法人代表',
  `user_fund` varchar(20) DEFAULT NULL COMMENT '注册资金',
  `user_province` varchar(20) DEFAULT NULL COMMENT '注册省份',
  `user_address` varchar(256) DEFAULT NULL COMMENT '注册地址',
  `register_date` varchar(30) DEFAULT NULL COMMENT '企业注册时间',
  `user_mail` varchar(128) DEFAULT NULL COMMENT '注册人邮箱',
  `user_ascription` varchar(6) DEFAULT NULL COMMENT '用户所属地',
  `user_age` varchar(3) DEFAULT NULL COMMENT '用户年龄',
  `user_sex` varchar(1) DEFAULT NULL COMMENT '用户性别',
  `phone_ascription` varchar(6) DEFAULT NULL COMMENT '手机归属地',
  `risk_rating` char(1) DEFAULT NULL COMMENT '风险评级',
  `batch_number` varchar(128) DEFAULT NULL COMMENT '批次编号',
  `batch_status` varchar(20) DEFAULT '0' COMMENT '批次推送结果',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='用户信息表';

-- ----------------------------
-- Records of inf_user
-- ----------------------------
INSERT INTO `inf_user` VALUES ('2', '2018-11-23 15:55:20', null, null, null, '2016-07-15 11:34:32', '1', '1', '1', '王大万', '1', '1', '11010619920830061X', '', '13910435990', null, null, '-1', '-1', '-1', '-1', '-1', '13910435990@139.com', null, null, null, null, null, null, '0');

-- ----------------------------
-- Table structure for inf_user_account
-- ----------------------------
DROP TABLE IF EXISTS `inf_user_account`;
CREATE TABLE `inf_user_account` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date_created` datetime DEFAULT NULL COMMENT '数据创建时间',
  `dept_id` varchar(20) DEFAULT NULL COMMENT '数据来源id',
  `version` varchar(20) DEFAULT NULL COMMENT '接口版本号',
  `source_code` varchar(64) DEFAULT NULL COMMENT '平台编号 ',
  `user_name` varchar(256) DEFAULT NULL COMMENT '用户姓名/名称',
  `user_idcard` varchar(64) DEFAULT NULL COMMENT '用户标识',
  `user_phone` varchar(64) DEFAULT NULL COMMENT '用户联系手机',
  `user_pay` varchar(80) DEFAULT NULL COMMENT '用户的第三方支付平台名称 ／用户的存管银行名称',
  `user_pay_account` varchar(40) DEFAULT NULL COMMENT '用户的第三方支付账号 ／用户的存管银行账号',
  `user_bank` varchar(40) DEFAULT NULL COMMENT '用户关联银行',
  `user_bank_account` varchar(40) DEFAULT NULL COMMENT '用户关联银行账号',
  `batch_number` varchar(128) DEFAULT NULL COMMENT '批次编号',
  `batch_status` varchar(20) DEFAULT '0' COMMENT '批次推送结果',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='用户账号表';

-- ----------------------------
-- Records of inf_user_account
-- ----------------------------
INSERT INTO `inf_user_account` VALUES ('2', '2018-11-23 15:55:20', null, null, null, '王大万', '11010619920830061X', '13910435990', '西安银行', '888888404014839111', '中国银行', '621485*****82132', null, '0');

-- ----------------------------
-- Table structure for inf_user_head
-- ----------------------------
DROP TABLE IF EXISTS `inf_user_head`;
CREATE TABLE `inf_user_head` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date_created` datetime DEFAULT NULL COMMENT '创建时间',
  `deleted` tinyint(1) NOT NULL COMMENT '删除状态',
  `last_modified` datetime DEFAULT NULL COMMENT '更新时间',
  `pull_date` varchar(255) DEFAULT NULL COMMENT '数据时间，日期查询过滤字段',
  `status` tinyint(1) NOT NULL COMMENT '上传状态',
  `version` varchar(255) DEFAULT NULL COMMENT '接口版本号',
  `batch_num` varchar(255) DEFAULT NULL COMMENT '批次号',
  `check_code` varchar(255) DEFAULT NULL COMMENT '工具包 checkCode 方法生成',
  `total_num` varchar(255) DEFAULT NULL COMMENT '本批次发送的总数据条数',
  `data_type` varchar(255) DEFAULT NULL COMMENT '接口数据类型；0：调试数据；1 正式数据（接口联调阶段传 0，正式推数据阶段传 1）',
  `sent_time` varchar(255) DEFAULT NULL COMMENT '发送时间',
  `source_code` varchar(255) DEFAULT NULL COMMENT '平台编码',
  `inf_type` varchar(255) DEFAULT NULL COMMENT '1--用户接口，2--散标接口，4--流水接口，5—债权转让接口，6--散标状态接口，7--预期收益接口',
  `timestamp` varchar(255) DEFAULT NULL COMMENT '获取当前系统时间戳',
  `nonce` varchar(255) DEFAULT NULL COMMENT '随机数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户接口';

-- ----------------------------
-- Records of inf_user_head
-- ----------------------------

-- ----------------------------
-- Table structure for putaway_details
-- ----------------------------
DROP TABLE IF EXISTS `putaway_details`;
CREATE TABLE `putaway_details` (
  `id` varchar(20) NOT NULL,
  `serial_no` varchar(32) DEFAULT NULL,
  `is_second` int(10) NOT NULL,
  `order_num` varchar(128) NOT NULL,
  `creditor_rights_money` bigint(20) DEFAULT NULL,
  `order_user_card` varchar(20) DEFAULT NULL,
  `order_user_name` varchar(20) DEFAULT NULL,
  `start_buy_time` datetime NOT NULL,
  `end_buy_time` datetime NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `order_peridos` int(3) DEFAULT NULL,
  `year_rate` varchar(32) DEFAULT NULL,
  `is_putaway` int(2) DEFAULT NULL,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `rel_id` varchar(32) DEFAULT NULL,
  `pro_type` varchar(64) DEFAULT NULL,
  `req_xml` varchar(3000) DEFAULT NULL,
  `call_back_xml` varchar(3000) DEFAULT NULL,
  `pdes` varchar(20) DEFAULT NULL,
  `p2m_result` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of putaway_details
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_blob_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_blob_triggers`;
CREATE TABLE `qrtz_blob_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `BLOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `SCHED_NAME` (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_blob_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_calendars
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_calendars`;
CREATE TABLE `qrtz_calendars` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `CALENDAR_NAME` varchar(200) NOT NULL,
  `CALENDAR` blob NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`CALENDAR_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_calendars
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_cron_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_cron_triggers`;
CREATE TABLE `qrtz_cron_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `CRON_EXPRESSION` varchar(120) NOT NULL,
  `TIME_ZONE_ID` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_cron_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_fired_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_fired_triggers`;
CREATE TABLE `qrtz_fired_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `ENTRY_ID` varchar(95) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `INSTANCE_NAME` varchar(200) NOT NULL,
  `FIRED_TIME` bigint(13) NOT NULL,
  `SCHED_TIME` bigint(13) NOT NULL,
  `PRIORITY` int(11) NOT NULL,
  `STATE` varchar(16) NOT NULL,
  `JOB_NAME` varchar(200) DEFAULT NULL,
  `JOB_GROUP` varchar(200) DEFAULT NULL,
  `IS_NONCONCURRENT` varchar(1) DEFAULT NULL,
  `REQUESTS_RECOVERY` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`ENTRY_ID`),
  KEY `IDX_QRTZ_FT_TRIG_INST_NAME` (`SCHED_NAME`,`INSTANCE_NAME`),
  KEY `IDX_QRTZ_FT_INST_JOB_REQ_RCVRY` (`SCHED_NAME`,`INSTANCE_NAME`,`REQUESTS_RECOVERY`),
  KEY `IDX_QRTZ_FT_J_G` (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_FT_JG` (`SCHED_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_FT_T_G` (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `IDX_QRTZ_FT_TG` (`SCHED_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_fired_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_job_details
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_job_details`;
CREATE TABLE `qrtz_job_details` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `JOB_NAME` varchar(200) NOT NULL,
  `JOB_GROUP` varchar(200) NOT NULL,
  `DESCRIPTION` varchar(250) DEFAULT NULL,
  `JOB_CLASS_NAME` varchar(250) NOT NULL,
  `IS_DURABLE` varchar(1) NOT NULL,
  `IS_NONCONCURRENT` varchar(1) NOT NULL,
  `IS_UPDATE_DATA` varchar(1) NOT NULL,
  `REQUESTS_RECOVERY` varchar(1) NOT NULL,
  `JOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_J_REQ_RECOVERY` (`SCHED_NAME`,`REQUESTS_RECOVERY`),
  KEY `IDX_QRTZ_J_GRP` (`SCHED_NAME`,`JOB_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_job_details
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_locks
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_locks`;
CREATE TABLE `qrtz_locks` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `LOCK_NAME` varchar(40) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`LOCK_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_locks
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_paused_trigger_grps
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
CREATE TABLE `qrtz_paused_trigger_grps` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_paused_trigger_grps
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_scheduler_state
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_scheduler_state`;
CREATE TABLE `qrtz_scheduler_state` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `INSTANCE_NAME` varchar(200) NOT NULL,
  `LAST_CHECKIN_TIME` bigint(13) NOT NULL,
  `CHECKIN_INTERVAL` bigint(13) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`INSTANCE_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_scheduler_state
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_simple_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simple_triggers`;
CREATE TABLE `qrtz_simple_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `REPEAT_COUNT` bigint(7) NOT NULL,
  `REPEAT_INTERVAL` bigint(12) NOT NULL,
  `TIMES_TRIGGERED` bigint(10) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_simple_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_simprop_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
CREATE TABLE `qrtz_simprop_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `STR_PROP_1` varchar(512) DEFAULT NULL,
  `STR_PROP_2` varchar(512) DEFAULT NULL,
  `STR_PROP_3` varchar(512) DEFAULT NULL,
  `INT_PROP_1` int(11) DEFAULT NULL,
  `INT_PROP_2` int(11) DEFAULT NULL,
  `LONG_PROP_1` bigint(20) DEFAULT NULL,
  `LONG_PROP_2` bigint(20) DEFAULT NULL,
  `DEC_PROP_1` decimal(13,4) DEFAULT NULL,
  `DEC_PROP_2` decimal(13,4) DEFAULT NULL,
  `BOOL_PROP_1` varchar(1) DEFAULT NULL,
  `BOOL_PROP_2` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_simprop_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_triggers`;
CREATE TABLE `qrtz_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `JOB_NAME` varchar(200) NOT NULL,
  `JOB_GROUP` varchar(200) NOT NULL,
  `DESCRIPTION` varchar(250) DEFAULT NULL,
  `NEXT_FIRE_TIME` bigint(13) DEFAULT NULL,
  `PREV_FIRE_TIME` bigint(13) DEFAULT NULL,
  `PRIORITY` int(11) DEFAULT NULL,
  `TRIGGER_STATE` varchar(16) NOT NULL,
  `TRIGGER_TYPE` varchar(8) NOT NULL,
  `START_TIME` bigint(13) NOT NULL,
  `END_TIME` bigint(13) DEFAULT NULL,
  `CALENDAR_NAME` varchar(200) DEFAULT NULL,
  `MISFIRE_INSTR` smallint(2) DEFAULT NULL,
  `JOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `IDX_QRTZ_T_J` (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_T_JG` (`SCHED_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_T_C` (`SCHED_NAME`,`CALENDAR_NAME`),
  KEY `IDX_QRTZ_T_G` (`SCHED_NAME`,`TRIGGER_GROUP`),
  KEY `IDX_QRTZ_T_STATE` (`SCHED_NAME`,`TRIGGER_STATE`),
  KEY `IDX_QRTZ_T_N_STATE` (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`,`TRIGGER_STATE`),
  KEY `IDX_QRTZ_T_N_G_STATE` (`SCHED_NAME`,`TRIGGER_GROUP`,`TRIGGER_STATE`),
  KEY `IDX_QRTZ_T_NEXT_FIRE_TIME` (`SCHED_NAME`,`NEXT_FIRE_TIME`),
  KEY `IDX_QRTZ_T_NFT_ST` (`SCHED_NAME`,`TRIGGER_STATE`,`NEXT_FIRE_TIME`),
  KEY `IDX_QRTZ_T_NFT_MISFIRE` (`SCHED_NAME`,`MISFIRE_INSTR`,`NEXT_FIRE_TIME`),
  KEY `IDX_QRTZ_T_NFT_ST_MISFIRE` (`SCHED_NAME`,`MISFIRE_INSTR`,`NEXT_FIRE_TIME`,`TRIGGER_STATE`),
  KEY `IDX_QRTZ_T_NFT_ST_MISFIRE_GRP` (`SCHED_NAME`,`MISFIRE_INSTR`,`NEXT_FIRE_TIME`,`TRIGGER_GROUP`,`TRIGGER_STATE`),
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`) REFERENCES `qrtz_job_details` (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for schedule_job
-- ----------------------------
DROP TABLE IF EXISTS `schedule_job`;
CREATE TABLE `schedule_job` (
  `job_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务id',
  `bean_name` varchar(200) DEFAULT NULL COMMENT 'spring bean名称',
  `method_name` varchar(100) DEFAULT NULL COMMENT '方法名',
  `params` varchar(2000) DEFAULT NULL COMMENT '参数',
  `cron_expression` varchar(100) DEFAULT NULL COMMENT 'cron表达式',
  `status` tinyint(4) DEFAULT NULL COMMENT '任务状态  0：正常  1：暂停',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='定时任务';

-- ----------------------------
-- Records of schedule_job
-- ----------------------------
INSERT INTO `schedule_job` VALUES ('1', 'testTask', 'test', 'yingu', '0 0/30 * * * ?', '1', '有参数测试', '2016-12-01 23:16:46');
INSERT INTO `schedule_job` VALUES ('2', 'testTask', 'test2', null, '0 0/30 * * * ?', '1', '无参数测试', '2016-12-03 14:55:56');
INSERT INTO `schedule_job` VALUES ('3', 'infTask', 'submit', null, '0 */10 * * * ?', '1', '10分钟推送一次', '2018-11-13 18:36:27');
INSERT INTO `schedule_job` VALUES ('4', 'submissionTask', 'submission', null, '0 0 4 * * ?', '1', '测试', '2018-11-16 16:48:21');
INSERT INTO `schedule_job` VALUES ('6', 'syncTask', 'test', null, '0 */10 * * * ?', '1', null, '2018-11-24 18:10:41');
INSERT INTO `schedule_job` VALUES ('7', 'pullSlaveTask', 'syncPutawayDetails', null, '0 */1 * * * ?', '1', '银谷在线从表数据拉取', '2018-11-30 14:34:11');

-- ----------------------------
-- Table structure for schedule_job_log
-- ----------------------------
DROP TABLE IF EXISTS `schedule_job_log`;
CREATE TABLE `schedule_job_log` (
  `log_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务日志id',
  `job_id` bigint(20) NOT NULL COMMENT '任务id',
  `bean_name` varchar(200) DEFAULT NULL COMMENT 'spring bean名称',
  `method_name` varchar(100) DEFAULT NULL COMMENT '方法名',
  `params` varchar(2000) DEFAULT NULL COMMENT '参数',
  `status` tinyint(4) NOT NULL COMMENT '任务状态    0：成功    1：失败',
  `error` varchar(2000) DEFAULT NULL COMMENT '失败信息',
  `times` int(11) NOT NULL COMMENT '耗时(单位：毫秒)',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`log_id`),
  KEY `job_id` (`job_id`)
) ENGINE=InnoDB AUTO_INCREMENT=754 DEFAULT CHARSET=utf8 COMMENT='定时任务日志';

-- ----------------------------
-- Records of schedule_job_log
-- ----------------------------
INSERT INTO `schedule_job_log` VALUES ('1', '3', 'infTask', 'submit', null, '0', null, '127', '2018-11-13 18:40:00');
INSERT INTO `schedule_job_log` VALUES ('2', '3', 'infTask', 'submit', null, '0', null, '114', '2018-11-13 18:47:00');
INSERT INTO `schedule_job_log` VALUES ('3', '3', 'infTask', 'submit', null, '0', null, '126', '2018-11-13 18:58:00');
INSERT INTO `schedule_job_log` VALUES ('4', '3', 'infTask', 'submit', null, '0', null, '83', '2018-11-13 19:01:00');
INSERT INTO `schedule_job_log` VALUES ('5', '3', 'infTask', 'submit', null, '0', null, '38', '2018-11-13 19:02:00');
INSERT INTO `schedule_job_log` VALUES ('6', '3', 'infTask', 'submit', null, '0', null, '27', '2018-11-13 19:03:00');
INSERT INTO `schedule_job_log` VALUES ('7', '3', 'infTask', 'submit', null, '0', null, '31', '2018-11-13 19:04:00');
INSERT INTO `schedule_job_log` VALUES ('8', '3', 'infTask', 'submit', null, '0', null, '88', '2018-11-13 19:08:00');
INSERT INTO `schedule_job_log` VALUES ('9', '3', 'infTask', 'submit', null, '0', null, '36', '2018-11-13 19:09:00');
INSERT INTO `schedule_job_log` VALUES ('10', '3', 'infTask', 'submit', null, '0', null, '29', '2018-11-13 19:10:00');
INSERT INTO `schedule_job_log` VALUES ('11', '3', 'infTask', 'submit', null, '0', null, '27', '2018-11-13 19:11:00');
INSERT INTO `schedule_job_log` VALUES ('12', '3', 'infTask', 'submit', null, '0', null, '32', '2018-11-13 19:12:00');
INSERT INTO `schedule_job_log` VALUES ('13', '3', 'infTask', 'submit', null, '0', null, '31', '2018-11-13 19:13:00');
INSERT INTO `schedule_job_log` VALUES ('14', '3', 'infTask', 'submit', null, '0', null, '28', '2018-11-13 19:14:00');
INSERT INTO `schedule_job_log` VALUES ('15', '3', 'infTask', 'submit', null, '0', null, '27', '2018-11-13 19:15:00');
INSERT INTO `schedule_job_log` VALUES ('16', '3', 'infTask', 'submit', null, '0', null, '27', '2018-11-13 19:16:00');
INSERT INTO `schedule_job_log` VALUES ('17', '3', 'infTask', 'submit', null, '0', null, '26', '2018-11-13 19:17:00');
INSERT INTO `schedule_job_log` VALUES ('18', '3', 'infTask', 'submit', null, '0', null, '28', '2018-11-13 19:18:00');
INSERT INTO `schedule_job_log` VALUES ('19', '3', 'infTask', 'submit', null, '0', null, '33', '2018-11-13 19:19:00');
INSERT INTO `schedule_job_log` VALUES ('20', '3', 'infTask', 'submit', null, '0', null, '22', '2018-11-13 19:20:00');
INSERT INTO `schedule_job_log` VALUES ('21', '3', 'infTask', 'submit', null, '0', null, '26', '2018-11-13 19:21:00');
INSERT INTO `schedule_job_log` VALUES ('22', '3', 'infTask', 'submit', null, '0', null, '25', '2018-11-13 19:22:00');
INSERT INTO `schedule_job_log` VALUES ('23', '3', 'infTask', 'submit', null, '0', null, '23', '2018-11-13 19:23:00');
INSERT INTO `schedule_job_log` VALUES ('24', '3', 'infTask', 'submit', null, '0', null, '22', '2018-11-13 19:24:00');
INSERT INTO `schedule_job_log` VALUES ('25', '3', 'infTask', 'submit', null, '0', null, '20', '2018-11-13 19:25:00');
INSERT INTO `schedule_job_log` VALUES ('26', '3', 'infTask', 'submit', null, '0', null, '22', '2018-11-13 19:26:00');
INSERT INTO `schedule_job_log` VALUES ('27', '3', 'infTask', 'submit', null, '0', null, '33', '2018-11-13 19:27:00');
INSERT INTO `schedule_job_log` VALUES ('28', '3', 'infTask', 'submit', null, '0', null, '22', '2018-11-13 19:28:00');
INSERT INTO `schedule_job_log` VALUES ('29', '3', 'infTask', 'submit', null, '0', null, '20', '2018-11-13 19:29:00');
INSERT INTO `schedule_job_log` VALUES ('30', '3', 'infTask', 'submit', null, '0', null, '22', '2018-11-13 19:30:00');
INSERT INTO `schedule_job_log` VALUES ('31', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '9', '2018-11-14 09:00:00');
INSERT INTO `schedule_job_log` VALUES ('32', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 09:01:00');
INSERT INTO `schedule_job_log` VALUES ('33', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 09:02:00');
INSERT INTO `schedule_job_log` VALUES ('34', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '2', '2018-11-14 09:03:00');
INSERT INTO `schedule_job_log` VALUES ('35', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 09:04:00');
INSERT INTO `schedule_job_log` VALUES ('36', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 09:05:00');
INSERT INTO `schedule_job_log` VALUES ('37', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 09:06:00');
INSERT INTO `schedule_job_log` VALUES ('38', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 09:07:00');
INSERT INTO `schedule_job_log` VALUES ('39', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 09:08:00');
INSERT INTO `schedule_job_log` VALUES ('40', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 09:09:00');
INSERT INTO `schedule_job_log` VALUES ('41', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 09:10:00');
INSERT INTO `schedule_job_log` VALUES ('42', '3', 'infTask', 'submit', null, '0', null, '88', '2018-11-14 09:11:00');
INSERT INTO `schedule_job_log` VALUES ('43', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 09:11:00');
INSERT INTO `schedule_job_log` VALUES ('44', '3', 'infTask', 'submit', null, '0', null, '43', '2018-11-14 09:12:00');
INSERT INTO `schedule_job_log` VALUES ('45', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 09:12:00');
INSERT INTO `schedule_job_log` VALUES ('46', '3', 'infTask', 'submit', null, '0', null, '25', '2018-11-14 09:13:00');
INSERT INTO `schedule_job_log` VALUES ('47', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 09:13:00');
INSERT INTO `schedule_job_log` VALUES ('48', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 09:14:00');
INSERT INTO `schedule_job_log` VALUES ('49', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '2', '2018-11-14 09:15:00');
INSERT INTO `schedule_job_log` VALUES ('50', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 09:16:00');
INSERT INTO `schedule_job_log` VALUES ('51', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 09:17:00');
INSERT INTO `schedule_job_log` VALUES ('52', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 09:18:00');
INSERT INTO `schedule_job_log` VALUES ('53', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 09:19:00');
INSERT INTO `schedule_job_log` VALUES ('54', '3', 'infTask', 'submit', null, '0', null, '29', '2018-11-14 09:20:00');
INSERT INTO `schedule_job_log` VALUES ('55', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 09:20:00');
INSERT INTO `schedule_job_log` VALUES ('56', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '2', '2018-11-14 09:21:00');
INSERT INTO `schedule_job_log` VALUES ('57', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 09:22:00');
INSERT INTO `schedule_job_log` VALUES ('58', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 09:23:00');
INSERT INTO `schedule_job_log` VALUES ('59', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 09:24:00');
INSERT INTO `schedule_job_log` VALUES ('60', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 09:25:00');
INSERT INTO `schedule_job_log` VALUES ('61', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 09:26:00');
INSERT INTO `schedule_job_log` VALUES ('62', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 09:27:00');
INSERT INTO `schedule_job_log` VALUES ('63', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 09:28:00');
INSERT INTO `schedule_job_log` VALUES ('64', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 09:29:00');
INSERT INTO `schedule_job_log` VALUES ('65', '3', 'infTask', 'submit', null, '0', null, '23', '2018-11-14 09:30:00');
INSERT INTO `schedule_job_log` VALUES ('66', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 09:30:00');
INSERT INTO `schedule_job_log` VALUES ('67', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 09:31:00');
INSERT INTO `schedule_job_log` VALUES ('68', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 09:32:00');
INSERT INTO `schedule_job_log` VALUES ('69', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 09:33:00');
INSERT INTO `schedule_job_log` VALUES ('70', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 09:34:00');
INSERT INTO `schedule_job_log` VALUES ('71', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 09:35:00');
INSERT INTO `schedule_job_log` VALUES ('72', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 09:36:00');
INSERT INTO `schedule_job_log` VALUES ('73', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 09:37:00');
INSERT INTO `schedule_job_log` VALUES ('74', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 09:38:00');
INSERT INTO `schedule_job_log` VALUES ('75', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 09:39:00');
INSERT INTO `schedule_job_log` VALUES ('76', '3', 'infTask', 'submit', null, '0', null, '24', '2018-11-14 09:40:00');
INSERT INTO `schedule_job_log` VALUES ('77', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 09:40:00');
INSERT INTO `schedule_job_log` VALUES ('78', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 09:41:00');
INSERT INTO `schedule_job_log` VALUES ('79', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 09:42:00');
INSERT INTO `schedule_job_log` VALUES ('80', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 09:43:00');
INSERT INTO `schedule_job_log` VALUES ('81', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 09:44:00');
INSERT INTO `schedule_job_log` VALUES ('82', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 09:45:00');
INSERT INTO `schedule_job_log` VALUES ('83', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 09:46:00');
INSERT INTO `schedule_job_log` VALUES ('84', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 09:47:00');
INSERT INTO `schedule_job_log` VALUES ('85', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 09:48:00');
INSERT INTO `schedule_job_log` VALUES ('86', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 09:49:00');
INSERT INTO `schedule_job_log` VALUES ('87', '3', 'infTask', 'submit', null, '0', null, '26', '2018-11-14 09:50:00');
INSERT INTO `schedule_job_log` VALUES ('88', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 09:50:00');
INSERT INTO `schedule_job_log` VALUES ('89', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 09:51:00');
INSERT INTO `schedule_job_log` VALUES ('90', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 09:52:00');
INSERT INTO `schedule_job_log` VALUES ('91', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 09:53:00');
INSERT INTO `schedule_job_log` VALUES ('92', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 09:54:00');
INSERT INTO `schedule_job_log` VALUES ('93', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 09:55:00');
INSERT INTO `schedule_job_log` VALUES ('94', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 09:56:00');
INSERT INTO `schedule_job_log` VALUES ('95', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 09:57:00');
INSERT INTO `schedule_job_log` VALUES ('96', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 09:58:00');
INSERT INTO `schedule_job_log` VALUES ('97', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 09:59:00');
INSERT INTO `schedule_job_log` VALUES ('98', '3', 'infTask', 'submit', null, '0', null, '24', '2018-11-14 10:00:00');
INSERT INTO `schedule_job_log` VALUES ('99', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 10:00:00');
INSERT INTO `schedule_job_log` VALUES ('100', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 10:01:00');
INSERT INTO `schedule_job_log` VALUES ('101', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 10:02:00');
INSERT INTO `schedule_job_log` VALUES ('102', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 10:03:00');
INSERT INTO `schedule_job_log` VALUES ('103', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 10:04:00');
INSERT INTO `schedule_job_log` VALUES ('104', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 10:05:00');
INSERT INTO `schedule_job_log` VALUES ('105', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 10:06:00');
INSERT INTO `schedule_job_log` VALUES ('106', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 10:07:00');
INSERT INTO `schedule_job_log` VALUES ('107', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 10:08:00');
INSERT INTO `schedule_job_log` VALUES ('108', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 10:09:00');
INSERT INTO `schedule_job_log` VALUES ('109', '3', 'infTask', 'submit', null, '0', null, '21', '2018-11-14 10:10:00');
INSERT INTO `schedule_job_log` VALUES ('110', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 10:10:00');
INSERT INTO `schedule_job_log` VALUES ('111', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 10:11:00');
INSERT INTO `schedule_job_log` VALUES ('112', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 10:12:00');
INSERT INTO `schedule_job_log` VALUES ('113', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 10:13:00');
INSERT INTO `schedule_job_log` VALUES ('114', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 10:14:00');
INSERT INTO `schedule_job_log` VALUES ('115', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 10:15:00');
INSERT INTO `schedule_job_log` VALUES ('116', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 10:16:00');
INSERT INTO `schedule_job_log` VALUES ('117', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 10:17:00');
INSERT INTO `schedule_job_log` VALUES ('118', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 10:18:00');
INSERT INTO `schedule_job_log` VALUES ('119', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 10:19:00');
INSERT INTO `schedule_job_log` VALUES ('120', '3', 'infTask', 'submit', null, '0', null, '22', '2018-11-14 10:20:00');
INSERT INTO `schedule_job_log` VALUES ('121', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 10:20:00');
INSERT INTO `schedule_job_log` VALUES ('122', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 10:21:00');
INSERT INTO `schedule_job_log` VALUES ('123', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 10:22:00');
INSERT INTO `schedule_job_log` VALUES ('124', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 10:23:00');
INSERT INTO `schedule_job_log` VALUES ('125', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 10:24:00');
INSERT INTO `schedule_job_log` VALUES ('126', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 10:25:00');
INSERT INTO `schedule_job_log` VALUES ('127', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 10:26:00');
INSERT INTO `schedule_job_log` VALUES ('128', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 10:27:00');
INSERT INTO `schedule_job_log` VALUES ('129', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 10:28:00');
INSERT INTO `schedule_job_log` VALUES ('130', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 10:29:00');
INSERT INTO `schedule_job_log` VALUES ('131', '3', 'infTask', 'submit', null, '0', null, '22', '2018-11-14 10:30:00');
INSERT INTO `schedule_job_log` VALUES ('132', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 10:30:00');
INSERT INTO `schedule_job_log` VALUES ('133', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 10:31:00');
INSERT INTO `schedule_job_log` VALUES ('134', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 10:32:00');
INSERT INTO `schedule_job_log` VALUES ('135', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 10:33:00');
INSERT INTO `schedule_job_log` VALUES ('136', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 10:34:00');
INSERT INTO `schedule_job_log` VALUES ('137', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 10:35:00');
INSERT INTO `schedule_job_log` VALUES ('138', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 10:36:00');
INSERT INTO `schedule_job_log` VALUES ('139', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 10:37:00');
INSERT INTO `schedule_job_log` VALUES ('140', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 10:38:00');
INSERT INTO `schedule_job_log` VALUES ('141', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 10:39:00');
INSERT INTO `schedule_job_log` VALUES ('142', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '2', '2018-11-14 10:40:00');
INSERT INTO `schedule_job_log` VALUES ('143', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 10:41:00');
INSERT INTO `schedule_job_log` VALUES ('144', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 10:42:00');
INSERT INTO `schedule_job_log` VALUES ('145', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 10:43:00');
INSERT INTO `schedule_job_log` VALUES ('146', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 10:44:00');
INSERT INTO `schedule_job_log` VALUES ('147', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 10:45:00');
INSERT INTO `schedule_job_log` VALUES ('148', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 10:46:00');
INSERT INTO `schedule_job_log` VALUES ('149', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 10:47:00');
INSERT INTO `schedule_job_log` VALUES ('150', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 10:48:00');
INSERT INTO `schedule_job_log` VALUES ('151', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 10:49:00');
INSERT INTO `schedule_job_log` VALUES ('152', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 10:50:00');
INSERT INTO `schedule_job_log` VALUES ('153', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 10:51:00');
INSERT INTO `schedule_job_log` VALUES ('154', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 10:52:00');
INSERT INTO `schedule_job_log` VALUES ('155', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 10:53:00');
INSERT INTO `schedule_job_log` VALUES ('156', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 10:54:00');
INSERT INTO `schedule_job_log` VALUES ('157', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 10:55:00');
INSERT INTO `schedule_job_log` VALUES ('158', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 10:56:00');
INSERT INTO `schedule_job_log` VALUES ('159', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 10:57:00');
INSERT INTO `schedule_job_log` VALUES ('160', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 10:58:00');
INSERT INTO `schedule_job_log` VALUES ('161', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 10:59:00');
INSERT INTO `schedule_job_log` VALUES ('162', '3', 'infTask', 'submit', null, '0', null, '73', '2018-11-14 11:00:00');
INSERT INTO `schedule_job_log` VALUES ('163', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 11:00:00');
INSERT INTO `schedule_job_log` VALUES ('164', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 11:01:00');
INSERT INTO `schedule_job_log` VALUES ('165', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 11:02:00');
INSERT INTO `schedule_job_log` VALUES ('166', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 11:03:00');
INSERT INTO `schedule_job_log` VALUES ('167', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 11:04:00');
INSERT INTO `schedule_job_log` VALUES ('168', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 11:05:00');
INSERT INTO `schedule_job_log` VALUES ('169', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 11:06:00');
INSERT INTO `schedule_job_log` VALUES ('170', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 11:07:00');
INSERT INTO `schedule_job_log` VALUES ('171', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 11:08:00');
INSERT INTO `schedule_job_log` VALUES ('172', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 11:09:00');
INSERT INTO `schedule_job_log` VALUES ('173', '3', 'infTask', 'submit', null, '0', null, '33', '2018-11-14 11:10:00');
INSERT INTO `schedule_job_log` VALUES ('174', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 11:10:00');
INSERT INTO `schedule_job_log` VALUES ('175', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 11:11:00');
INSERT INTO `schedule_job_log` VALUES ('176', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 11:12:00');
INSERT INTO `schedule_job_log` VALUES ('177', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 11:13:00');
INSERT INTO `schedule_job_log` VALUES ('178', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 11:14:00');
INSERT INTO `schedule_job_log` VALUES ('179', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 11:15:00');
INSERT INTO `schedule_job_log` VALUES ('180', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 11:16:00');
INSERT INTO `schedule_job_log` VALUES ('181', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 11:17:00');
INSERT INTO `schedule_job_log` VALUES ('182', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 11:18:00');
INSERT INTO `schedule_job_log` VALUES ('183', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 11:19:00');
INSERT INTO `schedule_job_log` VALUES ('184', '3', 'infTask', 'submit', null, '0', null, '29', '2018-11-14 11:20:00');
INSERT INTO `schedule_job_log` VALUES ('185', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 11:20:00');
INSERT INTO `schedule_job_log` VALUES ('186', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 11:21:00');
INSERT INTO `schedule_job_log` VALUES ('187', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 11:22:00');
INSERT INTO `schedule_job_log` VALUES ('188', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 11:23:00');
INSERT INTO `schedule_job_log` VALUES ('189', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 11:24:00');
INSERT INTO `schedule_job_log` VALUES ('190', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 11:25:00');
INSERT INTO `schedule_job_log` VALUES ('191', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 11:26:00');
INSERT INTO `schedule_job_log` VALUES ('192', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 11:27:00');
INSERT INTO `schedule_job_log` VALUES ('193', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 11:28:00');
INSERT INTO `schedule_job_log` VALUES ('194', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 11:29:00');
INSERT INTO `schedule_job_log` VALUES ('195', '3', 'infTask', 'submit', null, '0', null, '24', '2018-11-14 11:30:00');
INSERT INTO `schedule_job_log` VALUES ('196', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 11:30:00');
INSERT INTO `schedule_job_log` VALUES ('197', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 11:31:00');
INSERT INTO `schedule_job_log` VALUES ('198', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 11:32:00');
INSERT INTO `schedule_job_log` VALUES ('199', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 11:33:00');
INSERT INTO `schedule_job_log` VALUES ('200', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 11:34:00');
INSERT INTO `schedule_job_log` VALUES ('201', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 11:35:00');
INSERT INTO `schedule_job_log` VALUES ('202', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 11:36:00');
INSERT INTO `schedule_job_log` VALUES ('203', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 11:37:00');
INSERT INTO `schedule_job_log` VALUES ('204', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 11:38:00');
INSERT INTO `schedule_job_log` VALUES ('205', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 11:39:00');
INSERT INTO `schedule_job_log` VALUES ('206', '3', 'infTask', 'submit', null, '0', null, '26', '2018-11-14 11:40:00');
INSERT INTO `schedule_job_log` VALUES ('207', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 11:40:00');
INSERT INTO `schedule_job_log` VALUES ('208', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 11:41:00');
INSERT INTO `schedule_job_log` VALUES ('209', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 11:42:00');
INSERT INTO `schedule_job_log` VALUES ('210', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 11:43:00');
INSERT INTO `schedule_job_log` VALUES ('211', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 11:44:00');
INSERT INTO `schedule_job_log` VALUES ('212', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 11:45:00');
INSERT INTO `schedule_job_log` VALUES ('213', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 11:46:00');
INSERT INTO `schedule_job_log` VALUES ('214', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 11:47:00');
INSERT INTO `schedule_job_log` VALUES ('215', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 11:48:00');
INSERT INTO `schedule_job_log` VALUES ('216', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 11:49:00');
INSERT INTO `schedule_job_log` VALUES ('217', '3', 'infTask', 'submit', null, '0', null, '27', '2018-11-14 11:50:00');
INSERT INTO `schedule_job_log` VALUES ('218', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 11:50:00');
INSERT INTO `schedule_job_log` VALUES ('219', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 11:51:00');
INSERT INTO `schedule_job_log` VALUES ('220', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 11:52:00');
INSERT INTO `schedule_job_log` VALUES ('221', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 11:53:00');
INSERT INTO `schedule_job_log` VALUES ('222', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 11:54:00');
INSERT INTO `schedule_job_log` VALUES ('223', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 11:55:00');
INSERT INTO `schedule_job_log` VALUES ('224', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 11:56:00');
INSERT INTO `schedule_job_log` VALUES ('225', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 11:57:00');
INSERT INTO `schedule_job_log` VALUES ('226', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 11:58:00');
INSERT INTO `schedule_job_log` VALUES ('227', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 11:59:00');
INSERT INTO `schedule_job_log` VALUES ('228', '3', 'infTask', 'submit', null, '0', null, '25', '2018-11-14 12:00:00');
INSERT INTO `schedule_job_log` VALUES ('229', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 12:00:00');
INSERT INTO `schedule_job_log` VALUES ('230', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 12:01:00');
INSERT INTO `schedule_job_log` VALUES ('231', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 12:02:00');
INSERT INTO `schedule_job_log` VALUES ('232', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 12:03:00');
INSERT INTO `schedule_job_log` VALUES ('233', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 12:04:00');
INSERT INTO `schedule_job_log` VALUES ('234', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 12:05:00');
INSERT INTO `schedule_job_log` VALUES ('235', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 12:06:00');
INSERT INTO `schedule_job_log` VALUES ('236', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 12:07:00');
INSERT INTO `schedule_job_log` VALUES ('237', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 12:08:00');
INSERT INTO `schedule_job_log` VALUES ('238', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 12:09:00');
INSERT INTO `schedule_job_log` VALUES ('239', '3', 'infTask', 'submit', null, '0', null, '21', '2018-11-14 12:10:00');
INSERT INTO `schedule_job_log` VALUES ('240', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 12:10:00');
INSERT INTO `schedule_job_log` VALUES ('241', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 12:11:00');
INSERT INTO `schedule_job_log` VALUES ('242', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 12:12:00');
INSERT INTO `schedule_job_log` VALUES ('243', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 12:13:00');
INSERT INTO `schedule_job_log` VALUES ('244', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 12:14:00');
INSERT INTO `schedule_job_log` VALUES ('245', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 12:15:00');
INSERT INTO `schedule_job_log` VALUES ('246', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 12:16:00');
INSERT INTO `schedule_job_log` VALUES ('247', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 12:17:00');
INSERT INTO `schedule_job_log` VALUES ('248', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 12:18:00');
INSERT INTO `schedule_job_log` VALUES ('249', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 12:19:00');
INSERT INTO `schedule_job_log` VALUES ('250', '3', 'infTask', 'submit', null, '0', null, '23', '2018-11-14 12:20:00');
INSERT INTO `schedule_job_log` VALUES ('251', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 12:20:00');
INSERT INTO `schedule_job_log` VALUES ('252', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 12:21:00');
INSERT INTO `schedule_job_log` VALUES ('253', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 12:22:00');
INSERT INTO `schedule_job_log` VALUES ('254', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 12:23:00');
INSERT INTO `schedule_job_log` VALUES ('255', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 12:24:00');
INSERT INTO `schedule_job_log` VALUES ('256', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 12:25:00');
INSERT INTO `schedule_job_log` VALUES ('257', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 12:26:00');
INSERT INTO `schedule_job_log` VALUES ('258', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 12:27:00');
INSERT INTO `schedule_job_log` VALUES ('259', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 12:28:00');
INSERT INTO `schedule_job_log` VALUES ('260', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 12:29:00');
INSERT INTO `schedule_job_log` VALUES ('261', '3', 'infTask', 'submit', null, '0', null, '24', '2018-11-14 12:30:00');
INSERT INTO `schedule_job_log` VALUES ('262', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 12:30:00');
INSERT INTO `schedule_job_log` VALUES ('263', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 12:31:00');
INSERT INTO `schedule_job_log` VALUES ('264', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 12:32:00');
INSERT INTO `schedule_job_log` VALUES ('265', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 12:33:00');
INSERT INTO `schedule_job_log` VALUES ('266', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 12:34:00');
INSERT INTO `schedule_job_log` VALUES ('267', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 12:35:00');
INSERT INTO `schedule_job_log` VALUES ('268', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 12:36:00');
INSERT INTO `schedule_job_log` VALUES ('269', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 12:37:00');
INSERT INTO `schedule_job_log` VALUES ('270', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 12:38:00');
INSERT INTO `schedule_job_log` VALUES ('271', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 12:39:00');
INSERT INTO `schedule_job_log` VALUES ('272', '3', 'infTask', 'submit', null, '0', null, '21', '2018-11-14 12:40:00');
INSERT INTO `schedule_job_log` VALUES ('273', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 12:40:00');
INSERT INTO `schedule_job_log` VALUES ('274', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 12:41:00');
INSERT INTO `schedule_job_log` VALUES ('275', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 12:42:00');
INSERT INTO `schedule_job_log` VALUES ('276', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 12:43:00');
INSERT INTO `schedule_job_log` VALUES ('277', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 12:44:00');
INSERT INTO `schedule_job_log` VALUES ('278', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 12:45:00');
INSERT INTO `schedule_job_log` VALUES ('279', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 12:46:00');
INSERT INTO `schedule_job_log` VALUES ('280', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 12:47:00');
INSERT INTO `schedule_job_log` VALUES ('281', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 12:48:00');
INSERT INTO `schedule_job_log` VALUES ('282', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 12:49:00');
INSERT INTO `schedule_job_log` VALUES ('283', '3', 'infTask', 'submit', null, '0', null, '21', '2018-11-14 12:50:00');
INSERT INTO `schedule_job_log` VALUES ('284', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 12:50:00');
INSERT INTO `schedule_job_log` VALUES ('285', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 12:51:00');
INSERT INTO `schedule_job_log` VALUES ('286', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 12:52:00');
INSERT INTO `schedule_job_log` VALUES ('287', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 12:53:00');
INSERT INTO `schedule_job_log` VALUES ('288', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 12:54:00');
INSERT INTO `schedule_job_log` VALUES ('289', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 12:55:00');
INSERT INTO `schedule_job_log` VALUES ('290', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 12:56:00');
INSERT INTO `schedule_job_log` VALUES ('291', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 12:57:00');
INSERT INTO `schedule_job_log` VALUES ('292', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 12:58:00');
INSERT INTO `schedule_job_log` VALUES ('293', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 12:59:00');
INSERT INTO `schedule_job_log` VALUES ('294', '3', 'infTask', 'submit', null, '0', null, '24', '2018-11-14 13:00:00');
INSERT INTO `schedule_job_log` VALUES ('295', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 13:00:00');
INSERT INTO `schedule_job_log` VALUES ('296', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 13:01:00');
INSERT INTO `schedule_job_log` VALUES ('297', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 13:02:00');
INSERT INTO `schedule_job_log` VALUES ('298', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 13:03:00');
INSERT INTO `schedule_job_log` VALUES ('299', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 13:04:00');
INSERT INTO `schedule_job_log` VALUES ('300', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 13:05:00');
INSERT INTO `schedule_job_log` VALUES ('301', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 13:06:00');
INSERT INTO `schedule_job_log` VALUES ('302', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 13:07:00');
INSERT INTO `schedule_job_log` VALUES ('303', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 13:08:00');
INSERT INTO `schedule_job_log` VALUES ('304', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 13:09:00');
INSERT INTO `schedule_job_log` VALUES ('305', '3', 'infTask', 'submit', null, '0', null, '26', '2018-11-14 13:10:00');
INSERT INTO `schedule_job_log` VALUES ('306', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 13:10:00');
INSERT INTO `schedule_job_log` VALUES ('307', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 13:11:00');
INSERT INTO `schedule_job_log` VALUES ('308', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 13:12:00');
INSERT INTO `schedule_job_log` VALUES ('309', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 13:13:00');
INSERT INTO `schedule_job_log` VALUES ('310', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 13:14:00');
INSERT INTO `schedule_job_log` VALUES ('311', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 13:15:00');
INSERT INTO `schedule_job_log` VALUES ('312', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 13:16:00');
INSERT INTO `schedule_job_log` VALUES ('313', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 13:17:00');
INSERT INTO `schedule_job_log` VALUES ('314', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 13:18:00');
INSERT INTO `schedule_job_log` VALUES ('315', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 13:19:00');
INSERT INTO `schedule_job_log` VALUES ('316', '3', 'infTask', 'submit', null, '0', null, '26', '2018-11-14 13:20:00');
INSERT INTO `schedule_job_log` VALUES ('317', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 13:20:00');
INSERT INTO `schedule_job_log` VALUES ('318', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 13:21:00');
INSERT INTO `schedule_job_log` VALUES ('319', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 13:22:00');
INSERT INTO `schedule_job_log` VALUES ('320', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 13:23:00');
INSERT INTO `schedule_job_log` VALUES ('321', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 13:24:00');
INSERT INTO `schedule_job_log` VALUES ('322', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 13:25:00');
INSERT INTO `schedule_job_log` VALUES ('323', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 13:26:00');
INSERT INTO `schedule_job_log` VALUES ('324', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 13:27:00');
INSERT INTO `schedule_job_log` VALUES ('325', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 13:28:00');
INSERT INTO `schedule_job_log` VALUES ('326', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 13:29:00');
INSERT INTO `schedule_job_log` VALUES ('327', '3', 'infTask', 'submit', null, '0', null, '25', '2018-11-14 13:30:00');
INSERT INTO `schedule_job_log` VALUES ('328', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 13:30:00');
INSERT INTO `schedule_job_log` VALUES ('329', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 13:31:00');
INSERT INTO `schedule_job_log` VALUES ('330', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 13:32:00');
INSERT INTO `schedule_job_log` VALUES ('331', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 13:33:00');
INSERT INTO `schedule_job_log` VALUES ('332', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 13:34:00');
INSERT INTO `schedule_job_log` VALUES ('333', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 13:35:00');
INSERT INTO `schedule_job_log` VALUES ('334', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 13:36:00');
INSERT INTO `schedule_job_log` VALUES ('335', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 13:37:00');
INSERT INTO `schedule_job_log` VALUES ('336', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 13:38:00');
INSERT INTO `schedule_job_log` VALUES ('337', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 13:39:00');
INSERT INTO `schedule_job_log` VALUES ('338', '3', 'infTask', 'submit', null, '0', null, '30', '2018-11-14 13:40:00');
INSERT INTO `schedule_job_log` VALUES ('339', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 13:40:00');
INSERT INTO `schedule_job_log` VALUES ('340', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 13:41:00');
INSERT INTO `schedule_job_log` VALUES ('341', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 13:42:00');
INSERT INTO `schedule_job_log` VALUES ('342', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 13:43:00');
INSERT INTO `schedule_job_log` VALUES ('343', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 13:44:00');
INSERT INTO `schedule_job_log` VALUES ('344', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 13:45:00');
INSERT INTO `schedule_job_log` VALUES ('345', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 13:46:00');
INSERT INTO `schedule_job_log` VALUES ('346', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 13:47:00');
INSERT INTO `schedule_job_log` VALUES ('347', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 13:48:00');
INSERT INTO `schedule_job_log` VALUES ('348', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 13:49:00');
INSERT INTO `schedule_job_log` VALUES ('349', '3', 'infTask', 'submit', null, '0', null, '26', '2018-11-14 13:50:00');
INSERT INTO `schedule_job_log` VALUES ('350', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 13:50:00');
INSERT INTO `schedule_job_log` VALUES ('351', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 13:51:00');
INSERT INTO `schedule_job_log` VALUES ('352', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 13:52:00');
INSERT INTO `schedule_job_log` VALUES ('353', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 13:53:00');
INSERT INTO `schedule_job_log` VALUES ('354', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 13:54:00');
INSERT INTO `schedule_job_log` VALUES ('355', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 13:55:00');
INSERT INTO `schedule_job_log` VALUES ('356', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '2', '2018-11-14 13:56:00');
INSERT INTO `schedule_job_log` VALUES ('357', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 13:57:00');
INSERT INTO `schedule_job_log` VALUES ('358', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 13:58:00');
INSERT INTO `schedule_job_log` VALUES ('359', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 13:59:00');
INSERT INTO `schedule_job_log` VALUES ('360', '3', 'infTask', 'submit', null, '0', null, '25', '2018-11-14 14:00:00');
INSERT INTO `schedule_job_log` VALUES ('361', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 14:00:00');
INSERT INTO `schedule_job_log` VALUES ('362', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 14:01:00');
INSERT INTO `schedule_job_log` VALUES ('363', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 14:02:00');
INSERT INTO `schedule_job_log` VALUES ('364', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 14:03:00');
INSERT INTO `schedule_job_log` VALUES ('365', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 14:04:00');
INSERT INTO `schedule_job_log` VALUES ('366', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 14:05:00');
INSERT INTO `schedule_job_log` VALUES ('367', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 14:06:00');
INSERT INTO `schedule_job_log` VALUES ('368', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 14:07:00');
INSERT INTO `schedule_job_log` VALUES ('369', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 14:08:00');
INSERT INTO `schedule_job_log` VALUES ('370', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 14:09:00');
INSERT INTO `schedule_job_log` VALUES ('371', '3', 'infTask', 'submit', null, '0', null, '27', '2018-11-14 14:10:00');
INSERT INTO `schedule_job_log` VALUES ('372', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 14:10:00');
INSERT INTO `schedule_job_log` VALUES ('373', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 14:11:00');
INSERT INTO `schedule_job_log` VALUES ('374', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 14:12:00');
INSERT INTO `schedule_job_log` VALUES ('375', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 14:13:00');
INSERT INTO `schedule_job_log` VALUES ('376', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 14:14:00');
INSERT INTO `schedule_job_log` VALUES ('377', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 14:15:00');
INSERT INTO `schedule_job_log` VALUES ('378', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 14:16:00');
INSERT INTO `schedule_job_log` VALUES ('379', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 14:17:00');
INSERT INTO `schedule_job_log` VALUES ('380', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 14:18:00');
INSERT INTO `schedule_job_log` VALUES ('381', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 14:19:00');
INSERT INTO `schedule_job_log` VALUES ('382', '3', 'infTask', 'submit', null, '0', null, '27', '2018-11-14 14:20:00');
INSERT INTO `schedule_job_log` VALUES ('383', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 14:20:00');
INSERT INTO `schedule_job_log` VALUES ('384', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 14:21:00');
INSERT INTO `schedule_job_log` VALUES ('385', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 14:22:00');
INSERT INTO `schedule_job_log` VALUES ('386', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 14:23:00');
INSERT INTO `schedule_job_log` VALUES ('387', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 14:24:00');
INSERT INTO `schedule_job_log` VALUES ('388', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 14:25:00');
INSERT INTO `schedule_job_log` VALUES ('389', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 14:26:00');
INSERT INTO `schedule_job_log` VALUES ('390', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 14:27:00');
INSERT INTO `schedule_job_log` VALUES ('391', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 14:28:00');
INSERT INTO `schedule_job_log` VALUES ('392', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 14:29:00');
INSERT INTO `schedule_job_log` VALUES ('393', '3', 'infTask', 'submit', null, '0', null, '23', '2018-11-14 14:30:00');
INSERT INTO `schedule_job_log` VALUES ('394', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 14:30:00');
INSERT INTO `schedule_job_log` VALUES ('395', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 14:31:00');
INSERT INTO `schedule_job_log` VALUES ('396', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 14:32:00');
INSERT INTO `schedule_job_log` VALUES ('397', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 14:33:00');
INSERT INTO `schedule_job_log` VALUES ('398', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 14:34:00');
INSERT INTO `schedule_job_log` VALUES ('399', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 14:35:00');
INSERT INTO `schedule_job_log` VALUES ('400', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 14:36:00');
INSERT INTO `schedule_job_log` VALUES ('401', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 14:37:00');
INSERT INTO `schedule_job_log` VALUES ('402', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 14:38:00');
INSERT INTO `schedule_job_log` VALUES ('403', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 14:39:00');
INSERT INTO `schedule_job_log` VALUES ('404', '3', 'infTask', 'submit', null, '0', null, '24', '2018-11-14 14:40:00');
INSERT INTO `schedule_job_log` VALUES ('405', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 14:40:00');
INSERT INTO `schedule_job_log` VALUES ('406', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 14:41:00');
INSERT INTO `schedule_job_log` VALUES ('407', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 14:42:00');
INSERT INTO `schedule_job_log` VALUES ('408', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 14:43:00');
INSERT INTO `schedule_job_log` VALUES ('409', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 14:44:00');
INSERT INTO `schedule_job_log` VALUES ('410', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 14:45:00');
INSERT INTO `schedule_job_log` VALUES ('411', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 14:46:00');
INSERT INTO `schedule_job_log` VALUES ('412', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 14:47:00');
INSERT INTO `schedule_job_log` VALUES ('413', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 14:48:00');
INSERT INTO `schedule_job_log` VALUES ('414', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 14:49:00');
INSERT INTO `schedule_job_log` VALUES ('415', '3', 'infTask', 'submit', null, '0', null, '21', '2018-11-14 14:50:00');
INSERT INTO `schedule_job_log` VALUES ('416', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 14:50:00');
INSERT INTO `schedule_job_log` VALUES ('417', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 14:51:00');
INSERT INTO `schedule_job_log` VALUES ('418', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 14:52:00');
INSERT INTO `schedule_job_log` VALUES ('419', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 14:53:00');
INSERT INTO `schedule_job_log` VALUES ('420', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 14:54:00');
INSERT INTO `schedule_job_log` VALUES ('421', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 14:55:00');
INSERT INTO `schedule_job_log` VALUES ('422', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 14:56:00');
INSERT INTO `schedule_job_log` VALUES ('423', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 14:57:00');
INSERT INTO `schedule_job_log` VALUES ('424', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 14:58:00');
INSERT INTO `schedule_job_log` VALUES ('425', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 14:59:00');
INSERT INTO `schedule_job_log` VALUES ('426', '3', 'infTask', 'submit', null, '0', null, '24', '2018-11-14 15:00:00');
INSERT INTO `schedule_job_log` VALUES ('427', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 15:00:00');
INSERT INTO `schedule_job_log` VALUES ('428', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 15:01:00');
INSERT INTO `schedule_job_log` VALUES ('429', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 15:02:00');
INSERT INTO `schedule_job_log` VALUES ('430', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 15:03:00');
INSERT INTO `schedule_job_log` VALUES ('431', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 15:04:00');
INSERT INTO `schedule_job_log` VALUES ('432', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 15:05:00');
INSERT INTO `schedule_job_log` VALUES ('433', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 15:06:00');
INSERT INTO `schedule_job_log` VALUES ('434', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 15:07:00');
INSERT INTO `schedule_job_log` VALUES ('435', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 15:08:00');
INSERT INTO `schedule_job_log` VALUES ('436', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 15:09:00');
INSERT INTO `schedule_job_log` VALUES ('437', '3', 'infTask', 'submit', null, '0', null, '23', '2018-11-14 15:10:00');
INSERT INTO `schedule_job_log` VALUES ('438', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 15:10:00');
INSERT INTO `schedule_job_log` VALUES ('439', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 15:11:00');
INSERT INTO `schedule_job_log` VALUES ('440', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 15:12:00');
INSERT INTO `schedule_job_log` VALUES ('441', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 15:13:00');
INSERT INTO `schedule_job_log` VALUES ('442', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 15:14:00');
INSERT INTO `schedule_job_log` VALUES ('443', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 15:15:00');
INSERT INTO `schedule_job_log` VALUES ('444', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 15:16:00');
INSERT INTO `schedule_job_log` VALUES ('445', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 15:17:00');
INSERT INTO `schedule_job_log` VALUES ('446', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 15:18:00');
INSERT INTO `schedule_job_log` VALUES ('447', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 15:19:00');
INSERT INTO `schedule_job_log` VALUES ('448', '3', 'infTask', 'submit', null, '0', null, '40', '2018-11-14 15:20:00');
INSERT INTO `schedule_job_log` VALUES ('449', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 15:20:00');
INSERT INTO `schedule_job_log` VALUES ('450', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 15:21:00');
INSERT INTO `schedule_job_log` VALUES ('451', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 15:22:00');
INSERT INTO `schedule_job_log` VALUES ('452', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 15:23:00');
INSERT INTO `schedule_job_log` VALUES ('453', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 15:24:00');
INSERT INTO `schedule_job_log` VALUES ('454', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 15:25:00');
INSERT INTO `schedule_job_log` VALUES ('455', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 15:26:00');
INSERT INTO `schedule_job_log` VALUES ('456', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 15:27:00');
INSERT INTO `schedule_job_log` VALUES ('457', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 15:28:00');
INSERT INTO `schedule_job_log` VALUES ('458', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 15:29:00');
INSERT INTO `schedule_job_log` VALUES ('459', '3', 'infTask', 'submit', null, '0', null, '25', '2018-11-14 15:30:00');
INSERT INTO `schedule_job_log` VALUES ('460', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 15:30:00');
INSERT INTO `schedule_job_log` VALUES ('461', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 15:31:00');
INSERT INTO `schedule_job_log` VALUES ('462', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 15:32:00');
INSERT INTO `schedule_job_log` VALUES ('463', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 15:33:00');
INSERT INTO `schedule_job_log` VALUES ('464', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 15:34:00');
INSERT INTO `schedule_job_log` VALUES ('465', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 15:35:00');
INSERT INTO `schedule_job_log` VALUES ('466', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 15:36:00');
INSERT INTO `schedule_job_log` VALUES ('467', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 15:37:00');
INSERT INTO `schedule_job_log` VALUES ('468', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 15:38:00');
INSERT INTO `schedule_job_log` VALUES ('469', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 15:39:00');
INSERT INTO `schedule_job_log` VALUES ('470', '3', 'infTask', 'submit', null, '0', null, '26', '2018-11-14 15:40:00');
INSERT INTO `schedule_job_log` VALUES ('471', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 15:40:00');
INSERT INTO `schedule_job_log` VALUES ('472', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 15:41:00');
INSERT INTO `schedule_job_log` VALUES ('473', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 15:42:00');
INSERT INTO `schedule_job_log` VALUES ('474', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 15:43:00');
INSERT INTO `schedule_job_log` VALUES ('475', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 15:44:00');
INSERT INTO `schedule_job_log` VALUES ('476', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 15:45:00');
INSERT INTO `schedule_job_log` VALUES ('477', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 15:46:00');
INSERT INTO `schedule_job_log` VALUES ('478', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 15:47:00');
INSERT INTO `schedule_job_log` VALUES ('479', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 15:48:00');
INSERT INTO `schedule_job_log` VALUES ('480', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 15:49:00');
INSERT INTO `schedule_job_log` VALUES ('481', '3', 'infTask', 'submit', null, '0', null, '25', '2018-11-14 15:50:00');
INSERT INTO `schedule_job_log` VALUES ('482', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 15:50:00');
INSERT INTO `schedule_job_log` VALUES ('483', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 15:51:00');
INSERT INTO `schedule_job_log` VALUES ('484', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 15:52:00');
INSERT INTO `schedule_job_log` VALUES ('485', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 15:53:00');
INSERT INTO `schedule_job_log` VALUES ('486', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 15:54:00');
INSERT INTO `schedule_job_log` VALUES ('487', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 15:55:00');
INSERT INTO `schedule_job_log` VALUES ('488', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 15:56:00');
INSERT INTO `schedule_job_log` VALUES ('489', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 15:57:00');
INSERT INTO `schedule_job_log` VALUES ('490', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 15:58:00');
INSERT INTO `schedule_job_log` VALUES ('491', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 15:59:00');
INSERT INTO `schedule_job_log` VALUES ('492', '3', 'infTask', 'submit', null, '0', null, '26', '2018-11-14 16:00:00');
INSERT INTO `schedule_job_log` VALUES ('493', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 16:00:00');
INSERT INTO `schedule_job_log` VALUES ('494', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 16:01:00');
INSERT INTO `schedule_job_log` VALUES ('495', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 16:02:00');
INSERT INTO `schedule_job_log` VALUES ('496', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 16:03:00');
INSERT INTO `schedule_job_log` VALUES ('497', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 16:04:00');
INSERT INTO `schedule_job_log` VALUES ('498', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 16:05:00');
INSERT INTO `schedule_job_log` VALUES ('499', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 16:06:00');
INSERT INTO `schedule_job_log` VALUES ('500', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 16:07:00');
INSERT INTO `schedule_job_log` VALUES ('501', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 16:08:00');
INSERT INTO `schedule_job_log` VALUES ('502', '3', 'infTask', 'submit', null, '0', null, '143', '2018-11-14 16:08:27');
INSERT INTO `schedule_job_log` VALUES ('503', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 16:09:00');
INSERT INTO `schedule_job_log` VALUES ('504', '3', 'infTask', 'submit', null, '0', null, '27', '2018-11-14 16:10:00');
INSERT INTO `schedule_job_log` VALUES ('505', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 16:10:00');
INSERT INTO `schedule_job_log` VALUES ('506', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 16:11:00');
INSERT INTO `schedule_job_log` VALUES ('507', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 16:12:00');
INSERT INTO `schedule_job_log` VALUES ('508', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 16:13:00');
INSERT INTO `schedule_job_log` VALUES ('509', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 16:14:00');
INSERT INTO `schedule_job_log` VALUES ('510', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 16:15:00');
INSERT INTO `schedule_job_log` VALUES ('511', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 16:16:00');
INSERT INTO `schedule_job_log` VALUES ('512', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 16:17:00');
INSERT INTO `schedule_job_log` VALUES ('513', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 16:18:00');
INSERT INTO `schedule_job_log` VALUES ('514', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 16:19:00');
INSERT INTO `schedule_job_log` VALUES ('515', '3', 'infTask', 'submit', null, '0', null, '28', '2018-11-14 16:20:00');
INSERT INTO `schedule_job_log` VALUES ('516', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 16:20:00');
INSERT INTO `schedule_job_log` VALUES ('517', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 16:21:00');
INSERT INTO `schedule_job_log` VALUES ('518', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 16:22:00');
INSERT INTO `schedule_job_log` VALUES ('519', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 16:23:00');
INSERT INTO `schedule_job_log` VALUES ('520', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 16:24:00');
INSERT INTO `schedule_job_log` VALUES ('521', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 16:25:00');
INSERT INTO `schedule_job_log` VALUES ('522', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 16:26:00');
INSERT INTO `schedule_job_log` VALUES ('523', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 16:27:00');
INSERT INTO `schedule_job_log` VALUES ('524', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 16:28:00');
INSERT INTO `schedule_job_log` VALUES ('525', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 16:29:00');
INSERT INTO `schedule_job_log` VALUES ('526', '3', 'infTask', 'submit', null, '0', null, '26', '2018-11-14 16:30:00');
INSERT INTO `schedule_job_log` VALUES ('527', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 16:30:00');
INSERT INTO `schedule_job_log` VALUES ('528', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 16:31:00');
INSERT INTO `schedule_job_log` VALUES ('529', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 16:32:00');
INSERT INTO `schedule_job_log` VALUES ('530', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 16:33:00');
INSERT INTO `schedule_job_log` VALUES ('531', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 16:34:00');
INSERT INTO `schedule_job_log` VALUES ('532', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 16:35:00');
INSERT INTO `schedule_job_log` VALUES ('533', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 16:36:00');
INSERT INTO `schedule_job_log` VALUES ('534', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 16:37:00');
INSERT INTO `schedule_job_log` VALUES ('535', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 16:38:00');
INSERT INTO `schedule_job_log` VALUES ('536', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 16:39:00');
INSERT INTO `schedule_job_log` VALUES ('537', '3', 'infTask', 'submit', null, '0', null, '27', '2018-11-14 16:40:00');
INSERT INTO `schedule_job_log` VALUES ('538', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 16:40:00');
INSERT INTO `schedule_job_log` VALUES ('539', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 16:41:00');
INSERT INTO `schedule_job_log` VALUES ('540', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 16:42:00');
INSERT INTO `schedule_job_log` VALUES ('541', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 16:43:00');
INSERT INTO `schedule_job_log` VALUES ('542', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 16:44:00');
INSERT INTO `schedule_job_log` VALUES ('543', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 16:45:00');
INSERT INTO `schedule_job_log` VALUES ('544', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 16:46:00');
INSERT INTO `schedule_job_log` VALUES ('545', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 16:47:00');
INSERT INTO `schedule_job_log` VALUES ('546', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 16:48:00');
INSERT INTO `schedule_job_log` VALUES ('547', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 16:49:00');
INSERT INTO `schedule_job_log` VALUES ('548', '3', 'infTask', 'submit', null, '0', null, '25', '2018-11-14 16:50:00');
INSERT INTO `schedule_job_log` VALUES ('549', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 16:50:00');
INSERT INTO `schedule_job_log` VALUES ('550', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 16:51:00');
INSERT INTO `schedule_job_log` VALUES ('551', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 16:52:00');
INSERT INTO `schedule_job_log` VALUES ('552', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 16:53:00');
INSERT INTO `schedule_job_log` VALUES ('553', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 16:54:00');
INSERT INTO `schedule_job_log` VALUES ('554', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 16:55:00');
INSERT INTO `schedule_job_log` VALUES ('555', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 16:56:00');
INSERT INTO `schedule_job_log` VALUES ('556', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 16:57:00');
INSERT INTO `schedule_job_log` VALUES ('557', '3', 'infTask', 'submit', null, '0', null, '124', '2018-11-14 16:57:49');
INSERT INTO `schedule_job_log` VALUES ('558', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 16:58:00');
INSERT INTO `schedule_job_log` VALUES ('559', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 16:59:00');
INSERT INTO `schedule_job_log` VALUES ('560', '3', 'infTask', 'submit', null, '0', null, '26', '2018-11-14 17:00:00');
INSERT INTO `schedule_job_log` VALUES ('561', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 17:00:00');
INSERT INTO `schedule_job_log` VALUES ('562', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 17:01:00');
INSERT INTO `schedule_job_log` VALUES ('563', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 17:02:00');
INSERT INTO `schedule_job_log` VALUES ('564', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 17:03:00');
INSERT INTO `schedule_job_log` VALUES ('565', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 17:04:00');
INSERT INTO `schedule_job_log` VALUES ('566', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 17:05:00');
INSERT INTO `schedule_job_log` VALUES ('567', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 17:06:00');
INSERT INTO `schedule_job_log` VALUES ('568', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 17:07:00');
INSERT INTO `schedule_job_log` VALUES ('569', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 17:08:00');
INSERT INTO `schedule_job_log` VALUES ('570', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 17:09:00');
INSERT INTO `schedule_job_log` VALUES ('571', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 17:10:00');
INSERT INTO `schedule_job_log` VALUES ('572', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 17:11:00');
INSERT INTO `schedule_job_log` VALUES ('573', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 17:12:00');
INSERT INTO `schedule_job_log` VALUES ('574', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 17:13:00');
INSERT INTO `schedule_job_log` VALUES ('575', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 17:14:00');
INSERT INTO `schedule_job_log` VALUES ('576', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 17:15:00');
INSERT INTO `schedule_job_log` VALUES ('577', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 17:16:00');
INSERT INTO `schedule_job_log` VALUES ('578', '3', 'infTask', 'submit', null, '0', null, '134', '2018-11-14 17:16:41');
INSERT INTO `schedule_job_log` VALUES ('579', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 17:17:00');
INSERT INTO `schedule_job_log` VALUES ('580', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 17:18:00');
INSERT INTO `schedule_job_log` VALUES ('581', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 17:19:00');
INSERT INTO `schedule_job_log` VALUES ('582', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 17:20:00');
INSERT INTO `schedule_job_log` VALUES ('583', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 17:21:00');
INSERT INTO `schedule_job_log` VALUES ('584', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 17:22:00');
INSERT INTO `schedule_job_log` VALUES ('585', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 17:23:00');
INSERT INTO `schedule_job_log` VALUES ('586', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 17:24:00');
INSERT INTO `schedule_job_log` VALUES ('587', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 17:25:00');
INSERT INTO `schedule_job_log` VALUES ('588', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 17:26:00');
INSERT INTO `schedule_job_log` VALUES ('589', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 17:27:00');
INSERT INTO `schedule_job_log` VALUES ('590', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 17:28:00');
INSERT INTO `schedule_job_log` VALUES ('591', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 17:29:00');
INSERT INTO `schedule_job_log` VALUES ('592', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 17:30:00');
INSERT INTO `schedule_job_log` VALUES ('593', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 17:31:00');
INSERT INTO `schedule_job_log` VALUES ('594', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 17:32:00');
INSERT INTO `schedule_job_log` VALUES ('595', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 17:33:00');
INSERT INTO `schedule_job_log` VALUES ('596', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 17:34:00');
INSERT INTO `schedule_job_log` VALUES ('597', '3', 'infTask', 'submit', null, '0', null, '88', '2018-11-14 17:34:17');
INSERT INTO `schedule_job_log` VALUES ('598', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 17:35:00');
INSERT INTO `schedule_job_log` VALUES ('599', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 17:36:00');
INSERT INTO `schedule_job_log` VALUES ('600', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 17:37:00');
INSERT INTO `schedule_job_log` VALUES ('601', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 17:38:00');
INSERT INTO `schedule_job_log` VALUES ('602', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 17:39:00');
INSERT INTO `schedule_job_log` VALUES ('603', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 17:40:00');
INSERT INTO `schedule_job_log` VALUES ('604', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 17:41:00');
INSERT INTO `schedule_job_log` VALUES ('605', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 17:42:00');
INSERT INTO `schedule_job_log` VALUES ('606', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 17:43:00');
INSERT INTO `schedule_job_log` VALUES ('607', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 17:44:00');
INSERT INTO `schedule_job_log` VALUES ('608', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 17:45:00');
INSERT INTO `schedule_job_log` VALUES ('609', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 17:46:00');
INSERT INTO `schedule_job_log` VALUES ('610', '3', 'infTask', 'submit', null, '0', null, '3', '2018-11-14 17:46:37');
INSERT INTO `schedule_job_log` VALUES ('611', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 17:47:00');
INSERT INTO `schedule_job_log` VALUES ('612', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 17:48:00');
INSERT INTO `schedule_job_log` VALUES ('613', '3', 'infTask', 'submit', null, '0', null, '87', '2018-11-14 17:48:46');
INSERT INTO `schedule_job_log` VALUES ('614', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 17:49:00');
INSERT INTO `schedule_job_log` VALUES ('615', '3', 'infTask', 'submit', null, '0', null, '10', '2018-11-14 17:50:00');
INSERT INTO `schedule_job_log` VALUES ('616', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 17:50:00');
INSERT INTO `schedule_job_log` VALUES ('617', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 17:51:00');
INSERT INTO `schedule_job_log` VALUES ('618', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 17:52:00');
INSERT INTO `schedule_job_log` VALUES ('619', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 17:53:00');
INSERT INTO `schedule_job_log` VALUES ('620', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 17:54:00');
INSERT INTO `schedule_job_log` VALUES ('621', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 17:55:00');
INSERT INTO `schedule_job_log` VALUES ('622', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 17:56:00');
INSERT INTO `schedule_job_log` VALUES ('623', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 17:57:00');
INSERT INTO `schedule_job_log` VALUES ('624', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 17:58:00');
INSERT INTO `schedule_job_log` VALUES ('625', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 17:59:00');
INSERT INTO `schedule_job_log` VALUES ('626', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 18:00:00');
INSERT INTO `schedule_job_log` VALUES ('627', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '1', '2018-11-14 18:01:00');
INSERT INTO `schedule_job_log` VALUES ('628', '3', 'infTask', 'submit', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'infTask\' available', '0', '2018-11-14 18:02:00');
INSERT INTO `schedule_job_log` VALUES ('629', '3', 'infTask', 'submit', null, '0', null, '113', '2018-11-14 18:04:47');
INSERT INTO `schedule_job_log` VALUES ('630', '3', 'infTask', 'submit', null, '0', null, '126', '2018-11-14 18:18:04');
INSERT INTO `schedule_job_log` VALUES ('631', '3', 'infTask', 'submit', null, '0', null, '12164', '2018-11-15 14:55:46');
INSERT INTO `schedule_job_log` VALUES ('632', '3', 'infTask', 'submit', null, '0', null, '18741', '2018-11-15 15:00:02');
INSERT INTO `schedule_job_log` VALUES ('633', '3', 'infTask', 'submit', null, '0', null, '136', '2018-11-15 15:34:50');
INSERT INTO `schedule_job_log` VALUES ('634', '4', 'submissionTask', 'submission', null, '0', null, '6', '2018-11-16 16:49:22');
INSERT INTO `schedule_job_log` VALUES ('635', '3', 'infTask', 'submit', null, '0', null, '342', '2018-11-16 16:50:00');
INSERT INTO `schedule_job_log` VALUES ('636', '4', 'submissionTask', 'submission', null, '0', null, '6', '2018-11-16 16:54:46');
INSERT INTO `schedule_job_log` VALUES ('637', '4', 'submissionTask', 'submission', null, '0', null, '7', '2018-11-16 17:04:17');
INSERT INTO `schedule_job_log` VALUES ('638', '4', 'submissionTask', 'submission', null, '0', null, '9', '2018-11-16 17:07:29');
INSERT INTO `schedule_job_log` VALUES ('639', '3', 'infTask', 'submit', null, '0', null, '611', '2018-11-22 15:48:26');
INSERT INTO `schedule_job_log` VALUES ('640', '3', 'infTask', 'submit', null, '0', null, '463', '2018-11-22 16:26:21');
INSERT INTO `schedule_job_log` VALUES ('641', '3', 'infTask', 'submit', null, '0', null, '501', '2018-11-23 15:26:28');
INSERT INTO `schedule_job_log` VALUES ('642', '3', 'infTask', 'submit', null, '0', null, '206', '2018-11-23 15:45:49');
INSERT INTO `schedule_job_log` VALUES ('643', '3', 'infTask', 'submit', null, '0', null, '152', '2018-11-23 15:50:09');
INSERT INTO `schedule_job_log` VALUES ('644', '3', 'infTask', 'submit', null, '0', null, '432', '2018-11-23 15:56:40');
INSERT INTO `schedule_job_log` VALUES ('645', '3', 'infTask', 'submit', null, '0', null, '107863', '2018-11-23 15:59:53');
INSERT INTO `schedule_job_log` VALUES ('646', '3', 'infTask', 'submit', null, '0', null, '122864', '2018-11-23 15:59:38');
INSERT INTO `schedule_job_log` VALUES ('647', '3', 'infTask', 'submit', null, '0', null, '22031', '2018-11-23 17:32:50');
INSERT INTO `schedule_job_log` VALUES ('648', '3', 'infTask', 'submit', null, '0', null, '554', '2018-11-23 18:03:39');
INSERT INTO `schedule_job_log` VALUES ('649', '3', 'infTask', 'submit', null, '0', null, '44232', '2018-11-23 18:12:20');
INSERT INTO `schedule_job_log` VALUES ('650', '3', 'infTask', 'submit', null, '0', null, '16457', '2018-11-23 18:13:57');
INSERT INTO `schedule_job_log` VALUES ('651', '3', 'infTask', 'submit', null, '0', null, '548', '2018-11-23 18:14:13');
INSERT INTO `schedule_job_log` VALUES ('652', '3', 'infTask', 'submit', null, '0', null, '368', '2018-11-23 18:14:29');
INSERT INTO `schedule_job_log` VALUES ('653', '3', 'infTask', 'submit', null, '0', null, '487', '2018-11-23 18:14:40');
INSERT INTO `schedule_job_log` VALUES ('654', '3', 'infTask', 'submit', null, '0', null, '58641', '2018-11-23 18:15:39');
INSERT INTO `schedule_job_log` VALUES ('655', '3', 'infTask', 'submit', null, '0', null, '20431', '2018-11-23 18:18:44');
INSERT INTO `schedule_job_log` VALUES ('656', '3', 'infTask', 'submit', null, '0', null, '62652', '2018-11-23 18:25:17');
INSERT INTO `schedule_job_log` VALUES ('657', '3', 'infTask', 'submit', null, '0', null, '83446', '2018-11-23 18:49:47');
INSERT INTO `schedule_job_log` VALUES ('658', '3', 'infTask', 'submit', null, '0', null, '38084', '2018-11-23 20:16:17');
INSERT INTO `schedule_job_log` VALUES ('659', '3', 'infTask', 'submit', null, '0', null, '441814', '2018-11-23 20:32:58');
INSERT INTO `schedule_job_log` VALUES ('660', '3', 'infTask', 'submit', null, '0', null, '322098', '2018-11-23 20:42:22');
INSERT INTO `schedule_job_log` VALUES ('661', '3', 'infTask', 'submit', null, '0', null, '7865', '2018-11-23 20:48:42');
INSERT INTO `schedule_job_log` VALUES ('662', '3', 'infTask', 'submit', null, '0', null, '10555', '2018-11-23 21:07:41');
INSERT INTO `schedule_job_log` VALUES ('663', '3', 'infTask', 'submit', null, '0', null, '29619', '2018-11-24 10:13:49');
INSERT INTO `schedule_job_log` VALUES ('664', '3', 'infTask', 'submit', null, '0', null, '155312', '2018-11-24 10:42:04');
INSERT INTO `schedule_job_log` VALUES ('665', '3', 'infTask', 'submit', null, '0', null, '23554', '2018-11-24 10:48:29');
INSERT INTO `schedule_job_log` VALUES ('666', '3', 'infTask', 'submit', null, '0', null, '14234', '2018-11-24 10:51:22');
INSERT INTO `schedule_job_log` VALUES ('667', '3', 'infTask', 'submit', null, '0', null, '959190', '2018-11-24 10:55:25');
INSERT INTO `schedule_job_log` VALUES ('668', '3', 'infTask', 'submit', null, '0', null, '37128', '2018-11-24 11:19:00');
INSERT INTO `schedule_job_log` VALUES ('669', '3', 'infTask', 'submit', null, '0', null, '52569', '2018-11-24 11:29:45');
INSERT INTO `schedule_job_log` VALUES ('670', '3', 'infTask', 'submit', null, '0', null, '32102', '2018-11-24 11:46:14');
INSERT INTO `schedule_job_log` VALUES ('671', '3', 'infTask', 'submit', null, '0', null, '6073', '2018-11-24 12:01:45');
INSERT INTO `schedule_job_log` VALUES ('672', '3', 'infTask', 'submit', null, '0', null, '78730', '2018-11-24 12:02:48');
INSERT INTO `schedule_job_log` VALUES ('673', '3', 'infTask', 'submit', null, '0', null, '46312', '2018-11-24 12:11:29');
INSERT INTO `schedule_job_log` VALUES ('674', '3', 'infTask', 'submit', null, '0', null, '7985', '2018-11-24 12:14:59');
INSERT INTO `schedule_job_log` VALUES ('675', '3', 'infTask', 'submit', null, '0', null, '50177', '2018-11-24 12:25:45');
INSERT INTO `schedule_job_log` VALUES ('676', '3', 'infTask', 'submit', null, '0', null, '46445', '2018-11-24 12:34:07');
INSERT INTO `schedule_job_log` VALUES ('677', '3', 'infTask', 'submit', null, '0', null, '6176', '2018-11-24 12:36:34');
INSERT INTO `schedule_job_log` VALUES ('678', '3', 'infTask', 'submit', null, '0', null, '1573', '2018-11-24 12:36:39');
INSERT INTO `schedule_job_log` VALUES ('679', '3', 'infTask', 'submit', null, '0', null, '1581', '2018-11-24 12:36:39');
INSERT INTO `schedule_job_log` VALUES ('680', '3', 'infTask', 'submit', null, '0', null, '318', '2018-11-24 12:38:50');
INSERT INTO `schedule_job_log` VALUES ('681', '3', 'infTask', 'submit', null, '0', null, '386', '2018-11-24 13:25:57');
INSERT INTO `schedule_job_log` VALUES ('682', '3', 'infTask', 'submit', null, '0', null, '384', '2018-11-24 13:26:40');
INSERT INTO `schedule_job_log` VALUES ('683', '3', 'infTask', 'submit', null, '0', null, '34001', '2018-11-24 13:28:23');
INSERT INTO `schedule_job_log` VALUES ('684', '3', 'infTask', 'submit', null, '0', null, '18226', '2018-11-24 13:35:43');
INSERT INTO `schedule_job_log` VALUES ('685', '3', 'infTask', 'submit', null, '0', null, '26479', '2018-11-24 13:36:26');
INSERT INTO `schedule_job_log` VALUES ('686', '6', 'syncTask', 'test', null, '1', 'java.lang.NoSuchMethodException: com.yingu.modules.job.task.SyncAllTask.test()', '1', '2018-11-24 18:11:05');
INSERT INTO `schedule_job_log` VALUES ('687', '6', 'syncTask', 'test', null, '0', null, '12204', '2018-11-24 18:12:32');
INSERT INTO `schedule_job_log` VALUES ('688', '6', 'syncTask', 'test', null, '0', null, '5866', '2018-11-24 18:13:49');
INSERT INTO `schedule_job_log` VALUES ('689', '6', 'syncTask', 'test', null, '0', null, '1850', '2018-11-24 18:13:54');
INSERT INTO `schedule_job_log` VALUES ('690', '3', 'infTask', 'submit', null, '0', null, '57275', '2018-11-24 18:40:08');
INSERT INTO `schedule_job_log` VALUES ('691', '4', 'submissionTask', 'submission', null, '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'submissionTask\' available', '2', '2018-11-24 18:41:14');
INSERT INTO `schedule_job_log` VALUES ('692', '3', 'infTask', 'submit', null, '0', null, '371', '2018-11-24 18:41:30');
INSERT INTO `schedule_job_log` VALUES ('693', '3', 'infTask', 'submit', null, '0', null, '540', '2018-11-24 18:46:23');
INSERT INTO `schedule_job_log` VALUES ('694', '3', 'infTask', 'submit', null, '0', null, '359', '2018-11-24 18:53:22');
INSERT INTO `schedule_job_log` VALUES ('695', '3', 'infTask', 'submit', null, '0', null, '8870', '2018-11-24 19:00:28');
INSERT INTO `schedule_job_log` VALUES ('696', '6', 'syncTask', 'test', null, '0', null, '11033', '2018-11-26 18:27:44');
INSERT INTO `schedule_job_log` VALUES ('697', '6', 'syncTask', 'test', null, '0', null, '3964', '2018-11-26 18:27:52');
INSERT INTO `schedule_job_log` VALUES ('698', '3', 'infTask', 'submit', null, '0', null, '300359', '2018-11-26 18:59:52');
INSERT INTO `schedule_job_log` VALUES ('699', '6', 'syncTask', 'test', null, '0', null, '11793', '2018-11-26 19:36:49');
INSERT INTO `schedule_job_log` VALUES ('700', '6', 'syncTask', 'test', null, '0', null, '23742', '2018-11-26 19:55:28');
INSERT INTO `schedule_job_log` VALUES ('701', '3', 'infTask', 'submit', null, '0', null, '11585', '2018-11-26 20:13:47');
INSERT INTO `schedule_job_log` VALUES ('702', '3', 'infTask', 'submit', null, '0', null, '6004', '2018-11-26 20:31:17');
INSERT INTO `schedule_job_log` VALUES ('703', '3', 'infTask', 'submit', null, '0', null, '9442', '2018-11-26 20:32:15');
INSERT INTO `schedule_job_log` VALUES ('704', '3', 'infTask', 'submit', null, '0', null, '4872', '2018-11-26 20:36:50');
INSERT INTO `schedule_job_log` VALUES ('705', '3', 'infTask', 'submit', null, '0', null, '15012', '2018-11-26 20:37:39');
INSERT INTO `schedule_job_log` VALUES ('706', '3', 'infTask', 'submit', null, '0', null, '96228', '2018-11-26 20:50:38');
INSERT INTO `schedule_job_log` VALUES ('707', '3', 'infTask', 'submit', null, '0', null, '15731', '2018-11-26 20:56:13');
INSERT INTO `schedule_job_log` VALUES ('708', '6', 'syncTask', 'test', null, '0', null, '72770', '2018-11-26 21:05:02');
INSERT INTO `schedule_job_log` VALUES ('709', '3', 'infTask', 'submit', null, '0', null, '43009', '2018-11-26 21:06:15');
INSERT INTO `schedule_job_log` VALUES ('710', '3', 'infTask', 'submit', null, '0', null, '43014', '2018-11-26 21:06:15');
INSERT INTO `schedule_job_log` VALUES ('711', '6', 'syncTask', 'test', null, '0', null, '28088', '2018-11-26 21:18:12');
INSERT INTO `schedule_job_log` VALUES ('712', '6', 'syncTask', 'test', null, '0', null, '3911', '2018-11-26 21:18:56');
INSERT INTO `schedule_job_log` VALUES ('713', '6', 'syncTask', 'test', null, '0', null, '3737', '2018-11-26 21:19:00');
INSERT INTO `schedule_job_log` VALUES ('714', '3', 'infTask', 'submit', null, '0', null, '262707', '2018-11-26 21:18:56');
INSERT INTO `schedule_job_log` VALUES ('715', '3', 'infTask', 'submit', null, '0', null, '258807', '2018-11-26 21:19:00');
INSERT INTO `schedule_job_log` VALUES ('716', '3', 'infTask', 'submit', null, '0', null, '27632', '2018-11-26 21:23:48');
INSERT INTO `schedule_job_log` VALUES ('717', '6', 'syncTask', 'test', null, '0', null, '1173', '2018-11-27 15:40:13');
INSERT INTO `schedule_job_log` VALUES ('718', '3', 'infTask', 'submit', null, '0', null, '128404', '2018-11-27 15:41:00');
INSERT INTO `schedule_job_log` VALUES ('719', '3', 'infTask', 'submit', null, '0', null, '73868', '2018-11-27 15:44:53');
INSERT INTO `schedule_job_log` VALUES ('720', '3', 'infTask', 'submit', null, '0', null, '16678', '2018-11-27 15:47:01');
INSERT INTO `schedule_job_log` VALUES ('721', '3', 'infTask', 'submit', null, '0', null, '14289', '2018-11-27 15:49:05');
INSERT INTO `schedule_job_log` VALUES ('722', '3', 'infTask', 'submit', null, '0', null, '10192', '2018-11-27 15:57:20');
INSERT INTO `schedule_job_log` VALUES ('723', '3', 'infTask', 'submit', null, '0', null, '1736', '2018-11-28 20:09:55');
INSERT INTO `schedule_job_log` VALUES ('724', '3', 'infTask', 'submit', null, '0', null, '823', '2018-11-28 20:11:05');
INSERT INTO `schedule_job_log` VALUES ('725', '3', 'infTask', 'submit', null, '0', null, '10878', '2018-11-28 20:13:23');
INSERT INTO `schedule_job_log` VALUES ('726', '3', 'infTask', 'submit', null, '0', null, '13176', '2018-11-28 20:59:33');
INSERT INTO `schedule_job_log` VALUES ('727', '3', 'infTask', 'submit', null, '0', null, '21055', '2018-11-28 21:03:20');
INSERT INTO `schedule_job_log` VALUES ('728', '3', 'infTask', 'submit', null, '0', null, '28897', '2018-11-28 21:11:11');
INSERT INTO `schedule_job_log` VALUES ('729', '3', 'infTask', 'submit', null, '0', null, '24352', '2018-11-28 21:11:16');
INSERT INTO `schedule_job_log` VALUES ('730', '3', 'infTask', 'submit', null, '0', null, '24372', '2018-11-28 21:11:16');
INSERT INTO `schedule_job_log` VALUES ('731', '3', 'infTask', 'submit', null, '0', null, '28137', '2018-11-29 10:51:18');
INSERT INTO `schedule_job_log` VALUES ('732', '3', 'infTask', 'submit', null, '0', null, '86539', '2018-11-29 11:11:21');
INSERT INTO `schedule_job_log` VALUES ('733', '3', 'infTask', 'submit', null, '0', null, '5269', '2018-11-29 11:47:06');
INSERT INTO `schedule_job_log` VALUES ('734', '6', 'syncTask', 'test', null, '0', null, '1038', '2018-11-30 14:37:29');
INSERT INTO `schedule_job_log` VALUES ('735', '7', 'pullSlaveTask', 'syncPutawayDetails', null, '1', 'java.util.concurrent.ExecutionException: com.yingu.common.exception.RRException: 执行定时任务失败', '14298', '2018-11-30 14:37:56');
INSERT INTO `schedule_job_log` VALUES ('736', '7', 'pullSlaveTask', 'syncPutawayDetails', null, '1', 'java.util.concurrent.ExecutionException: com.yingu.common.exception.RRException: 执行定时任务失败', '2', '2018-11-30 14:39:19');
INSERT INTO `schedule_job_log` VALUES ('737', '7', 'pullSlaveTask', 'syncPutawayDetails', null, '0', null, '20533', '2018-11-30 14:45:17');
INSERT INTO `schedule_job_log` VALUES ('738', '7', 'pullSlaveTask', 'syncPutawayDetails', null, '0', null, '110191', '2018-11-30 14:52:12');
INSERT INTO `schedule_job_log` VALUES ('739', '7', 'pullSlaveTask', 'syncPutawayDetails', null, '0', null, '144003', '2018-11-30 14:54:19');
INSERT INTO `schedule_job_log` VALUES ('740', '7', 'pullSlaveTask', 'syncPutawayDetails', null, '0', null, '2867', '2018-11-30 14:56:42');
INSERT INTO `schedule_job_log` VALUES ('741', '7', 'pullSlaveTask', 'syncPutawayDetails', null, '0', null, '7140', '2018-11-30 14:57:08');
INSERT INTO `schedule_job_log` VALUES ('742', '7', 'pullSlaveTask', 'syncPutawayDetails', null, '0', null, '53676', '2018-11-30 14:57:36');
INSERT INTO `schedule_job_log` VALUES ('743', '7', 'pullSlaveTask', 'syncPutawayDetails', null, '0', null, '326491', '2018-11-30 14:59:46');
INSERT INTO `schedule_job_log` VALUES ('744', '7', 'pullSlaveTask', 'syncPutawayDetails', null, '0', null, '736660', '2018-11-30 15:05:38');
INSERT INTO `schedule_job_log` VALUES ('745', '7', 'pullSlaveTask', 'syncPutawayDetails', null, '0', null, '32508', '2018-11-30 15:19:35');
INSERT INTO `schedule_job_log` VALUES ('746', '7', 'pullSlaveTask', 'syncPutawayDetails', null, '0', null, '96', '2018-11-30 15:26:00');
INSERT INTO `schedule_job_log` VALUES ('747', '7', 'pullSlaveTask', 'syncPutawayDetails', null, '0', null, '45252', '2018-11-30 15:45:35');
INSERT INTO `schedule_job_log` VALUES ('748', '7', 'pullSlaveTask', 'syncPutawayDetails', null, '0', null, '26387', '2018-11-30 15:52:33');
INSERT INTO `schedule_job_log` VALUES ('749', '7', 'pullSlaveTask', 'syncPutawayDetails', null, '0', null, '177182', '2018-11-30 15:56:15');
INSERT INTO `schedule_job_log` VALUES ('750', '3', 'infTask', 'submit', null, '0', null, '133', '2018-11-30 20:05:20');
INSERT INTO `schedule_job_log` VALUES ('751', '3', 'infTask', 'submit', null, '0', null, '547', '2018-11-30 20:06:06');
INSERT INTO `schedule_job_log` VALUES ('752', '3', 'infTask', 'submit', null, '0', null, '483', '2018-11-30 20:12:36');
INSERT INTO `schedule_job_log` VALUES ('753', '3', 'infTask', 'submit', null, '0', null, '273', '2018-11-30 20:16:04');

-- ----------------------------
-- Table structure for sync_debt
-- ----------------------------
DROP TABLE IF EXISTS `sync_debt`;
CREATE TABLE `sync_debt` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date_created` datetime DEFAULT NULL COMMENT '数据创建时间',
  `dept_id` varchar(20) DEFAULT NULL COMMENT '数据来源id',
  `product_start_time` varchar(40) DEFAULT NULL COMMENT '开标时间',
  `product_reg_type` varchar(40) DEFAULT NULL COMMENT '散标类别',
  `product_name` varchar(256) DEFAULT NULL COMMENT '散标名称',
  `bank_no` varchar(128) DEFAULT NULL COMMENT '存管银行标的编号',
  `source_product_code` varchar(64) DEFAULT NULL COMMENT '原散标编号',
  `user_idcard` varchar(64) DEFAULT NULL COMMENT '借款用户标示 hash',
  `loan_use` varchar(10) DEFAULT NULL COMMENT '借款用途',
  `loan_describe` varchar(2000) DEFAULT NULL COMMENT '借款说明',
  `loan_rate` varchar(32) DEFAULT NULL COMMENT '借款年利率',
  `amount` varchar(32) DEFAULT NULL COMMENT '借款金额',
  `rate` varchar(32) DEFAULT NULL COMMENT '投资年化收益率',
  `term` varchar(5) DEFAULT NULL COMMENT '借款期限',
  `pay_type` varchar(5) DEFAULT NULL COMMENT '还款类型',
  `service_cost` varchar(32) DEFAULT NULL COMMENT '手续费（服务费）',
  `risk_margin` varchar(32) DEFAULT NULL COMMENT '风险保证金',
  `loan_type` varchar(64) DEFAULT NULL COMMENT '借款类型',
  `loan_credit_rating` varchar(10) DEFAULT NULL COMMENT '借款主体信用评级',
  `security_info` varchar(256) DEFAULT NULL COMMENT '担保信息',
  `collateral_desc` varchar(2000) DEFAULT NULL COMMENT '抵押/质押物描述',
  `collateral_info` varchar(64) DEFAULT NULL COMMENT '抵押(质押物)平均处置周期',
  `overdue_limmit` varchar(10) DEFAULT NULL COMMENT '逾期期限',
  `bad_debt_limmit` varchar(10) DEFAULT NULL COMMENT '坏账期限',
  `amount_limmts` varchar(20) DEFAULT NULL COMMENT '最小投资金额',
  `amount_limmtl` varchar(20) DEFAULT NULL COMMENT '最大投资金额',
  `allow_transfer` varchar(10) DEFAULT NULL COMMENT '是否允许债权转让',
  `close_limmit` varchar(10) DEFAULT NULL COMMENT '封闭期',
  `security_type` varchar(50) DEFAULT NULL COMMENT '担保方式',
  `security_company_name` varchar(255) DEFAULT NULL COMMENT '第三方担保机构/保险公司的全称',
  `security_company_idcard` varchar(255) DEFAULT NULL COMMENT '担保机构或保险公司统一社会信用代码',
  `is_financing_assure` int(2) DEFAULT NULL COMMENT '是否具有融资担保业务经营许可证',
  `security_amount` varchar(32) DEFAULT NULL COMMENT '担保金额',
  `project_source` varchar(128) DEFAULT NULL COMMENT '项目来源',
  `source_product_url` varchar(256) DEFAULT NULL COMMENT '原产品链接',
  `status` int(2) DEFAULT '0' COMMENT '0:未同步，1：已同步',
  `sync_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '同步时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COMMENT='散标(标的)数据临时表';

-- ----------------------------
-- Records of sync_debt
-- ----------------------------
INSERT INTO `sync_debt` VALUES ('31', '2018-11-23 15:16:51', null, '2018-11-23 15:16:51', null, null, null, 'AKPHYB3642018112300001', '612423198403040022', '测试', '-1', null, null, null, '24', null, '25479.19', '0', '1', 'A', null, null, null, '1', '180', '0.01', '999999.99', '0', '0', null, null, null, null, null, '测试', 'http://baidu.com', '1', '2018-11-27 15:54:26');

-- ----------------------------
-- Table structure for sync_repayment_plan
-- ----------------------------
DROP TABLE IF EXISTS `sync_repayment_plan`;
CREATE TABLE `sync_repayment_plan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date_created` datetime DEFAULT NULL COMMENT '数据创建时间',
  `dept_id` varchar(20) DEFAULT NULL COMMENT '数据来源id',
  `source_product_code` varchar(64) DEFAULT NULL COMMENT '原散标编号 ',
  `user_idcard` varchar(64) DEFAULT NULL COMMENT '借款用户标 示 hash',
  `total_issue` int(11) DEFAULT NULL COMMENT '总期数',
  `issue` int(11) DEFAULT NULL COMMENT '当前期数 ',
  `replan_id` varchar(128) DEFAULT NULL COMMENT '还款计划编号 ',
  `cur_fund` varchar(40) DEFAULT NULL COMMENT '当期应还本 金（元） ',
  `cur_interest` varchar(40) DEFAULT NULL COMMENT '当期应还利 息（元）',
  `repay_time` varchar(64) DEFAULT NULL COMMENT '当期应还款 时间点 ',
  `status` int(2) DEFAULT '0' COMMENT '0:未同步，1：已同步',
  `sync_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '同步时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='还款计划';

-- ----------------------------
-- Records of sync_repayment_plan
-- ----------------------------
INSERT INTO `sync_repayment_plan` VALUES ('5452', '2018-11-26 00:00:00', '', 'KMPHYB602018032900004', '532323197709101318', '12', '8', 'KMPHYB602018032900004-8', '6066.13', '327.34', '2018-11-25', '1', '2018-11-26 20:07:01');

-- ----------------------------
-- Table structure for sync_status
-- ----------------------------
DROP TABLE IF EXISTS `sync_status`;
CREATE TABLE `sync_status` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date_created` datetime DEFAULT NULL COMMENT '数据创建时间',
  `dept_id` varchar(20) DEFAULT NULL COMMENT '数据来源id',
  `source_product_code` varchar(64) DEFAULT NULL COMMENT '原散标编号',
  `source_financing_code` varchar(64) DEFAULT NULL COMMENT '原产品信息编号',
  `product_status` varchar(20) DEFAULT NULL COMMENT '状态编码',
  `product_status_desc` varchar(20) DEFAULT NULL COMMENT '状态描述',
  `product_date` varchar(40) DEFAULT NULL COMMENT '状态更新时间',
  `status` int(2) DEFAULT '0' COMMENT '0:未同步，1：已同步',
  `sync_time` datetime DEFAULT NULL COMMENT '同步时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='散标状态临时表';

-- ----------------------------
-- Records of sync_status
-- ----------------------------
INSERT INTO `sync_status` VALUES ('3', '2018-11-23 14:55:58', null, 'CD3201704060006', '-1', '3', '测试', '2018-11-23 14:55:58', '1', '2018-11-26 21:05:04');

-- ----------------------------
-- Table structure for sync_take_info
-- ----------------------------
DROP TABLE IF EXISTS `sync_take_info`;
CREATE TABLE `sync_take_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date_created` datetime DEFAULT NULL COMMENT '数据创建时间',
  `dept_id` varchar(20) DEFAULT NULL COMMENT '数据来源id',
  `un_fin_claim_id` varchar(128) DEFAULT NULL COMMENT '承接信息编号 ',
  `transfer_id` varchar(128) DEFAULT NULL COMMENT '转让编号',
  `fin_claim_id` varchar(128) DEFAULT NULL COMMENT '债权信息编号',
  `user_idcard_hash` varchar(64) DEFAULT NULL COMMENT '承接人用户标 示 Hash',
  `take_amount` varchar(20) DEFAULT NULL COMMENT '承接人投资金 额(元) ',
  `take_interest` varchar(20) DEFAULT NULL COMMENT '承接利息金额 (元) ',
  `float_money` varchar(20) DEFAULT NULL COMMENT '承接浮动金额 (元) ',
  `take_rate` varchar(20) DEFAULT NULL COMMENT '承接预期年化 收益率 ',
  `take_time` varchar(32) DEFAULT NULL COMMENT '承接时间  ',
  `redpackage` varchar(20) DEFAULT NULL COMMENT '投资红包 ',
  `lock_time` varchar(32) DEFAULT NULL COMMENT '封闭截止时间 ',
  `status` int(2) DEFAULT '0' COMMENT '0:未同步，1：已同步',
  `sync_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '同步时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='承接信息';

-- ----------------------------
-- Records of sync_take_info
-- ----------------------------
INSERT INTO `sync_take_info` VALUES ('1', '2018-11-24 15:47:15', 'dept_id', 'un_fin_claim_id', 'transfer_id', 'fin_claim_id', 'user_idcard_hash', 'take_amount', 'take_interest', 'float_money', 'take_rate', 'take_time', 'redpackage', 'lock_time', '1', '2018-11-24 15:48:40');

-- ----------------------------
-- Table structure for sync_transaction
-- ----------------------------
DROP TABLE IF EXISTS `sync_transaction`;
CREATE TABLE `sync_transaction` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date_created` datetime DEFAULT NULL COMMENT '数据创建时间',
  `dept_id` varchar(20) DEFAULT NULL COMMENT '数据来源id',
  `trans_time` varchar(80) DEFAULT NULL COMMENT '交易流水时间',
  `trans_id` varchar(128) DEFAULT NULL COMMENT '平台交易流水号',
  `bank_trans_id` varchar(128) DEFAULT NULL COMMENT '存管银行流水编号',
  `source_product_code` varchar(64) DEFAULT NULL COMMENT '原散标编号',
  `source_product_name` varchar(256) DEFAULT NULL COMMENT '原散标名称',
  `source_financing_code` varchar(64) DEFAULT NULL COMMENT '原产品信息编号',
  `source_financing_name` varchar(256) DEFAULT NULL COMMENT '原产品信息名称',
  `fin_claim_id` varchar(128) DEFAULT NULL COMMENT '债权编号',
  `transfer_id` varchar(128) DEFAULT NULL COMMENT '转让项目编号 ',
  `replan_id` varchar(128) DEFAULT NULL COMMENT '还款计划编号',
  `trans_type` varchar(20) DEFAULT NULL COMMENT '交易类型',
  `trans_type_dec` varchar(256) DEFAULT NULL COMMENT '交易类型描述',
  `trans_money` varchar(32) DEFAULT NULL COMMENT '交易金额',
  `trans_date` varchar(20) DEFAULT NULL COMMENT '交易日期',
  `trans_payment` varchar(20) DEFAULT NULL COMMENT '交易方式',
  `user_idcard` varchar(20) DEFAULT NULL COMMENT '用户标示哈希',
  `trans_bank` varchar(128) DEFAULT NULL COMMENT '交易银行（或第三方支付名称）',
  `status` int(2) DEFAULT '0' COMMENT '0:未同步，1：已同步',
  `sync_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '同步时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='交易流水临时表';

-- ----------------------------
-- Records of sync_transaction
-- ----------------------------
INSERT INTO `sync_transaction` VALUES ('1', '2018-11-24 15:53:17', 'dept_id', 'trans_time', 'trans_id', 'bank_trans_id', 'source_product_code', 'source_product_name', 'source_financing_code', 'source_financing_name', 'fin_claim_id', 'transfer_id', 'replan_id', 'trans_type', 'trans_type_dec', 'trans_money', 'trans_date', 'trans_payment', 'user_idcard_hash', 'trans_bank', '1', '2018-11-24 16:52:43');

-- ----------------------------
-- Table structure for sync_transfer
-- ----------------------------
DROP TABLE IF EXISTS `sync_transfer`;
CREATE TABLE `sync_transfer` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date_created` datetime DEFAULT NULL COMMENT '数据创建时间',
  `dept_id` varchar(20) DEFAULT NULL COMMENT '数据来源id',
  `transfer_id` varchar(128) DEFAULT NULL COMMENT '债权转让编号',
  `transfer_start_time` varchar(40) DEFAULT NULL COMMENT '转让开始时间',
  `product_reg_type` varchar(40) DEFAULT NULL COMMENT '散标登记类别',
  `product_name` varchar(128) DEFAULT NULL COMMENT '债权名称【产品名称/散标名称】',
  `pre_transfer_id` varchar(128) DEFAULT NULL COMMENT '上一期债权转让编号',
  `bank_no` varchar(40) DEFAULT NULL COMMENT '存管银行债权编号',
  `source_product_code` varchar(64) DEFAULT NULL COMMENT '原散标编号',
  `source_financing_code` varchar(64) DEFAULT NULL COMMENT '原产品信息编号',
  `transfer_name` varchar(64) DEFAULT NULL COMMENT '转让人身份证哈希',
  `hold_time` varchar(20) DEFAULT NULL COMMENT '原产品期限',
  `overplus_time` varchar(20) DEFAULT NULL COMMENT '债权产品剩余时长',
  `amt` varchar(20) DEFAULT NULL COMMENT '承接人的成交转让金额',
  `pre_amt` varchar(20) DEFAULT NULL COMMENT '转让人的转让原始本金',
  `transfer_rate` varchar(20) DEFAULT NULL COMMENT '转让利率',
  `transfer_fee` varchar(20) DEFAULT NULL COMMENT '转让手续费',
  `remark` varchar(256) DEFAULT NULL COMMENT '备注',
  `source_product_url` varchar(200) DEFAULT NULL COMMENT '原产品链接',
  `assignee_name` varchar(64) DEFAULT NULL COMMENT '承接人用户标示哈希',
  `transfer_transid` varchar(128) DEFAULT NULL COMMENT '转让人原流水transId',
  `assignee_transid` varchar(128) DEFAULT NULL COMMENT '承接人原流水transId',
  `status` int(2) DEFAULT '0' COMMENT '0:未同步，1：已同步',
  `sync_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '同步时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='债权转让临时表';

-- ----------------------------
-- Records of sync_transfer
-- ----------------------------
INSERT INTO `sync_transfer` VALUES ('1', '2018-11-24 16:41:13', 'dept_id', 'transfer_id', 'transfer_start_time', 'product_reg_type', 'product_name', 'pre_transfer_id', 'bank_no', 'source_product_code', 'source_financing_code', 'transfer_name', 'hold_time', 'overplus_time', 'amt', 'pre_amt', 'transfer_rate', 'transfer_fee', 'remark', 'source_product_url', 'assignee_name', 'transfer_transid', 'assignee_transid', '0', '2018-11-24 16:41:13');

-- ----------------------------
-- Table structure for sync_transfer_info
-- ----------------------------
DROP TABLE IF EXISTS `sync_transfer_info`;
CREATE TABLE `sync_transfer_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date_created` datetime DEFAULT NULL COMMENT '数据创建时间',
  `dept_id` varchar(20) DEFAULT NULL COMMENT '数据来源id',
  `fin_claim_id` varchar(128) DEFAULT NULL COMMENT '债权信息编号',
  `source_product_code` varchar(128) DEFAULT NULL COMMENT '原散标编号 ',
  `user_idcard_hash` varchar(64) DEFAULT NULL COMMENT '投资人用户 标示 Hash ',
  `inv_amount` varchar(20) DEFAULT NULL COMMENT '投资人实际支付的投资金 额，单位是元，精确到小 数点后两位 ',
  `inv_rate` varchar(20) DEFAULT NULL COMMENT '投资预期年 化收益率 ',
  `inv_time` varchar(32) DEFAULT NULL COMMENT '投资计息时间 ',
  `redpackage` varchar(20) DEFAULT NULL COMMENT '投资红包',
  `lock_time` varchar(20) DEFAULT NULL COMMENT '封闭截止时间',
  `status` int(2) DEFAULT '0' COMMENT '0:未同步，1：已同步',
  `sync_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '同步时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='债权信息';

-- ----------------------------
-- Records of sync_transfer_info
-- ----------------------------
INSERT INTO `sync_transfer_info` VALUES ('1', '2018-11-24 16:00:37', 'dept_id', 'fin_claim_id', 'source_product_code', 'user_idcard_hash', 'inv_amount', 'inv_rate', 'inv_time', 'redpackage', 'lock_time', '1', '2018-11-24 16:00:56');

-- ----------------------------
-- Table structure for sync_transfer_project
-- ----------------------------
DROP TABLE IF EXISTS `sync_transfer_project`;
CREATE TABLE `sync_transfer_project` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date_created` datetime DEFAULT NULL COMMENT '数据创建时间',
  `dept_id` varchar(20) DEFAULT NULL COMMENT '数据来源id',
  `transfer_id` varchar(128) DEFAULT NULL COMMENT '转让编号',
  `bank_no` varchar(128) DEFAULT NULL COMMENT '存管银行债权 编号 ',
  `from_type` char(1) DEFAULT NULL COMMENT '债权信息编号',
  `fin_claim_id` varchar(64) DEFAULT NULL COMMENT '债权项目编号 或承接项目编 码 ',
  `user_idcard_hash` varchar(64) DEFAULT NULL COMMENT '投资人用户标 示 Hash ',
  `source_product_code` varchar(64) DEFAULT NULL COMMENT '原散标编号',
  `source_financing_code` varchar(64) DEFAULT NULL COMMENT '原产品信息编 号',
  `transfer_amount` varchar(20) DEFAULT NULL COMMENT '计划转让本金 (元) ',
  `transfer_interest` varchar(20) DEFAULT NULL COMMENT '转让利息 ',
  `float_money` varchar(20) DEFAULT NULL COMMENT '浮动金额 ',
  `transfer_date` varchar(32) DEFAULT NULL COMMENT '转让项目发布 的日期 ',
  `source_product_url` varchar(200) DEFAULT NULL COMMENT '转让债权信息 的链接 URL',
  `status` int(2) DEFAULT '0' COMMENT '0:未同步，1：已同步',
  `sync_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '同步时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='转让项目';

-- ----------------------------
-- Records of sync_transfer_project
-- ----------------------------
INSERT INTO `sync_transfer_project` VALUES ('1', '2018-11-24 16:04:47', 'dept_id', 'transfer_id', 'bank_no', '1', 'fin_claim_id', 'user_idcard_hash', 'source_product_code', 'source_financing_code', 'transfer_amount', 'transfer_interest', 'float_money', 'transfer_date', 'source_product_url', '1', '2018-11-24 16:47:10');

-- ----------------------------
-- Table structure for sync_transfer_status
-- ----------------------------
DROP TABLE IF EXISTS `sync_transfer_status`;
CREATE TABLE `sync_transfer_status` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date_created` datetime DEFAULT NULL,
  `dept_id` varchar(20) DEFAULT NULL,
  `transfer_id` varchar(128) DEFAULT NULL COMMENT '转让项目编号',
  `transfer_status` varchar(20) DEFAULT NULL COMMENT '状态编码 ',
  `amount` varchar(20) DEFAULT NULL COMMENT '成功转让本金 金额(元) ',
  `interest` varchar(20) DEFAULT NULL COMMENT '成功转让利息 金额 (元) ',
  `float_money` varchar(20) DEFAULT NULL COMMENT '成功转让浮动金额 (元) ',
  `product_date` varchar(40) DEFAULT NULL COMMENT '状态更新时间',
  `status` int(2) DEFAULT '0' COMMENT '0:未同步，1：已同步',
  `sync_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '同步时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='转让状态';

-- ----------------------------
-- Records of sync_transfer_status
-- ----------------------------
INSERT INTO `sync_transfer_status` VALUES ('1', '2018-11-24 16:08:15', 'dept_id', 'transfer_id', 'transfer_status', 'amount', 'interest', 'float_money', 'product_date', '1', '2018-11-24 16:47:10');

-- ----------------------------
-- Table structure for sync_user
-- ----------------------------
DROP TABLE IF EXISTS `sync_user`;
CREATE TABLE `sync_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date_created` datetime DEFAULT NULL COMMENT '数据创建时间',
  `dept_id` varchar(20) DEFAULT NULL COMMENT '数据来源id',
  `user_create_time` varchar(40) DEFAULT NULL COMMENT '用户注册时间',
  `user_status` varchar(64) DEFAULT NULL COMMENT '用户状态编码',
  `user_type` varchar(20) DEFAULT NULL COMMENT '用户类型',
  `user_attr` varchar(20) DEFAULT NULL COMMENT '用户属性',
  `user_name` varchar(256) DEFAULT NULL COMMENT '用户姓名/名称',
  `countries` varchar(20) DEFAULT NULL COMMENT '国别',
  `card_type` varchar(20) DEFAULT NULL COMMENT '证件类型',
  `user_idcard` varchar(64) DEFAULT NULL COMMENT '用户标识',
  `user_idcard_hash` varchar(64) DEFAULT NULL COMMENT '用户标示哈希',
  `user_phone` varchar(64) DEFAULT NULL COMMENT '用户联系手机',
  `user_lawperson` varchar(64) DEFAULT NULL COMMENT '法人代表',
  `user_fund` varchar(20) DEFAULT NULL COMMENT '注册资金',
  `user_province` varchar(20) DEFAULT NULL COMMENT '注册省份',
  `user_address` varchar(256) DEFAULT NULL COMMENT '注册地址',
  `register_date` varchar(30) DEFAULT NULL COMMENT '企业注册时间',
  `user_mail` varchar(128) DEFAULT NULL COMMENT '注册人邮箱',
  `user_ascription` varchar(6) DEFAULT NULL COMMENT '用户所属地',
  `user_age` varchar(3) DEFAULT NULL COMMENT '用户年龄',
  `user_sex` varchar(1) DEFAULT NULL COMMENT '用户性别',
  `phone_ascription` varchar(6) DEFAULT NULL COMMENT '手机归属地',
  `risk_rating` char(1) DEFAULT NULL COMMENT '风险评级',
  `user_pay` varchar(80) DEFAULT NULL COMMENT '用户的第三方支付平台名称 ／用户的存管银行名称',
  `user_pay_account` varchar(40) DEFAULT NULL COMMENT '用户的第三方支付账号 ／用户的存管银行账号',
  `user_bank` varchar(40) DEFAULT NULL COMMENT '用户关联银行',
  `user_bank_account` varchar(40) DEFAULT NULL COMMENT '用户关联银行账号',
  `status` int(2) DEFAULT '0' COMMENT '0:未同步，1：已同步',
  `sync_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '同步时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='用户信息临时表';

-- ----------------------------
-- Records of sync_user
-- ----------------------------
INSERT INTO `sync_user` VALUES ('2', '2018-11-23 15:55:20', null, '2016-07-15 11:34:32', '1', '1', '1', '王大万', '1', '1', '11010619920830061X', '', '13910435990', '-1', '-1', '-1', '-1', '-1', '13910435990@139.com', null, null, null, null, null, null, null, null, null, '1', '2018-11-26 21:18:14');

-- ----------------------------
-- Table structure for sync_user_account
-- ----------------------------
DROP TABLE IF EXISTS `sync_user_account`;
CREATE TABLE `sync_user_account` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date_created` datetime DEFAULT NULL COMMENT '数据创建时间',
  `dept_id` varchar(20) DEFAULT NULL COMMENT '数据来源id',
  `user_name` varchar(256) DEFAULT NULL COMMENT '用户姓名/名称',
  `user_idcard` varchar(64) DEFAULT NULL COMMENT '用户标识',
  `user_phone` varchar(64) DEFAULT NULL COMMENT '用户联系手机',
  `user_pay` varchar(80) DEFAULT NULL COMMENT '用户的第三方支付平台名称 ／用户的存管银行名称',
  `user_pay_account` varchar(40) DEFAULT NULL COMMENT '用户的第三方支付账号 ／用户的存管银行账号',
  `user_bank` varchar(40) DEFAULT NULL COMMENT '用户关联银行',
  `user_bank_account` varchar(40) DEFAULT NULL COMMENT '用户关联银行账号',
  `status` int(2) DEFAULT '0' COMMENT '0:未同步，1：已同步',
  `sync_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '同步时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='用户账号临时表';

-- ----------------------------
-- Records of sync_user_account
-- ----------------------------
INSERT INTO `sync_user_account` VALUES ('2', '2018-11-23 15:55:20', null, '王大万', '11010619920830061X', '13910435990', '西安银行', '888888404014839111', '中国银行', '621485*****82132', '1', '2018-11-26 21:18:14');

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `param_key` varchar(50) DEFAULT NULL COMMENT 'key',
  `param_value` varchar(2000) DEFAULT NULL COMMENT 'value',
  `status` tinyint(4) DEFAULT '1' COMMENT '状态   0：隐藏   1：显示',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`),
  UNIQUE KEY `param_key` (`param_key`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='系统配置信息表';

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES ('1', 'CLOUD_STORAGE_CONFIG_KEY', '{\"aliyunAccessKeyId\":\"\",\"aliyunAccessKeySecret\":\"\",\"aliyunBucketName\":\"\",\"aliyunDomain\":\"\",\"aliyunEndPoint\":\"\",\"aliyunPrefix\":\"\",\"qcloudBucketName\":\"\",\"qcloudDomain\":\"\",\"qcloudPrefix\":\"\",\"qcloudSecretId\":\"\",\"qcloudSecretKey\":\"\",\"qiniuAccessKey\":\"NrgMfABZxWLo5B-YYSjoE8-AZ1EISdi1Z3ubLOeZ\",\"qiniuBucketName\":\"ios-app\",\"qiniuDomain\":\"http://7xqbwh.dl1.z0.glb.clouddn.com\",\"qiniuPrefix\":\"upload\",\"qiniuSecretKey\":\"uIwJHevMRWU0VLxFvgy0tAcOdGqasdtVlJkdy6vV\",\"type\":1}', '0', '云存储配置信息');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept` (
  `dept_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) DEFAULT NULL COMMENT '上级部门ID，一级部门为0',
  `name` varchar(50) DEFAULT NULL COMMENT '部门名称',
  `order_num` int(11) DEFAULT NULL COMMENT '排序',
  `del_flag` tinyint(4) DEFAULT '0' COMMENT '是否删除  -1：已删除  0：正常',
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='部门管理';

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES ('1', '0', '东方银谷总部', '0', '0');
INSERT INTO `sys_dept` VALUES ('2', '1', '长沙分公司', '1', '0');
INSERT INTO `sys_dept` VALUES ('3', '1', '上海分公司', '2', '0');
INSERT INTO `sys_dept` VALUES ('4', '3', '技术部', '0', '0');
INSERT INTO `sys_dept` VALUES ('5', '3', '销售部', '1', '0');

-- ----------------------------
-- Table structure for sys_dict
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict`;
CREATE TABLE `sys_dict` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL COMMENT '字典名称',
  `type` varchar(100) NOT NULL COMMENT '字典类型',
  `code` varchar(100) NOT NULL COMMENT '字典码',
  `value` varchar(1000) NOT NULL COMMENT '字典值',
  `order_num` int(11) DEFAULT '0' COMMENT '排序',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `del_flag` tinyint(4) DEFAULT '0' COMMENT '删除标记  -1：已删除  0：正常',
  PRIMARY KEY (`id`),
  UNIQUE KEY `type` (`type`,`code`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='数据字典表';

-- ----------------------------
-- Records of sys_dict
-- ----------------------------
INSERT INTO `sys_dict` VALUES ('1', '性别', 'sex', '0', '女', '0', null, '0');
INSERT INTO `sys_dict` VALUES ('2', '性别', 'sex', '1', '男', '1', null, '0');
INSERT INTO `sys_dict` VALUES ('3', '性别', 'sex', '2', '未知', '3', null, '0');

-- ----------------------------
-- Table structure for sys_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL COMMENT '用户名',
  `operation` varchar(50) DEFAULT NULL COMMENT '用户操作',
  `method` varchar(200) DEFAULT NULL COMMENT '请求方法',
  `params` varchar(5000) DEFAULT NULL COMMENT '请求参数',
  `time` bigint(20) NOT NULL COMMENT '执行时长(毫秒)',
  `ip` varchar(64) DEFAULT NULL COMMENT 'IP地址',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=188 DEFAULT CHARSET=utf8 COMMENT='系统日志';

-- ----------------------------
-- Records of sys_log
-- ----------------------------
INSERT INTO `sys_log` VALUES ('1', 'admin', '保存菜单', 'com.yingu.modules.sys.controller.SysMenuController.save()', '{\"menuId\":96,\"parentId\":0,\"parentName\":\"一级菜单\",\"name\":\"金融局报送临时数据管理\",\"type\":0,\"icon\":\"fa fa-print\",\"orderNum\":1}', '93', '127.0.0.1', '2018-11-06 14:04:32');
INSERT INTO `sys_log` VALUES ('2', 'admin', '修改菜单', 'com.yingu.modules.sys.controller.SysMenuController.update()', '{\"menuId\":41,\"parentId\":96,\"parentName\":\"金融局报送临时数据管理\",\"name\":\"散标(标的)数据临时表\",\"url\":\"modules/sync/debt.html\",\"type\":1,\"icon\":\"fa fa-file-code-o\",\"orderNum\":6}', '92', '127.0.0.1', '2018-11-06 14:05:13');
INSERT INTO `sys_log` VALUES ('3', 'admin', '修改菜单', 'com.yingu.modules.sys.controller.SysMenuController.update()', '{\"menuId\":91,\"parentId\":96,\"parentName\":\"金融局报送临时数据管理\",\"name\":\"用户账号临时表\",\"url\":\"modules/sync/useraccount.html\",\"type\":1,\"icon\":\"fa fa-file-code-o\",\"orderNum\":6}', '70', '127.0.0.1', '2018-11-06 14:05:36');
INSERT INTO `sys_log` VALUES ('4', 'admin', '修改菜单', 'com.yingu.modules.sys.controller.SysMenuController.update()', '{\"menuId\":86,\"parentId\":96,\"parentName\":\"金融局报送临时数据管理\",\"name\":\"用户信息临时表\",\"url\":\"modules/sync/user.html\",\"type\":1,\"icon\":\"fa fa-file-code-o\",\"orderNum\":6}', '86', '127.0.0.1', '2018-11-06 14:05:52');
INSERT INTO `sys_log` VALUES ('5', 'admin', '修改菜单', 'com.yingu.modules.sys.controller.SysMenuController.update()', '{\"menuId\":81,\"parentId\":96,\"parentName\":\"金融局报送临时数据管理\",\"name\":\"转让状态\",\"url\":\"modules/sync/transferstatus.html\",\"type\":1,\"icon\":\"fa fa-file-code-o\",\"orderNum\":6}', '122', '127.0.0.1', '2018-11-06 14:06:27');
INSERT INTO `sys_log` VALUES ('6', 'admin', '修改菜单', 'com.yingu.modules.sys.controller.SysMenuController.update()', '{\"menuId\":76,\"parentId\":96,\"parentName\":\"金融局报送临时数据管理\",\"name\":\"转让项目\",\"url\":\"modules/sync/transferproject.html\",\"type\":1,\"icon\":\"fa fa-file-code-o\",\"orderNum\":6}', '66', '127.0.0.1', '2018-11-06 14:06:39');
INSERT INTO `sys_log` VALUES ('7', 'admin', '修改菜单', 'com.yingu.modules.sys.controller.SysMenuController.update()', '{\"menuId\":66,\"parentId\":96,\"parentName\":\"金融局报送临时数据管理\",\"name\":\"债权转让临时表\",\"url\":\"modules/sync/transfer.html\",\"type\":1,\"icon\":\"fa fa-file-code-o\",\"orderNum\":6}', '60', '127.0.0.1', '2018-11-06 14:06:54');
INSERT INTO `sys_log` VALUES ('8', 'admin', '修改菜单', 'com.yingu.modules.sys.controller.SysMenuController.update()', '{\"menuId\":71,\"parentId\":96,\"parentName\":\"金融局报送临时数据管理\",\"name\":\"债权信息\",\"url\":\"modules/sync/transferinfo.html\",\"type\":1,\"icon\":\"fa fa-file-code-o\",\"orderNum\":6}', '54', '127.0.0.1', '2018-11-06 14:07:18');
INSERT INTO `sys_log` VALUES ('9', 'admin', '修改菜单', 'com.yingu.modules.sys.controller.SysMenuController.update()', '{\"menuId\":61,\"parentId\":96,\"parentName\":\"金融局报送临时数据管理\",\"name\":\"交易流水临时表\",\"url\":\"modules/sync/transaction.html\",\"type\":1,\"icon\":\"fa fa-file-code-o\",\"orderNum\":6}', '53', '127.0.0.1', '2018-11-06 14:07:34');
INSERT INTO `sys_log` VALUES ('10', 'admin', '修改菜单', 'com.yingu.modules.sys.controller.SysMenuController.update()', '{\"menuId\":46,\"parentId\":96,\"parentName\":\"金融局报送临时数据管理\",\"name\":\"还款计划\",\"url\":\"modules/sync/repaymentplan.html\",\"type\":1,\"icon\":\"fa fa-file-code-o\",\"orderNum\":6}', '155', '127.0.0.1', '2018-11-06 14:07:50');
INSERT INTO `sys_log` VALUES ('11', 'admin', '修改菜单', 'com.yingu.modules.sys.controller.SysMenuController.update()', '{\"menuId\":51,\"parentId\":96,\"parentName\":\"金融局报送临时数据管理\",\"name\":\"散标状态临时表\",\"url\":\"modules/sync/status.html\",\"type\":1,\"icon\":\"fa fa-file-code-o\",\"orderNum\":6}', '72', '127.0.0.1', '2018-11-06 14:08:02');
INSERT INTO `sys_log` VALUES ('12', 'admin', '修改菜单', 'com.yingu.modules.sys.controller.SysMenuController.update()', '{\"menuId\":56,\"parentId\":96,\"parentName\":\"金融局报送临时数据管理\",\"name\":\"承接信息\",\"url\":\"modules/sync/takeinfo.html\",\"type\":1,\"icon\":\"fa fa-file-code-o\",\"orderNum\":6}', '79', '127.0.0.1', '2018-11-06 14:08:22');
INSERT INTO `sys_log` VALUES ('13', 'admin', '修改菜单', 'com.yingu.modules.sys.controller.SysMenuController.update()', '{\"menuId\":1,\"parentId\":0,\"parentName\":\"一级菜单\",\"name\":\"系统管理\",\"type\":0,\"icon\":\"fa fa-cog\",\"orderNum\":99}', '52', '127.0.0.1', '2018-11-06 14:09:45');
INSERT INTO `sys_log` VALUES ('14', 'admin', '保存菜单', 'com.yingu.modules.sys.controller.SysMenuController.save()', '{\"menuId\":147,\"parentId\":0,\"parentName\":\"一级菜单\",\"name\":\"金融局报送数据管理\",\"type\":0,\"icon\":\"fa fa-star-half-o\",\"orderNum\":2}', '94', '127.0.0.1', '2018-11-06 16:05:38');
INSERT INTO `sys_log` VALUES ('15', 'admin', '修改菜单', 'com.yingu.modules.sys.controller.SysMenuController.update()', '{\"menuId\":97,\"parentId\":147,\"parentName\":\"金融局报送数据管理\",\"name\":\"散标(标的)数据表\",\"url\":\"modules/inf/infdebt.html\",\"type\":1,\"icon\":\"fa fa-file-code-o\",\"orderNum\":6}', '65', '127.0.0.1', '2018-11-06 16:05:59');
INSERT INTO `sys_log` VALUES ('16', 'admin', '修改菜单', 'com.yingu.modules.sys.controller.SysMenuController.update()', '{\"menuId\":102,\"parentId\":147,\"parentName\":\"金融局报送数据管理\",\"name\":\"散标状态表\",\"url\":\"modules/inf/infdebtstatus.html\",\"type\":1,\"icon\":\"fa fa-file-code-o\",\"orderNum\":6}', '65', '127.0.0.1', '2018-11-06 16:06:15');
INSERT INTO `sys_log` VALUES ('17', 'admin', '修改菜单', 'com.yingu.modules.sys.controller.SysMenuController.update()', '{\"menuId\":127,\"parentId\":147,\"parentName\":\"金融局报送数据管理\",\"name\":\"转让项目\",\"url\":\"modules/inf/inftransferproject.html\",\"type\":1,\"icon\":\"fa fa-file-code-o\",\"orderNum\":6}', '59', '127.0.0.1', '2018-11-06 16:15:00');
INSERT INTO `sys_log` VALUES ('18', 'admin', '修改菜单', 'com.yingu.modules.sys.controller.SysMenuController.update()', '{\"menuId\":107,\"parentId\":147,\"parentName\":\"金融局报送数据管理\",\"name\":\"还款计划\",\"url\":\"modules/inf/infrepaymentplan.html\",\"type\":1,\"icon\":\"fa fa-file-code-o\",\"orderNum\":6}', '65', '127.0.0.1', '2018-11-06 16:15:16');
INSERT INTO `sys_log` VALUES ('19', 'admin', '修改菜单', 'com.yingu.modules.sys.controller.SysMenuController.update()', '{\"menuId\":142,\"parentId\":147,\"parentName\":\"金融局报送数据管理\",\"name\":\"用户账号表\",\"url\":\"modules/inf/infuseraccount.html\",\"type\":1,\"icon\":\"fa fa-file-code-o\",\"orderNum\":6}', '63', '127.0.0.1', '2018-11-06 16:15:31');
INSERT INTO `sys_log` VALUES ('20', 'admin', '修改菜单', 'com.yingu.modules.sys.controller.SysMenuController.update()', '{\"menuId\":122,\"parentId\":147,\"parentName\":\"金融局报送数据管理\",\"name\":\"债权信息\",\"url\":\"modules/inf/inftransferinfo.html\",\"type\":1,\"icon\":\"fa fa-file-code-o\",\"orderNum\":6}', '76', '127.0.0.1', '2018-11-06 16:15:46');
INSERT INTO `sys_log` VALUES ('21', 'admin', '修改菜单', 'com.yingu.modules.sys.controller.SysMenuController.update()', '{\"menuId\":137,\"parentId\":147,\"parentName\":\"金融局报送数据管理\",\"name\":\"用户信息表\",\"url\":\"modules/inf/infuser.html\",\"type\":1,\"icon\":\"fa fa-file-code-o\",\"orderNum\":6}', '80', '127.0.0.1', '2018-11-06 16:16:08');
INSERT INTO `sys_log` VALUES ('22', 'admin', '修改菜单', 'com.yingu.modules.sys.controller.SysMenuController.update()', '{\"menuId\":132,\"parentId\":147,\"parentName\":\"金融局报送数据管理\",\"name\":\"转让状态\",\"url\":\"modules/inf/inftransferstatus.html\",\"type\":1,\"icon\":\"fa fa-file-code-o\",\"orderNum\":6}', '72', '127.0.0.1', '2018-11-06 16:16:33');
INSERT INTO `sys_log` VALUES ('23', 'admin', '修改菜单', 'com.yingu.modules.sys.controller.SysMenuController.update()', '{\"menuId\":117,\"parentId\":147,\"parentName\":\"金融局报送数据管理\",\"name\":\"交易流水表\",\"url\":\"modules/inf/inftransaction.html\",\"type\":1,\"icon\":\"fa fa-file-code-o\",\"orderNum\":6}', '65', '127.0.0.1', '2018-11-06 16:16:54');
INSERT INTO `sys_log` VALUES ('24', 'admin', '修改菜单', 'com.yingu.modules.sys.controller.SysMenuController.update()', '{\"menuId\":112,\"parentId\":147,\"parentName\":\"金融局报送数据管理\",\"name\":\"承接信息\",\"url\":\"modules/inf/inftakeinfo.html\",\"type\":1,\"icon\":\"fa fa-file-code-o\",\"orderNum\":6}', '66', '127.0.0.1', '2018-11-06 16:17:14');
INSERT INTO `sys_log` VALUES ('25', 'admin', '保存定时任务', 'com.yingu.modules.job.controller.ScheduleJobController.save()', '{\"jobId\":3,\"beanName\":\"infTask\",\"methodName\":\"submit\",\"cronExpression\":\"0 */10 * * * ?\",\"status\":0,\"remark\":\"10分钟推送一次\",\"createTime\":\"Nov 13, 2018 6:36:26 PM\"}', '148', '0:0:0:0:0:0:0:1', '2018-11-13 18:36:27');
INSERT INTO `sys_log` VALUES ('26', 'admin', '修改定时任务', 'com.yingu.modules.job.controller.ScheduleJobController.update()', '{\"jobId\":3,\"beanName\":\"infTask\",\"methodName\":\"submit\",\"cronExpression\":\"0 */1 * * * ?\",\"status\":0,\"remark\":\"10分钟推送一次\",\"createTime\":\"Nov 13, 2018 6:36:27 PM\"}', '134', '0:0:0:0:0:0:0:1', '2018-11-13 18:46:47');
INSERT INTO `sys_log` VALUES ('27', 'admin', '修改定时任务', 'com.yingu.modules.job.controller.ScheduleJobController.update()', '{\"jobId\":3,\"beanName\":\"infTask\",\"methodName\":\"submit\",\"cronExpression\":\"0 */10 * * * ?\",\"status\":0,\"remark\":\"10分钟推送一次\",\"createTime\":\"Nov 13, 2018 6:36:27 PM\"}', '183', '0:0:0:0:0:0:0:1', '2018-11-14 09:13:46');
INSERT INTO `sys_log` VALUES ('28', 'admin', '恢复定时任务', 'com.yingu.modules.job.controller.ScheduleJobController.resume()', '[3]', '21', '0:0:0:0:0:0:0:1', '2018-11-14 10:39:10');
INSERT INTO `sys_log` VALUES ('29', 'admin', '立即执行任务', 'com.yingu.modules.job.controller.ScheduleJobController.run()', '[3]', '38', '0:0:0:0:0:0:0:1', '2018-11-14 16:08:27');
INSERT INTO `sys_log` VALUES ('30', 'admin', '立即执行任务', 'com.yingu.modules.job.controller.ScheduleJobController.run()', '[3]', '16', '0:0:0:0:0:0:0:1', '2018-11-14 16:57:49');
INSERT INTO `sys_log` VALUES ('31', 'admin', '立即执行任务', 'com.yingu.modules.job.controller.ScheduleJobController.run()', '[3]', '16', '0:0:0:0:0:0:0:1', '2018-11-14 17:16:41');
INSERT INTO `sys_log` VALUES ('32', 'admin', '立即执行任务', 'com.yingu.modules.job.controller.ScheduleJobController.run()', '[3]', '18', '0:0:0:0:0:0:0:1', '2018-11-14 17:34:17');
INSERT INTO `sys_log` VALUES ('33', 'admin', '立即执行任务', 'com.yingu.modules.job.controller.ScheduleJobController.run()', '[3]', '18', '0:0:0:0:0:0:0:1', '2018-11-14 17:46:37');
INSERT INTO `sys_log` VALUES ('34', 'admin', '立即执行任务', 'com.yingu.modules.job.controller.ScheduleJobController.run()', '[3]', '16', '0:0:0:0:0:0:0:1', '2018-11-14 17:48:46');
INSERT INTO `sys_log` VALUES ('35', 'admin', '立即执行任务', 'com.yingu.modules.job.controller.ScheduleJobController.run()', '[3]', '18', '0:0:0:0:0:0:0:1', '2018-11-14 18:04:47');
INSERT INTO `sys_log` VALUES ('36', 'admin', '立即执行任务', 'com.yingu.modules.job.controller.ScheduleJobController.run()', '[3]', '16', '0:0:0:0:0:0:0:1', '2018-11-14 18:18:04');
INSERT INTO `sys_log` VALUES ('37', 'admin', '立即执行任务', 'com.yingu.modules.job.controller.ScheduleJobController.run()', '[3]', '18', '0:0:0:0:0:0:0:1', '2018-11-14 18:55:36');
INSERT INTO `sys_log` VALUES ('38', 'admin', '立即执行任务', 'com.yingu.modules.job.controller.ScheduleJobController.run()', '[3]', '160', '0:0:0:0:0:0:0:1', '2018-11-15 14:55:46');
INSERT INTO `sys_log` VALUES ('39', 'admin', '立即执行任务', 'com.yingu.modules.job.controller.ScheduleJobController.run()', '[3]', '19', '0:0:0:0:0:0:0:1', '2018-11-15 15:02:07');
INSERT INTO `sys_log` VALUES ('40', 'admin', '立即执行任务', 'com.yingu.modules.job.controller.ScheduleJobController.run()', '[3]', '17', '0:0:0:0:0:0:0:1', '2018-11-15 15:34:50');
INSERT INTO `sys_log` VALUES ('41', 'admin', '保存定时任务', 'com.yingu.modules.job.controller.ScheduleJobController.save()', '{\"jobId\":4,\"beanName\":\"submissionTask\",\"methodName\":\"调度\",\"cronExpression\":\"0 0 4 * * ?\",\"status\":0,\"createTime\":\"Nov 16, 2018 4:48:21 PM\"}', '103', '127.0.0.1', '2018-11-16 16:48:21');
INSERT INTO `sys_log` VALUES ('42', 'admin', '暂停定时任务', 'com.yingu.modules.job.controller.ScheduleJobController.pause()', '[4]', '62', '127.0.0.1', '2018-11-16 16:48:39');
INSERT INTO `sys_log` VALUES ('43', 'admin', '修改定时任务', 'com.yingu.modules.job.controller.ScheduleJobController.update()', '{\"jobId\":4,\"beanName\":\"submissionTask\",\"methodName\":\"submission\",\"cronExpression\":\"0 0 4 * * ?\",\"status\":1,\"remark\":\"测试\",\"createTime\":\"Nov 16, 2018 4:48:21 PM\"}', '112', '127.0.0.1', '2018-11-16 16:49:06');
INSERT INTO `sys_log` VALUES ('44', 'admin', '立即执行任务', 'com.yingu.modules.job.controller.ScheduleJobController.run()', '[4]', '24', '127.0.0.1', '2018-11-16 16:49:22');
INSERT INTO `sys_log` VALUES ('45', 'admin', '暂停定时任务', 'com.yingu.modules.job.controller.ScheduleJobController.pause()', '[3]', '71', '127.0.0.1', '2018-11-16 16:50:33');
INSERT INTO `sys_log` VALUES ('46', 'admin', '立即执行任务', 'com.yingu.modules.job.controller.ScheduleJobController.run()', '[4]', '49', '127.0.0.1', '2018-11-16 16:54:46');
INSERT INTO `sys_log` VALUES ('47', 'admin', '立即执行任务', 'com.yingu.modules.job.controller.ScheduleJobController.run()', '[4]', '51', '127.0.0.1', '2018-11-16 17:04:17');
INSERT INTO `sys_log` VALUES ('48', 'admin', '立即执行任务', 'com.yingu.modules.job.controller.ScheduleJobController.run()', '[4]', '53', '127.0.0.1', '2018-11-16 17:07:29');
INSERT INTO `sys_log` VALUES ('49', 'admin', '立即执行任务', 'com.yingu.modules.job.controller.ScheduleJobController.run()', '[3]', '22', '0:0:0:0:0:0:0:1', '2018-11-22 15:22:29');
INSERT INTO `sys_log` VALUES ('50', 'admin', '立即执行任务', 'com.yingu.modules.job.controller.ScheduleJobController.run()', '[3]', '12', '0:0:0:0:0:0:0:1', '2018-11-22 15:24:26');
INSERT INTO `sys_log` VALUES ('51', 'admin', '立即执行任务', 'com.yingu.modules.job.controller.ScheduleJobController.run()', '[3]', '21', '0:0:0:0:0:0:0:1', '2018-11-22 15:41:30');
INSERT INTO `sys_log` VALUES ('52', 'admin', '立即执行任务', 'com.yingu.modules.job.controller.ScheduleJobController.run()', '[3]', '18', '0:0:0:0:0:0:0:1', '2018-11-22 15:45:42');
INSERT INTO `sys_log` VALUES ('53', 'admin', '立即执行任务', 'com.yingu.modules.job.controller.ScheduleJobController.run()', '[3]', '738', '0:0:0:0:0:0:0:1', '2018-11-22 15:45:51');
INSERT INTO `sys_log` VALUES ('54', 'admin', '立即执行任务', 'com.yingu.modules.job.controller.ScheduleJobController.run()', '[3]', '816', '0:0:0:0:0:0:0:1', '2018-11-22 15:45:52');
INSERT INTO `sys_log` VALUES ('55', 'admin', '立即执行任务', 'com.yingu.modules.job.controller.ScheduleJobController.run()', '[3]', '17', '0:0:0:0:0:0:0:1', '2018-11-22 15:48:26');
INSERT INTO `sys_log` VALUES ('56', 'admin', '立即执行任务', 'com.yingu.modules.job.controller.ScheduleJobController.run()', '[3]', '17', '0:0:0:0:0:0:0:1', '2018-11-22 16:26:21');
INSERT INTO `sys_log` VALUES ('57', 'admin', '立即执行任务', 'com.yingu.modules.job.controller.ScheduleJobController.run()', '[3]', '18', '0:0:0:0:0:0:0:1', '2018-11-23 15:26:28');
INSERT INTO `sys_log` VALUES ('58', 'admin', '立即执行任务', 'com.yingu.modules.job.controller.ScheduleJobController.run()', '[3]', '17', '0:0:0:0:0:0:0:1', '2018-11-23 15:45:49');
INSERT INTO `sys_log` VALUES ('59', 'admin', '立即执行任务', 'com.yingu.modules.job.controller.ScheduleJobController.run()', '[3]', '18', '0:0:0:0:0:0:0:1', '2018-11-23 15:50:09');
INSERT INTO `sys_log` VALUES ('60', 'admin', '立即执行任务', 'com.yingu.modules.job.controller.ScheduleJobController.run()', '[3]', '18', '0:0:0:0:0:0:0:1', '2018-11-23 15:56:40');
INSERT INTO `sys_log` VALUES ('61', 'admin', '立即执行任务', 'com.yingu.modules.job.controller.ScheduleJobController.run()', '[3]', '17', '0:0:0:0:0:0:0:1', '2018-11-23 15:59:38');
INSERT INTO `sys_log` VALUES ('62', 'admin', '立即执行任务', 'com.yingu.modules.job.controller.ScheduleJobController.run()', '[3]', '11', '0:0:0:0:0:0:0:1', '2018-11-23 15:59:53');
INSERT INTO `sys_log` VALUES ('63', 'admin', '立即执行任务', 'com.yingu.modules.job.controller.ScheduleJobController.run()', '[3]', '20', '0:0:0:0:0:0:0:1', '2018-11-23 16:09:19');
INSERT INTO `sys_log` VALUES ('64', 'admin', '立即执行任务', 'com.yingu.modules.job.controller.ScheduleJobController.run()', '[3]', '20', '0:0:0:0:0:0:0:1', '2018-11-23 17:32:50');
INSERT INTO `sys_log` VALUES ('65', 'admin', '立即执行任务', 'com.yingu.modules.job.controller.ScheduleJobController.run()', '[3]', '18', '0:0:0:0:0:0:0:1', '2018-11-23 18:03:39');
INSERT INTO `sys_log` VALUES ('66', 'admin', '立即执行任务', 'com.yingu.modules.job.controller.ScheduleJobController.run()', '[3]', '20', '0:0:0:0:0:0:0:1', '2018-11-23 18:12:20');
INSERT INTO `sys_log` VALUES ('67', 'admin', '立即执行任务', 'com.yingu.modules.job.controller.ScheduleJobController.run()', '[3]', '9', '0:0:0:0:0:0:0:1', '2018-11-23 18:13:57');
INSERT INTO `sys_log` VALUES ('68', 'admin', '立即执行任务', 'com.yingu.modules.job.controller.ScheduleJobController.run()', '[3]', '7', '0:0:0:0:0:0:0:1', '2018-11-23 18:14:13');
INSERT INTO `sys_log` VALUES ('69', 'admin', '立即执行任务', 'com.yingu.modules.job.controller.ScheduleJobController.run()', '[3]', '7', '0:0:0:0:0:0:0:1', '2018-11-23 18:14:29');
INSERT INTO `sys_log` VALUES ('70', 'admin', '立即执行任务', 'com.yingu.modules.job.controller.ScheduleJobController.run()', '[3]', '6', '0:0:0:0:0:0:0:1', '2018-11-23 18:14:40');
INSERT INTO `sys_log` VALUES ('71', 'admin', '立即执行任务', 'com.yingu.modules.job.controller.ScheduleJobController.run()', '[3]', '21', '0:0:0:0:0:0:0:1', '2018-11-23 18:15:39');
INSERT INTO `sys_log` VALUES ('72', 'admin', '立即执行任务', 'com.yingu.modules.job.controller.ScheduleJobController.run()', '[3]', '8', '0:0:0:0:0:0:0:1', '2018-11-23 18:16:49');
INSERT INTO `sys_log` VALUES ('73', 'admin', '立即执行任务', 'com.yingu.modules.job.controller.ScheduleJobController.run()', '[3]', '20', '0:0:0:0:0:0:0:1', '2018-11-23 18:18:44');
INSERT INTO `sys_log` VALUES ('74', 'admin', '立即执行任务', 'com.yingu.modules.job.controller.ScheduleJobController.run()', '[3]', '9', '0:0:0:0:0:0:0:1', '2018-11-23 18:25:17');
INSERT INTO `sys_log` VALUES ('75', 'admin', '立即执行任务', 'com.yingu.modules.job.controller.ScheduleJobController.run()', '[3]', '21', '0:0:0:0:0:0:0:1', '2018-11-23 18:49:47');
INSERT INTO `sys_log` VALUES ('76', 'admin', '立即执行任务', 'com.yingu.modules.job.controller.ScheduleJobController.run()', '[3]', '21', '0:0:0:0:0:0:0:1', '2018-11-23 20:16:17');
INSERT INTO `sys_log` VALUES ('77', 'admin', '立即执行任务', 'com.yingu.modules.job.controller.ScheduleJobController.run()', '[3]', '9', '0:0:0:0:0:0:0:1', '2018-11-23 20:32:58');
INSERT INTO `sys_log` VALUES ('78', 'admin', '立即执行任务', 'com.yingu.modules.job.controller.ScheduleJobController.run()', '[3]', '20', '0:0:0:0:0:0:0:1', '2018-11-23 20:42:22');
INSERT INTO `sys_log` VALUES ('79', 'admin', '立即执行任务', 'com.yingu.modules.job.controller.ScheduleJobController.run()', '[3]', '18', '0:0:0:0:0:0:0:1', '2018-11-23 20:48:42');
INSERT INTO `sys_log` VALUES ('80', 'admin', '立即执行任务', 'com.yingu.modules.job.controller.ScheduleJobController.run()', '[3]', '19', '0:0:0:0:0:0:0:1', '2018-11-23 21:07:41');
INSERT INTO `sys_log` VALUES ('81', 'admin', '立即执行任务', 'com.yingu.modules.job.controller.ScheduleJobController.run()', '[3]', '17', '0:0:0:0:0:0:0:1', '2018-11-24 10:13:49');
INSERT INTO `sys_log` VALUES ('82', 'admin', '立即执行任务', 'com.yingu.modules.job.controller.ScheduleJobController.run()', '[3]', '19', '0:0:0:0:0:0:0:1', '2018-11-24 10:42:04');
INSERT INTO `sys_log` VALUES ('83', 'admin', '立即执行任务', 'com.yingu.modules.job.controller.ScheduleJobController.run()', '[3]', '18', '0:0:0:0:0:0:0:1', '2018-11-24 10:48:29');
INSERT INTO `sys_log` VALUES ('84', 'admin', '立即执行任务', 'com.yingu.modules.job.controller.ScheduleJobController.run()', '[3]', '22', '0:0:0:0:0:0:0:1', '2018-11-24 10:51:22');
INSERT INTO `sys_log` VALUES ('85', 'admin', '立即执行任务', 'com.yingu.modules.job.controller.ScheduleJobController.run()', '[3]', '20', '0:0:0:0:0:0:0:1', '2018-11-24 10:55:25');
INSERT INTO `sys_log` VALUES ('86', 'admin', '修改定时任务', 'com.yingu.modules.job.controller.ScheduleJobController.update()', '{\"jobId\":3,\"beanName\":\"infTask\",\"methodName\":\"submit\",\"cronExpression\":\"0 */15 * * * ?\",\"status\":1,\"remark\":\"10分钟推送一次\",\"createTime\":\"Nov 13, 2018 6:36:27 PM\"}', '66884', '0:0:0:0:0:0:0:1', '2018-11-24 11:12:53');
INSERT INTO `sys_log` VALUES ('87', 'admin', '立即执行任务', 'com.yingu.modules.job.controller.ScheduleJobController.run()', '[3]', '20', '0:0:0:0:0:0:0:1', '2018-11-24 11:19:00');
INSERT INTO `sys_log` VALUES ('88', 'admin', '立即执行任务', 'com.yingu.modules.job.controller.ScheduleJobController.run()', '[3]', '19', '0:0:0:0:0:0:0:1', '2018-11-24 11:29:45');
INSERT INTO `sys_log` VALUES ('89', 'admin', '立即执行任务', 'com.yingu.modules.job.controller.ScheduleJobController.run()', '[3]', '9', '0:0:0:0:0:0:0:1', '2018-11-24 11:42:16');
INSERT INTO `sys_log` VALUES ('90', 'admin', '立即执行任务', 'com.yingu.modules.job.controller.ScheduleJobController.run()', '[3]', '20', '0:0:0:0:0:0:0:1', '2018-11-24 11:46:14');
INSERT INTO `sys_log` VALUES ('91', 'admin', '立即执行任务', 'com.yingu.modules.job.controller.ScheduleJobController.run()', '[3]', '19', '0:0:0:0:0:0:0:1', '2018-11-24 12:01:45');
INSERT INTO `sys_log` VALUES ('92', 'admin', '立即执行任务', 'com.yingu.modules.job.controller.ScheduleJobController.run()', '[3]', '9', '0:0:0:0:0:0:0:1', '2018-11-24 12:02:48');
INSERT INTO `sys_log` VALUES ('93', 'admin', '立即执行任务', 'com.yingu.modules.job.controller.ScheduleJobController.run()', '[3]', '21', '0:0:0:0:0:0:0:1', '2018-11-24 12:04:52');
INSERT INTO `sys_log` VALUES ('94', 'admin', '立即执行任务', 'com.yingu.modules.job.controller.ScheduleJobController.run()', '[3]', '18', '0:0:0:0:0:0:0:1', '2018-11-24 12:11:29');
INSERT INTO `sys_log` VALUES ('95', 'admin', '立即执行任务', 'com.yingu.modules.job.controller.ScheduleJobController.run()', '[3]', '20', '0:0:0:0:0:0:0:1', '2018-11-24 12:14:59');
INSERT INTO `sys_log` VALUES ('96', 'admin', '立即执行任务', 'com.yingu.modules.job.controller.ScheduleJobController.run()', '[3]', '20', '0:0:0:0:0:0:0:1', '2018-11-24 12:25:45');
INSERT INTO `sys_log` VALUES ('97', 'admin', '立即执行任务', 'com.yingu.modules.job.controller.ScheduleJobController.run()', '[3]', '20', '0:0:0:0:0:0:0:1', '2018-11-24 12:34:07');
INSERT INTO `sys_log` VALUES ('98', 'admin', '立即执行任务', 'com.yingu.modules.job.controller.ScheduleJobController.run()', '[3]', '8', '0:0:0:0:0:0:0:1', '2018-11-24 12:36:34');
INSERT INTO `sys_log` VALUES ('99', 'admin', '立即执行任务', 'com.yingu.modules.job.controller.ScheduleJobController.run()', '[3]', '13', '0:0:0:0:0:0:0:1', '2018-11-24 12:36:39');
INSERT INTO `sys_log` VALUES ('100', 'admin', '立即执行任务', 'com.yingu.modules.job.controller.ScheduleJobController.run()', '[3]', '17', '0:0:0:0:0:0:0:1', '2018-11-24 12:36:39');
INSERT INTO `sys_log` VALUES ('101', 'admin', '立即执行任务', 'com.yingu.modules.job.controller.ScheduleJobController.run()', '[3]', '6', '0:0:0:0:0:0:0:1', '2018-11-24 12:38:50');
INSERT INTO `sys_log` VALUES ('102', 'admin', '立即执行任务', 'com.yingu.modules.job.controller.ScheduleJobController.run()', '[3]', '7', '0:0:0:0:0:0:0:1', '2018-11-24 13:25:57');
INSERT INTO `sys_log` VALUES ('103', 'admin', '立即执行任务', 'com.yingu.modules.job.controller.ScheduleJobController.run()', '[3]', '6', '0:0:0:0:0:0:0:1', '2018-11-24 13:26:40');
INSERT INTO `sys_log` VALUES ('104', 'admin', '立即执行任务', 'com.yingu.modules.job.controller.ScheduleJobController.run()', '[3]', '19', '0:0:0:0:0:0:0:1', '2018-11-24 13:28:23');
INSERT INTO `sys_log` VALUES ('105', 'admin', '立即执行任务', 'com.yingu.modules.job.controller.ScheduleJobController.run()', '[3]', '8', '0:0:0:0:0:0:0:1', '2018-11-24 13:35:43');
INSERT INTO `sys_log` VALUES ('106', 'admin', '立即执行任务', 'com.yingu.modules.job.controller.ScheduleJobController.run()', '[3]', '7', '0:0:0:0:0:0:0:1', '2018-11-24 13:36:26');
INSERT INTO `sys_log` VALUES ('107', 'admin', '保存定时任务', 'com.yingu.modules.job.controller.ScheduleJobController.save()', '{\"jobId\":6,\"beanName\":\"syncTask\",\"methodName\":\"test\",\"params\":\"\",\"cronExpression\":\"0 */10 * * * ?\",\"status\":0,\"createTime\":\"Nov 24, 2018 6:10:41 PM\"}', '73', '0:0:0:0:0:0:0:1', '2018-11-24 18:10:41');
INSERT INTO `sys_log` VALUES ('108', 'admin', '暂停定时任务', 'com.yingu.modules.job.controller.ScheduleJobController.pause()', '[6]', '58', '0:0:0:0:0:0:0:1', '2018-11-24 18:10:49');
INSERT INTO `sys_log` VALUES ('109', 'admin', '立即执行任务', 'com.yingu.modules.job.controller.ScheduleJobController.run()', '[6]', '12', '0:0:0:0:0:0:0:1', '2018-11-24 18:11:05');
INSERT INTO `sys_log` VALUES ('110', 'admin', '立即执行任务', 'com.yingu.modules.job.controller.ScheduleJobController.run()', '[6]', '19', '0:0:0:0:0:0:0:1', '2018-11-24 18:12:32');
INSERT INTO `sys_log` VALUES ('111', 'admin', '立即执行任务', 'com.yingu.modules.job.controller.ScheduleJobController.run()', '[6]', '4584', '0:0:0:0:0:0:0:1', '2018-11-24 18:13:54');
INSERT INTO `sys_log` VALUES ('112', 'admin', '立即执行任务', 'com.yingu.modules.job.controller.ScheduleJobController.run()', '[6]', '48', '0:0:0:0:0:0:0:1', '2018-11-24 18:13:54');
INSERT INTO `sys_log` VALUES ('113', 'admin', '立即执行任务', 'com.yingu.modules.job.controller.ScheduleJobController.run()', '[3]', '7', '0:0:0:0:0:0:0:1', '2018-11-24 18:38:17');
INSERT INTO `sys_log` VALUES ('114', 'admin', '立即执行任务', 'com.yingu.modules.job.controller.ScheduleJobController.run()', '[3]', '18', '0:0:0:0:0:0:0:1', '2018-11-24 18:40:08');
INSERT INTO `sys_log` VALUES ('115', 'admin', '立即执行任务', 'com.yingu.modules.job.controller.ScheduleJobController.run()', '[4]', '7', '0:0:0:0:0:0:0:1', '2018-11-24 18:41:14');
INSERT INTO `sys_log` VALUES ('116', 'admin', '立即执行任务', 'com.yingu.modules.job.controller.ScheduleJobController.run()', '[3]', '7', '0:0:0:0:0:0:0:1', '2018-11-24 18:41:30');
INSERT INTO `sys_log` VALUES ('117', 'admin', '立即执行任务', 'com.yingu.modules.job.controller.ScheduleJobController.run()', '[3]', '19', '0:0:0:0:0:0:0:1', '2018-11-24 18:46:23');
INSERT INTO `sys_log` VALUES ('118', 'admin', '立即执行任务', 'com.yingu.modules.job.controller.ScheduleJobController.run()', '[3]', '8', '0:0:0:0:0:0:0:1', '2018-11-24 18:53:22');
INSERT INTO `sys_log` VALUES ('119', 'admin', '立即执行任务', 'com.yingu.modules.job.controller.ScheduleJobController.run()', '[3]', '8', '0:0:0:0:0:0:0:1', '2018-11-24 19:00:28');
INSERT INTO `sys_log` VALUES ('120', 'admin', '立即执行任务', 'com.yingu.modules.job.controller.ScheduleJobController.run()', '[3]', '36', '0:0:0:0:0:0:0:1', '2018-11-24 19:07:27');
INSERT INTO `sys_log` VALUES ('121', 'admin', '修改定时任务', 'com.yingu.modules.job.controller.ScheduleJobController.update()', '{\"jobId\":3,\"beanName\":\"infTask\",\"methodName\":\"submit\",\"cronExpression\":\"0 */10 * * * ?\",\"status\":1,\"remark\":\"10分钟推送一次\",\"createTime\":\"Nov 13, 2018 6:36:27 PM\"}', '874', '0:0:0:0:0:0:0:1', '2018-11-24 21:54:36');
INSERT INTO `sys_log` VALUES ('122', 'admin', '修改定时任务', 'com.yingu.modules.job.controller.ScheduleJobController.update()', '{\"jobId\":3,\"beanName\":\"infTask\",\"methodName\":\"submit\",\"cronExpression\":\"0 */10 * * * ?\",\"status\":1,\"remark\":\"10分钟推送一次\",\"createTime\":\"Nov 13, 2018 6:36:27 PM\"}', '2440', '0:0:0:0:0:0:0:1', '2018-11-24 21:54:36');
INSERT INTO `sys_log` VALUES ('123', 'admin', '立即执行任务', 'com.yingu.modules.job.controller.ScheduleJobController.run()', '[6]', '21', '0:0:0:0:0:0:0:1', '2018-11-26 18:27:44');
INSERT INTO `sys_log` VALUES ('124', 'admin', '立即执行任务', 'com.yingu.modules.job.controller.ScheduleJobController.run()', '[6]', '8', '0:0:0:0:0:0:0:1', '2018-11-26 18:27:52');
INSERT INTO `sys_log` VALUES ('125', 'admin', '立即执行任务', 'com.yingu.modules.job.controller.ScheduleJobController.run()', '[3]', '8', '0:0:0:0:0:0:0:1', '2018-11-26 18:59:52');
INSERT INTO `sys_log` VALUES ('126', 'admin', '立即执行任务', 'com.yingu.modules.job.controller.ScheduleJobController.run()', '[3]', '7', '0:0:0:0:0:0:0:1', '2018-11-26 19:07:10');
INSERT INTO `sys_log` VALUES ('127', 'admin', '立即执行任务', 'com.yingu.modules.job.controller.ScheduleJobController.run()', '[3]', '22', '0:0:0:0:0:0:0:1', '2018-11-26 19:14:44');
INSERT INTO `sys_log` VALUES ('128', 'admin', '立即执行任务', 'com.yingu.modules.job.controller.ScheduleJobController.run()', '[3]', '18', '0:0:0:0:0:0:0:1', '2018-11-26 19:20:36');
INSERT INTO `sys_log` VALUES ('129', 'admin', '立即执行任务', 'com.yingu.modules.job.controller.ScheduleJobController.run()', '[6]', '22', '0:0:0:0:0:0:0:1', '2018-11-26 19:36:49');
INSERT INTO `sys_log` VALUES ('130', 'admin', '立即执行任务', 'com.yingu.modules.job.controller.ScheduleJobController.run()', '[6]', '18', '0:0:0:0:0:0:0:1', '2018-11-26 19:55:28');
INSERT INTO `sys_log` VALUES ('131', 'admin', '立即执行任务', 'com.yingu.modules.job.controller.ScheduleJobController.run()', '[3]', '10', '0:0:0:0:0:0:0:1', '2018-11-26 20:08:58');
INSERT INTO `sys_log` VALUES ('132', 'admin', '立即执行任务', 'com.yingu.modules.job.controller.ScheduleJobController.run()', '[3]', '19', '0:0:0:0:0:0:0:1', '2018-11-26 20:13:47');
INSERT INTO `sys_log` VALUES ('133', 'admin', '立即执行任务', 'com.yingu.modules.job.controller.ScheduleJobController.run()', '[3]', '19', '0:0:0:0:0:0:0:1', '2018-11-26 20:31:17');
INSERT INTO `sys_log` VALUES ('134', 'admin', '立即执行任务', 'com.yingu.modules.job.controller.ScheduleJobController.run()', '[3]', '8', '0:0:0:0:0:0:0:1', '2018-11-26 20:32:15');
INSERT INTO `sys_log` VALUES ('135', 'admin', '立即执行任务', 'com.yingu.modules.job.controller.ScheduleJobController.run()', '[3]', '18', '0:0:0:0:0:0:0:1', '2018-11-26 20:36:50');
INSERT INTO `sys_log` VALUES ('136', 'admin', '立即执行任务', 'com.yingu.modules.job.controller.ScheduleJobController.run()', '[3]', '8', '0:0:0:0:0:0:0:1', '2018-11-26 20:37:39');
INSERT INTO `sys_log` VALUES ('137', 'admin', '立即执行任务', 'com.yingu.modules.job.controller.ScheduleJobController.run()', '[3]', '7', '0:0:0:0:0:0:0:1', '2018-11-26 20:50:38');
INSERT INTO `sys_log` VALUES ('138', 'admin', '立即执行任务', 'com.yingu.modules.job.controller.ScheduleJobController.run()', '[3]', '18', '0:0:0:0:0:0:0:1', '2018-11-26 20:56:13');
INSERT INTO `sys_log` VALUES ('139', 'admin', '立即执行任务', 'com.yingu.modules.job.controller.ScheduleJobController.run()', '[6]', '19', '0:0:0:0:0:0:0:1', '2018-11-26 21:05:02');
INSERT INTO `sys_log` VALUES ('140', 'admin', '立即执行任务', 'com.yingu.modules.job.controller.ScheduleJobController.run()', '[3]', '15', '0:0:0:0:0:0:0:1', '2018-11-26 21:06:15');
INSERT INTO `sys_log` VALUES ('141', 'admin', '立即执行任务', 'com.yingu.modules.job.controller.ScheduleJobController.run()', '[3]', '13', '0:0:0:0:0:0:0:1', '2018-11-26 21:06:15');
INSERT INTO `sys_log` VALUES ('142', 'admin', '立即执行任务', 'com.yingu.modules.job.controller.ScheduleJobController.run()', '[6]', '7', '0:0:0:0:0:0:0:1', '2018-11-26 21:18:12');
INSERT INTO `sys_log` VALUES ('143', 'admin', '立即执行任务', 'com.yingu.modules.job.controller.ScheduleJobController.run()', '[6,3]', '9', '0:0:0:0:0:0:0:1', '2018-11-26 21:18:56');
INSERT INTO `sys_log` VALUES ('144', 'admin', '立即执行任务', 'com.yingu.modules.job.controller.ScheduleJobController.run()', '[6,3]', '11', '0:0:0:0:0:0:0:1', '2018-11-26 21:19:00');
INSERT INTO `sys_log` VALUES ('145', 'admin', '立即执行任务', 'com.yingu.modules.job.controller.ScheduleJobController.run()', '[3]', '7', '0:0:0:0:0:0:0:1', '2018-11-26 21:23:48');
INSERT INTO `sys_log` VALUES ('146', 'admin', '立即执行任务', 'com.yingu.modules.job.controller.ScheduleJobController.run()', '[6]', '24', '0:0:0:0:0:0:0:1', '2018-11-27 15:40:13');
INSERT INTO `sys_log` VALUES ('147', 'admin', '立即执行任务', 'com.yingu.modules.job.controller.ScheduleJobController.run()', '[3]', '7', '0:0:0:0:0:0:0:1', '2018-11-27 15:41:00');
INSERT INTO `sys_log` VALUES ('148', 'admin', '立即执行任务', 'com.yingu.modules.job.controller.ScheduleJobController.run()', '[3]', '8', '0:0:0:0:0:0:0:1', '2018-11-27 15:44:53');
INSERT INTO `sys_log` VALUES ('149', 'admin', '立即执行任务', 'com.yingu.modules.job.controller.ScheduleJobController.run()', '[3]', '4', '0:0:0:0:0:0:0:1', '2018-11-27 15:47:01');
INSERT INTO `sys_log` VALUES ('150', 'admin', '立即执行任务', 'com.yingu.modules.job.controller.ScheduleJobController.run()', '[3]', '8', '0:0:0:0:0:0:0:1', '2018-11-27 15:49:05');
INSERT INTO `sys_log` VALUES ('151', 'admin', '立即执行任务', 'com.yingu.modules.job.controller.ScheduleJobController.run()', '[3]', '7', '0:0:0:0:0:0:0:1', '2018-11-27 15:57:20');
INSERT INTO `sys_log` VALUES ('152', 'admin', '立即执行任务', 'com.yingu.modules.job.controller.ScheduleJobController.run()', '[3]', '17', '0:0:0:0:0:0:0:1', '2018-11-28 20:09:55');
INSERT INTO `sys_log` VALUES ('153', 'admin', '立即执行任务', 'com.yingu.modules.job.controller.ScheduleJobController.run()', '[3]', '8', '0:0:0:0:0:0:0:1', '2018-11-28 20:11:05');
INSERT INTO `sys_log` VALUES ('154', 'admin', '立即执行任务', 'com.yingu.modules.job.controller.ScheduleJobController.run()', '[3]', '18', '0:0:0:0:0:0:0:1', '2018-11-28 20:13:23');
INSERT INTO `sys_log` VALUES ('155', 'admin', '立即执行任务', 'com.yingu.modules.job.controller.ScheduleJobController.run()', '[3]', '20', '0:0:0:0:0:0:0:1', '2018-11-28 20:59:33');
INSERT INTO `sys_log` VALUES ('156', 'admin', '立即执行任务', 'com.yingu.modules.job.controller.ScheduleJobController.run()', '[3]', '20', '0:0:0:0:0:0:0:1', '2018-11-28 21:03:20');
INSERT INTO `sys_log` VALUES ('157', 'admin', '立即执行任务', 'com.yingu.modules.job.controller.ScheduleJobController.run()', '[3]', '8', '0:0:0:0:0:0:0:1', '2018-11-28 21:11:11');
INSERT INTO `sys_log` VALUES ('158', 'admin', '立即执行任务', 'com.yingu.modules.job.controller.ScheduleJobController.run()', '[3]', '8', '0:0:0:0:0:0:0:1', '2018-11-28 21:11:16');
INSERT INTO `sys_log` VALUES ('159', 'admin', '立即执行任务', 'com.yingu.modules.job.controller.ScheduleJobController.run()', '[3]', '13', '0:0:0:0:0:0:0:1', '2018-11-28 21:11:16');
INSERT INTO `sys_log` VALUES ('160', 'admin', '立即执行任务', 'com.yingu.modules.job.controller.ScheduleJobController.run()', '[3]', '20', '0:0:0:0:0:0:0:1', '2018-11-29 10:51:18');
INSERT INTO `sys_log` VALUES ('161', 'admin', '立即执行任务', 'com.yingu.modules.job.controller.ScheduleJobController.run()', '[3]', '19', '0:0:0:0:0:0:0:1', '2018-11-29 11:11:21');
INSERT INTO `sys_log` VALUES ('162', 'admin', '立即执行任务', 'com.yingu.modules.job.controller.ScheduleJobController.run()', '[3]', '19', '0:0:0:0:0:0:0:1', '2018-11-29 11:47:06');
INSERT INTO `sys_log` VALUES ('163', 'admin', '保存定时任务', 'com.yingu.modules.job.controller.ScheduleJobController.save()', '{\"jobId\":7,\"beanName\":\"pullSlaveTask\",\"methodName\":\"syncPutawayDetails\",\"cronExpression\":\"0 */1 * * * ?\",\"status\":0,\"remark\":\"银谷在线从表数据拉取\",\"createTime\":\"Nov 30, 2018 2:34:10 PM\"}', '169', '0:0:0:0:0:0:0:1', '2018-11-30 14:34:11');
INSERT INTO `sys_log` VALUES ('164', 'admin', '暂停定时任务', 'com.yingu.modules.job.controller.ScheduleJobController.pause()', '[7]', '55', '0:0:0:0:0:0:0:1', '2018-11-30 14:34:22');
INSERT INTO `sys_log` VALUES ('165', 'admin', '立即执行任务', 'com.yingu.modules.job.controller.ScheduleJobController.run()', '[6]', '10', '0:0:0:0:0:0:0:1', '2018-11-30 14:37:29');
INSERT INTO `sys_log` VALUES ('166', 'admin', '立即执行任务', 'com.yingu.modules.job.controller.ScheduleJobController.run()', '[7]', '98', '0:0:0:0:0:0:0:1', '2018-11-30 14:37:56');
INSERT INTO `sys_log` VALUES ('167', 'admin', '立即执行任务', 'com.yingu.modules.job.controller.ScheduleJobController.run()', '[7]', '7', '0:0:0:0:0:0:0:1', '2018-11-30 14:39:19');
INSERT INTO `sys_log` VALUES ('168', 'admin', '立即执行任务', 'com.yingu.modules.job.controller.ScheduleJobController.run()', '[7]', '19', '0:0:0:0:0:0:0:1', '2018-11-30 14:45:17');
INSERT INTO `sys_log` VALUES ('169', 'admin', '立即执行任务', 'com.yingu.modules.job.controller.ScheduleJobController.run()', '[7]', '18', '0:0:0:0:0:0:0:1', '2018-11-30 14:52:12');
INSERT INTO `sys_log` VALUES ('170', 'admin', '立即执行任务', 'com.yingu.modules.job.controller.ScheduleJobController.run()', '[7]', '10192', '0:0:0:0:0:0:0:1', '2018-11-30 14:54:29');
INSERT INTO `sys_log` VALUES ('171', 'admin', '立即执行任务', 'com.yingu.modules.job.controller.ScheduleJobController.run()', '[7]', '66', '0:0:0:0:0:0:0:1', '2018-11-30 14:56:42');
INSERT INTO `sys_log` VALUES ('172', 'admin', '立即执行任务', 'com.yingu.modules.job.controller.ScheduleJobController.run()', '[7]', '4126', '0:0:0:0:0:0:0:1', '2018-11-30 14:57:12');
INSERT INTO `sys_log` VALUES ('173', 'admin', '立即执行任务', 'com.yingu.modules.job.controller.ScheduleJobController.run()', '[7]', '5700', '0:0:0:0:0:0:0:1', '2018-11-30 14:57:41');
INSERT INTO `sys_log` VALUES ('174', 'admin', '立即执行任务', 'com.yingu.modules.job.controller.ScheduleJobController.run()', '[7]', '20', '0:0:0:0:0:0:0:1', '2018-11-30 14:59:46');
INSERT INTO `sys_log` VALUES ('175', 'admin', '立即执行任务', 'com.yingu.modules.job.controller.ScheduleJobController.run()', '[7]', '6937', '0:0:0:0:0:0:0:1', '2018-11-30 15:05:45');
INSERT INTO `sys_log` VALUES ('176', 'admin', '立即执行任务', 'com.yingu.modules.job.controller.ScheduleJobController.run()', '[7]', '7573', '0:0:0:0:0:0:0:1', '2018-11-30 15:18:34');
INSERT INTO `sys_log` VALUES ('177', 'admin', '立即执行任务', 'com.yingu.modules.job.controller.ScheduleJobController.run()', '[7]', '1890', '0:0:0:0:0:0:0:1', '2018-11-30 15:19:37');
INSERT INTO `sys_log` VALUES ('178', 'admin', '立即执行任务', 'com.yingu.modules.job.controller.ScheduleJobController.run()', '[7]', '19', '0:0:0:0:0:0:0:1', '2018-11-30 15:24:45');
INSERT INTO `sys_log` VALUES ('179', 'admin', '立即执行任务', 'com.yingu.modules.job.controller.ScheduleJobController.run()', '[7]', '44094', '0:0:0:0:0:0:0:1', '2018-11-30 15:26:00');
INSERT INTO `sys_log` VALUES ('180', 'admin', '立即执行任务', 'com.yingu.modules.job.controller.ScheduleJobController.run()', '[7]', '21', '0:0:0:0:0:0:0:1', '2018-11-30 15:45:35');
INSERT INTO `sys_log` VALUES ('181', 'admin', '立即执行任务', 'com.yingu.modules.job.controller.ScheduleJobController.run()', '[7]', '20', '0:0:0:0:0:0:0:1', '2018-11-30 15:52:33');
INSERT INTO `sys_log` VALUES ('182', 'admin', '立即执行任务', 'com.yingu.modules.job.controller.ScheduleJobController.run()', '[7]', '21', '0:0:0:0:0:0:0:1', '2018-11-30 15:56:15');
INSERT INTO `sys_log` VALUES ('183', 'admin', '立即执行任务', 'com.yingu.modules.job.controller.ScheduleJobController.run()', '[7]', '20', '0:0:0:0:0:0:0:1', '2018-11-30 16:00:16');
INSERT INTO `sys_log` VALUES ('184', 'admin', '立即执行任务', 'com.yingu.modules.job.controller.ScheduleJobController.run()', '[3]', '15', '0:0:0:0:0:0:0:1', '2018-11-30 20:05:20');
INSERT INTO `sys_log` VALUES ('185', 'admin', '立即执行任务', 'com.yingu.modules.job.controller.ScheduleJobController.run()', '[3]', '7', '0:0:0:0:0:0:0:1', '2018-11-30 20:06:06');
INSERT INTO `sys_log` VALUES ('186', 'admin', '立即执行任务', 'com.yingu.modules.job.controller.ScheduleJobController.run()', '[3]', '18', '0:0:0:0:0:0:0:1', '2018-11-30 20:12:36');
INSERT INTO `sys_log` VALUES ('187', 'admin', '立即执行任务', 'com.yingu.modules.job.controller.ScheduleJobController.run()', '[3]', '8', '0:0:0:0:0:0:0:1', '2018-11-30 20:16:04');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) DEFAULT NULL COMMENT '父菜单ID，一级菜单为0',
  `name` varchar(50) DEFAULT NULL COMMENT '菜单名称',
  `url` varchar(200) DEFAULT NULL COMMENT '菜单URL',
  `perms` varchar(500) DEFAULT NULL COMMENT '授权(多个用逗号分隔，如：user:list,user:create)',
  `type` int(11) DEFAULT NULL COMMENT '类型   0：目录   1：菜单   2：按钮',
  `icon` varchar(50) DEFAULT NULL COMMENT '菜单图标',
  `order_num` int(11) DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=148 DEFAULT CHARSET=utf8 COMMENT='菜单管理';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('1', '0', '系统管理', null, null, '0', 'fa fa-cog', '99');
INSERT INTO `sys_menu` VALUES ('2', '1', '管理员管理', 'modules/sys/user.html', null, '1', 'fa fa-user', '1');
INSERT INTO `sys_menu` VALUES ('3', '1', '角色管理', 'modules/sys/role.html', null, '1', 'fa fa-user-secret', '2');
INSERT INTO `sys_menu` VALUES ('4', '1', '菜单管理', 'modules/sys/menu.html', null, '1', 'fa fa-th-list', '3');
INSERT INTO `sys_menu` VALUES ('5', '1', 'SQL监控', 'druid/sql.html', null, '1', 'fa fa-bug', '4');
INSERT INTO `sys_menu` VALUES ('6', '1', '定时任务', 'modules/job/schedule.html', null, '1', 'fa fa-tasks', '5');
INSERT INTO `sys_menu` VALUES ('7', '6', '查看', null, 'sys:schedule:list,sys:schedule:info', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('8', '6', '新增', null, 'sys:schedule:save', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('9', '6', '修改', null, 'sys:schedule:update', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('10', '6', '删除', null, 'sys:schedule:delete', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('11', '6', '暂停', null, 'sys:schedule:pause', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('12', '6', '恢复', null, 'sys:schedule:resume', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('13', '6', '立即执行', null, 'sys:schedule:run', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('14', '6', '日志列表', null, 'sys:schedule:log', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('15', '2', '查看', null, 'sys:user:list,sys:user:info', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('16', '2', '新增', null, 'sys:user:save,sys:role:select', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('17', '2', '修改', null, 'sys:user:update,sys:role:select', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('18', '2', '删除', null, 'sys:user:delete', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('19', '3', '查看', null, 'sys:role:list,sys:role:info', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('20', '3', '新增', null, 'sys:role:save,sys:menu:perms', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('21', '3', '修改', null, 'sys:role:update,sys:menu:perms', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('22', '3', '删除', null, 'sys:role:delete', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('23', '4', '查看', null, 'sys:menu:list,sys:menu:info', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('24', '4', '新增', null, 'sys:menu:save,sys:menu:select', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('25', '4', '修改', null, 'sys:menu:update,sys:menu:select', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('26', '4', '删除', null, 'sys:menu:delete', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('27', '1', '参数管理', 'modules/sys/config.html', 'sys:config:list,sys:config:info,sys:config:save,sys:config:update,sys:config:delete', '1', 'fa fa-sun-o', '6');
INSERT INTO `sys_menu` VALUES ('29', '1', '系统日志', 'modules/sys/log.html', 'sys:log:list', '1', 'fa fa-file-text-o', '7');
INSERT INTO `sys_menu` VALUES ('30', '1', '文件上传', 'modules/oss/oss.html', 'sys:oss:all', '1', 'fa fa-file-image-o', '6');
INSERT INTO `sys_menu` VALUES ('31', '1', '部门管理', 'modules/sys/dept.html', null, '1', 'fa fa-file-code-o', '1');
INSERT INTO `sys_menu` VALUES ('32', '31', '查看', null, 'sys:dept:list,sys:dept:info', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('33', '31', '新增', null, 'sys:dept:save,sys:dept:select', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('34', '31', '修改', null, 'sys:dept:update,sys:dept:select', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('35', '31', '删除', null, 'sys:dept:delete', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('36', '1', '字典管理', 'modules/sys/dict.html', null, '1', 'fa fa-bookmark-o', '6');
INSERT INTO `sys_menu` VALUES ('37', '36', '查看', null, 'sys:dict:list,sys:dict:info', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('38', '36', '新增', null, 'sys:dict:save', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('39', '36', '修改', null, 'sys:dict:update', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('40', '36', '删除', null, 'sys:dict:delete', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('41', '96', '散标(标的)数据临时表', 'modules/sync/debt.html', null, '1', 'fa fa-file-code-o', '6');
INSERT INTO `sys_menu` VALUES ('42', '41', '查看', null, 'sync:debt:list,sync:debt:info', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('43', '41', '新增', null, 'sync:debt:save', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('44', '41', '修改', null, 'sync:debt:update', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('45', '41', '删除', null, 'sync:debt:delete', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('46', '96', '还款计划', 'modules/sync/repaymentplan.html', null, '1', 'fa fa-file-code-o', '6');
INSERT INTO `sys_menu` VALUES ('47', '46', '查看', null, 'sync:repaymentplan:list,sync:repaymentplan:info', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('48', '46', '新增', null, 'sync:repaymentplan:save', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('49', '46', '修改', null, 'sync:repaymentplan:update', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('50', '46', '删除', null, 'sync:repaymentplan:delete', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('51', '96', '散标状态临时表', 'modules/sync/status.html', null, '1', 'fa fa-file-code-o', '6');
INSERT INTO `sys_menu` VALUES ('52', '51', '查看', null, 'sync:status:list,sync:status:info', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('53', '51', '新增', null, 'sync:status:save', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('54', '51', '修改', null, 'sync:status:update', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('55', '51', '删除', null, 'sync:status:delete', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('56', '96', '承接信息', 'modules/sync/takeinfo.html', null, '1', 'fa fa-file-code-o', '6');
INSERT INTO `sys_menu` VALUES ('57', '56', '查看', null, 'sync:takeinfo:list,sync:takeinfo:info', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('58', '56', '新增', null, 'sync:takeinfo:save', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('59', '56', '修改', null, 'sync:takeinfo:update', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('60', '56', '删除', null, 'sync:takeinfo:delete', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('61', '96', '交易流水临时表', 'modules/sync/transaction.html', null, '1', 'fa fa-file-code-o', '6');
INSERT INTO `sys_menu` VALUES ('62', '61', '查看', null, 'sync:transaction:list,sync:transaction:info', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('63', '61', '新增', null, 'sync:transaction:save', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('64', '61', '修改', null, 'sync:transaction:update', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('65', '61', '删除', null, 'sync:transaction:delete', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('66', '96', '债权转让临时表', 'modules/sync/transfer.html', null, '1', 'fa fa-file-code-o', '6');
INSERT INTO `sys_menu` VALUES ('67', '66', '查看', null, 'sync:transfer:list,sync:transfer:info', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('68', '66', '新增', null, 'sync:transfer:save', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('69', '66', '修改', null, 'sync:transfer:update', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('70', '66', '删除', null, 'sync:transfer:delete', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('71', '96', '债权信息', 'modules/sync/transferinfo.html', null, '1', 'fa fa-file-code-o', '6');
INSERT INTO `sys_menu` VALUES ('72', '71', '查看', null, 'sync:transferinfo:list,sync:transferinfo:info', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('73', '71', '新增', null, 'sync:transferinfo:save', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('74', '71', '修改', null, 'sync:transferinfo:update', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('75', '71', '删除', null, 'sync:transferinfo:delete', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('76', '96', '转让项目', 'modules/sync/transferproject.html', null, '1', 'fa fa-file-code-o', '6');
INSERT INTO `sys_menu` VALUES ('77', '76', '查看', null, 'sync:transferproject:list,sync:transferproject:info', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('78', '76', '新增', null, 'sync:transferproject:save', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('79', '76', '修改', null, 'sync:transferproject:update', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('80', '76', '删除', null, 'sync:transferproject:delete', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('81', '96', '转让状态', 'modules/sync/transferstatus.html', null, '1', 'fa fa-file-code-o', '6');
INSERT INTO `sys_menu` VALUES ('82', '81', '查看', null, 'sync:transferstatus:list,sync:transferstatus:info', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('83', '81', '新增', null, 'sync:transferstatus:save', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('84', '81', '修改', null, 'sync:transferstatus:update', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('85', '81', '删除', null, 'sync:transferstatus:delete', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('86', '96', '用户信息临时表', 'modules/sync/user.html', null, '1', 'fa fa-file-code-o', '6');
INSERT INTO `sys_menu` VALUES ('87', '86', '查看', null, 'sync:user:list,sync:user:info', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('88', '86', '新增', null, 'sync:user:save', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('89', '86', '修改', null, 'sync:user:update', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('90', '86', '删除', null, 'sync:user:delete', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('91', '96', '用户账号临时表', 'modules/sync/useraccount.html', null, '1', 'fa fa-file-code-o', '6');
INSERT INTO `sys_menu` VALUES ('92', '91', '查看', null, 'sync:useraccount:list,sync:useraccount:info', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('93', '91', '新增', null, 'sync:useraccount:save', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('94', '91', '修改', null, 'sync:useraccount:update', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('95', '91', '删除', null, 'sync:useraccount:delete', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('96', '0', '金融局报送临时数据管理', null, null, '0', 'fa fa-print', '1');
INSERT INTO `sys_menu` VALUES ('97', '147', '散标(标的)数据表', 'modules/inf/infdebt.html', null, '1', 'fa fa-file-code-o', '6');
INSERT INTO `sys_menu` VALUES ('98', '97', '查看', null, 'inf:infdebt:list,inf:infdebt:info', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('99', '97', '新增', null, 'inf:infdebt:save', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('100', '97', '修改', null, 'inf:infdebt:update', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('101', '97', '删除', null, 'inf:infdebt:delete', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('102', '147', '散标状态表', 'modules/inf/infdebtstatus.html', null, '1', 'fa fa-file-code-o', '6');
INSERT INTO `sys_menu` VALUES ('103', '102', '查看', null, 'inf:infdebtstatus:list,inf:infdebtstatus:info', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('104', '102', '新增', null, 'inf:infdebtstatus:save', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('105', '102', '修改', null, 'inf:infdebtstatus:update', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('106', '102', '删除', null, 'inf:infdebtstatus:delete', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('107', '147', '还款计划', 'modules/inf/infrepaymentplan.html', null, '1', 'fa fa-file-code-o', '6');
INSERT INTO `sys_menu` VALUES ('108', '107', '查看', null, 'inf:infrepaymentplan:list,inf:infrepaymentplan:info', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('109', '107', '新增', null, 'inf:infrepaymentplan:save', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('110', '107', '修改', null, 'inf:infrepaymentplan:update', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('111', '107', '删除', null, 'inf:infrepaymentplan:delete', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('112', '147', '承接信息', 'modules/inf/inftakeinfo.html', null, '1', 'fa fa-file-code-o', '6');
INSERT INTO `sys_menu` VALUES ('113', '112', '查看', null, 'inf:inftakeinfo:list,inf:inftakeinfo:info', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('114', '112', '新增', null, 'inf:inftakeinfo:save', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('115', '112', '修改', null, 'inf:inftakeinfo:update', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('116', '112', '删除', null, 'inf:inftakeinfo:delete', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('117', '147', '交易流水表', 'modules/inf/inftransaction.html', null, '1', 'fa fa-file-code-o', '6');
INSERT INTO `sys_menu` VALUES ('118', '117', '查看', null, 'inf:inftransaction:list,inf:inftransaction:info', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('119', '117', '新增', null, 'inf:inftransaction:save', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('120', '117', '修改', null, 'inf:inftransaction:update', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('121', '117', '删除', null, 'inf:inftransaction:delete', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('122', '147', '债权信息', 'modules/inf/inftransferinfo.html', null, '1', 'fa fa-file-code-o', '6');
INSERT INTO `sys_menu` VALUES ('123', '122', '查看', null, 'inf:inftransferinfo:list,inf:inftransferinfo:info', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('124', '122', '新增', null, 'inf:inftransferinfo:save', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('125', '122', '修改', null, 'inf:inftransferinfo:update', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('126', '122', '删除', null, 'inf:inftransferinfo:delete', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('127', '147', '转让项目', 'modules/inf/inftransferproject.html', null, '1', 'fa fa-file-code-o', '6');
INSERT INTO `sys_menu` VALUES ('128', '127', '查看', null, 'inf:inftransferproject:list,inf:inftransferproject:info', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('129', '127', '新增', null, 'inf:inftransferproject:save', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('130', '127', '修改', null, 'inf:inftransferproject:update', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('131', '127', '删除', null, 'inf:inftransferproject:delete', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('132', '147', '转让状态', 'modules/inf/inftransferstatus.html', null, '1', 'fa fa-file-code-o', '6');
INSERT INTO `sys_menu` VALUES ('133', '132', '查看', null, 'inf:inftransferstatus:list,inf:inftransferstatus:info', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('134', '132', '新增', null, 'inf:inftransferstatus:save', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('135', '132', '修改', null, 'inf:inftransferstatus:update', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('136', '132', '删除', null, 'inf:inftransferstatus:delete', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('137', '147', '用户信息表', 'modules/inf/infuser.html', null, '1', 'fa fa-file-code-o', '6');
INSERT INTO `sys_menu` VALUES ('138', '137', '查看', null, 'inf:infuser:list,inf:infuser:info', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('139', '137', '新增', null, 'inf:infuser:save', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('140', '137', '修改', null, 'inf:infuser:update', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('141', '137', '删除', null, 'inf:infuser:delete', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('142', '147', '用户账号表', 'modules/inf/infuseraccount.html', null, '1', 'fa fa-file-code-o', '6');
INSERT INTO `sys_menu` VALUES ('143', '142', '查看', null, 'inf:infuseraccount:list,inf:infuseraccount:info', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('144', '142', '新增', null, 'inf:infuseraccount:save', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('145', '142', '修改', null, 'inf:infuseraccount:update', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('146', '142', '删除', null, 'inf:infuseraccount:delete', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('147', '0', '金融局报送数据管理', null, null, '0', 'fa fa-star-half-o', '2');

-- ----------------------------
-- Table structure for sys_oss
-- ----------------------------
DROP TABLE IF EXISTS `sys_oss`;
CREATE TABLE `sys_oss` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `url` varchar(200) DEFAULT NULL COMMENT 'URL地址',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='文件上传';

-- ----------------------------
-- Records of sys_oss
-- ----------------------------

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(100) DEFAULT NULL COMMENT '角色名称',
  `remark` varchar(100) DEFAULT NULL COMMENT '备注',
  `dept_id` bigint(20) DEFAULT NULL COMMENT '部门ID',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色';

-- ----------------------------
-- Records of sys_role
-- ----------------------------

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) DEFAULT NULL COMMENT '角色ID',
  `dept_id` bigint(20) DEFAULT NULL COMMENT '部门ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色与部门对应关系';

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) DEFAULT NULL COMMENT '角色ID',
  `menu_id` bigint(20) DEFAULT NULL COMMENT '菜单ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色与菜单对应关系';

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL COMMENT '用户名',
  `password` varchar(100) DEFAULT NULL COMMENT '密码',
  `salt` varchar(20) DEFAULT NULL COMMENT '盐',
  `email` varchar(100) DEFAULT NULL COMMENT '邮箱',
  `mobile` varchar(100) DEFAULT NULL COMMENT '手机号',
  `status` tinyint(4) DEFAULT NULL COMMENT '状态  0：禁用   1：正常',
  `dept_id` bigint(20) DEFAULT NULL COMMENT '部门ID',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='系统用户';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', 'admin', 'e1153123d7d180ceeb820d577ff119876678732a68eef4e6ffc0b1f06a01f91b', 'YzcmCZNvbXocrsz9dm8e', 'root@renren.io', '13612345678', '1', '1', '2016-11-11 11:11:11');

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL COMMENT '用户ID',
  `role_id` bigint(20) DEFAULT NULL COMMENT '角色ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户与角色对应关系';

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------

-- ----------------------------
-- Table structure for test1
-- ----------------------------
DROP TABLE IF EXISTS `test1`;
CREATE TABLE `test1` (
  `test_id` int(11) NOT NULL AUTO_INCREMENT,
  `field1` varchar(2000) DEFAULT NULL,
  `field2` decimal(10,0) DEFAULT NULL,
  `field3` datetime DEFAULT NULL,
  `field4` date DEFAULT NULL,
  PRIMARY KEY (`test_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of test1
-- ----------------------------
INSERT INTO `test1` VALUES ('1', '1111111', '22222', '2018-11-23 16:20:48', '2018-11-23');
INSERT INTO `test1` VALUES ('2', '222', '222', '2018-11-21 16:21:04', '2018-11-20');

-- ----------------------------
-- Table structure for test2
-- ----------------------------
DROP TABLE IF EXISTS `test2`;
CREATE TABLE `test2` (
  `test_id` int(11) DEFAULT NULL,
  `field1` varchar(2000) DEFAULT NULL,
  `field2` decimal(10,0) DEFAULT NULL,
  `field3` datetime DEFAULT NULL,
  `field4` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of test2
-- ----------------------------
INSERT INTO `test2` VALUES ('1', '1111', '22222', '2018-11-23 16:20:48', '2018-11-23');
INSERT INTO `test2` VALUES ('2', '222', '222', '2018-11-21 16:21:04', '2018-11-20');
INSERT INTO `test2` VALUES ('1', '1111', '22222', '2018-11-23 16:20:48', '2018-11-23');
INSERT INTO `test2` VALUES ('2', '222', '222', '2018-11-21 16:21:04', '2018-11-20');
INSERT INTO `test2` VALUES ('1', '1111', '22222', '2018-11-23 16:20:48', '2018-11-23');
INSERT INTO `test2` VALUES ('2', '222', '222', '2018-11-21 16:21:04', '2018-11-20');
INSERT INTO `test2` VALUES ('1', '1111', '22222', '2018-11-23 16:20:48', '2018-11-23');
INSERT INTO `test2` VALUES ('2', '222', '222', '2018-11-21 16:21:04', '2018-11-20');
INSERT INTO `test2` VALUES ('1', '1111', '22222', '2018-11-23 16:20:48', '2018-11-23');
INSERT INTO `test2` VALUES ('2', '222', '222', '2018-11-21 16:21:04', '2018-11-20');
INSERT INTO `test2` VALUES ('1', '1111', '22222', '2018-11-23 16:20:48', '2018-11-23');
INSERT INTO `test2` VALUES ('2', '222', '222', '2018-11-21 16:21:04', '2018-11-20');
INSERT INTO `test2` VALUES ('1', '1111', '22222', '2018-11-23 16:20:48', '2018-11-23');
INSERT INTO `test2` VALUES ('2', '222', '222', '2018-11-21 16:21:04', '2018-11-20');
INSERT INTO `test2` VALUES ('1', '1111', '22222', '2018-11-23 16:20:48', '2018-11-23');
INSERT INTO `test2` VALUES ('2', '222', '222', '2018-11-21 16:21:04', '2018-11-20');
INSERT INTO `test2` VALUES ('1', '1111', '22222', '2018-11-23 16:20:48', '2018-11-23');
INSERT INTO `test2` VALUES ('2', '222', '222', '2018-11-21 16:21:04', '2018-11-20');

-- ----------------------------
-- Table structure for tmp_2_1
-- ----------------------------
DROP TABLE IF EXISTS `tmp_2_1`;
CREATE TABLE `tmp_2_1` (
  `productStartTime` varchar(40) NOT NULL COMMENT '开标时间 ',
  `productRegType` varchar(40) NOT NULL COMMENT '散标类别 ',
  `productName` varchar(256) NOT NULL COMMENT '散标名称 ',
  `bankNo` varchar(128) DEFAULT NULL COMMENT '存管银行标的编号 ',
  `sourceProductCode` varchar(64) NOT NULL COMMENT '原散标编号 ',
  `userIdcardHash` varchar(64) NOT NULL COMMENT '借款用户标示 hash ',
  `loanUse` varchar(10) NOT NULL COMMENT '借款用途 ',
  `loanDescribe` varchar(2000) NOT NULL COMMENT '借款说明 ',
  `loanRate` varchar(32) NOT NULL COMMENT '借款年利率 ',
  `amount` varchar(32) NOT NULL COMMENT '借款金额 ',
  `rate` varchar(32) NOT NULL COMMENT '投资年化收益率 ',
  `termType` varchar(10) NOT NULL COMMENT '借款期限类型 ',
  `term` varchar(5) NOT NULL COMMENT '借款期限 ',
  `payType` varchar(5) NOT NULL COMMENT '还款类型 ',
  `serviceCost` varchar(32) NOT NULL COMMENT '手续费（服务费） ',
  `riskMargin` varchar(32) NOT NULL COMMENT '风险保证金 ',
  `loanType` varchar(64) NOT NULL COMMENT '借款类型 ',
  `loanCreditRating` varchar(10) NOT NULL COMMENT '借款主体信用评级 ',
  `securityInfo` varchar(256) DEFAULT NULL COMMENT '担保信息 ',
  `collateralDesc` varchar(2000) DEFAULT NULL COMMENT '抵押/质押物描述 ',
  `collateralInfo` varchar(64) DEFAULT NULL COMMENT '抵押(质押物)平均处置周期 ',
  `overdueLimmit` varchar(10) NOT NULL COMMENT '逾期期限 ',
  `badDebtLimmit` varchar(10) NOT NULL COMMENT '坏账期限 ',
  `amountLimmts` varchar(20) DEFAULT NULL COMMENT '最小投资金额 ',
  `amountLimmtl` varchar(20) DEFAULT NULL COMMENT '最大投资金额 ',
  `allowTransfer` varchar(10) NOT NULL COMMENT '是否允许债权转让 ',
  `closeLimmit` varchar(10) NOT NULL COMMENT '封闭期 ',
  `securityType` varchar(50) NOT NULL COMMENT '担保方式 ',
  `securityCompanyName` varchar(255) DEFAULT NULL COMMENT '第三方担保机构/保险公司的全称 ',
  `securityCompanyIdcard` varchar(255) DEFAULT NULL COMMENT '担保机构或保险公司统一社会信用代码',
  `isFinancingAssure` int(2) DEFAULT NULL COMMENT '是否具有融资担保业务经营许可证 ',
  `securityAmount` varchar(32) NOT NULL COMMENT '担保金额 ',
  `projectSource` varchar(128) NOT NULL COMMENT '项目来源 ',
  `sourceProductUrl` varchar(256) NOT NULL COMMENT '原产品链接 ',
  `date_created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='散标(标的)数据临时表';

-- ----------------------------
-- Records of tmp_2_1
-- ----------------------------

-- ----------------------------
-- Table structure for tmp_2_2
-- ----------------------------
DROP TABLE IF EXISTS `tmp_2_2`;
CREATE TABLE `tmp_2_2` (
  `sourceProductCode` varchar(64) NOT NULL COMMENT '原散标编号 ',
  `loanCreditRating` varchar(10) NOT NULL COMMENT '借款主体信用评级 '
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='散标(标的)数据临时表_2';

-- ----------------------------
-- Records of tmp_2_2
-- ----------------------------

-- ----------------------------
-- Table structure for tmp_2_3
-- ----------------------------
DROP TABLE IF EXISTS `tmp_2_3`;
CREATE TABLE `tmp_2_3` (
  `sourceProductCode` varchar(64) NOT NULL COMMENT '原散标编号 ',
  `sourceProductUrl` varchar(256) NOT NULL COMMENT '原产品链接 '
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='散标(标的)数据临时表_3';

-- ----------------------------
-- Records of tmp_2_3
-- ----------------------------

-- ----------------------------
-- Table structure for tmp_2_4
-- ----------------------------
DROP TABLE IF EXISTS `tmp_2_4`;
CREATE TABLE `tmp_2_4` (
  `sourceProductCode` varchar(64) NOT NULL COMMENT '原散标编号 ',
  `productStartTime` varchar(40) NOT NULL COMMENT '开标时间 '
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='散标(标的)数据临时表_4';

-- ----------------------------
-- Records of tmp_2_4
-- ----------------------------

-- ----------------------------
-- Procedure structure for proc_sync_all
-- ----------------------------
DROP PROCEDURE IF EXISTS `proc_sync_all`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `proc_sync_all`()
BEGIN
 DECLARE success INTEGER DEFAULT 1;  
	
 DECLARE CONTINUE HANDLER FOR SQLEXCEPTION SET success = 0;  
	START TRANSACTION;  

	call `proc_sync_debt`();
	call `proc_sync_repayment_plan`();
	CALL `proc_sync_status`();
	CALL `proc_sync_take_info`();
	CALL `proc_sync_transaction`();
	CALL `proc_sync_transfer_info`();
	CALL `proc_sync_transfer_project`();
	CALL `proc_sync_transfer_status`();
	CALL `proc_sync_user`();
	CALL `proc_sync_user_account`();
	IF success = 0 THEN  
            ROLLBACK;  
        ELSE  
            COMMIT;  
        END IF;  
   select success;
    END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for proc_sync_debt
-- ----------------------------
DROP PROCEDURE IF EXISTS `proc_sync_debt`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `proc_sync_debt`()
BEGIN
-- 去重1  将所有重复数据状态设为2
UPDATE sync_debt SET `status` = 2 WHERE FIND_IN_SET(id,
(
SELECT  GROUP_CONCAT(id) FROM 
(
SELECT GROUP_CONCAT(id) id FROM `sync_debt` 
WHERE `status` = 0
GROUP BY 
DATE_FORMAT(`date_created`,'%Y-%m-%d %T')
   ,`dept_id`,`product_start_time`,
  `product_reg_type`,`product_name`,`bank_no`,
  `source_product_code`,`user_idcard`,`loan_use`,`loan_describe`,
  `loan_rate`,`amount`,`rate`,`term`,`pay_type`,
  `service_cost`,`risk_margin`,`loan_type`,`loan_credit_rating`,
  `security_info`,`collateral_desc`,`collateral_info`,`overdue_limmit`,`bad_debt_limmit`,
  `amount_limmts`,`amount_limmtl`,`allow_transfer`,`close_limmit`,
  `security_type`,`security_company_name`,`security_company_idcard`,
  `is_financing_assure`,`security_amount`,`project_source`,`source_product_url`
  HAVING COUNT(1) > 1) t));
    
    
-- 去重2  从重复的数据中选出一条改为待同步
UPDATE sync_debt SET `status` = 0 WHERE FIND_IN_SET(id,
(
SELECT  GROUP_CONCAT(id) FROM 
(
SELECT MAX(id) id FROM `sync_debt` 
WHERE `status` = 2
GROUP BY 
DATE_FORMAT(`date_created`,'%Y-%m-%d %T')
   ,`dept_id`,`product_start_time`,
  `product_reg_type`,`product_name`,`bank_no`,
  `source_product_code`,`user_idcard`,`loan_use`,`loan_describe`,
  `loan_rate`,`amount`,`rate`,`term`,`pay_type`,
  `service_cost`,`risk_margin`,`loan_type`,`loan_credit_rating`,
  `security_info`,`collateral_desc`,`collateral_info`,`overdue_limmit`,`bad_debt_limmit`,
  `amount_limmts`,`amount_limmtl`,`allow_transfer`,`close_limmit`,
  `security_type`,`security_company_name`,`security_company_idcard`,
  `is_financing_assure`,`security_amount`,`project_source`,`source_product_url`
  HAVING COUNT(1) > 1) t));   
    
    update `sync_debt` set `status` = 4 where status = 0;
    
	INSERT INTO `yg_data_submission`.`inf_debt` (
  
	  `date_created`,
	  `dept_id`,
	  `product_start_time`,
	  `product_reg_type`,
	  `product_name`,
	  `bank_no`,
	  `source_product_code`,
	  `user_idcard`,
	  `loan_use`,
	  `loan_describe`,
	  `loan_rate`,
	  `amount`,
	  `rate`,
	  `term`,
	  `pay_type`,
	  `service_cost`,
	  `risk_margin`,
	  `loan_type`,
	  `loan_credit_rating`,
	  `security_info`,
	  `collateral_desc`,
	  `collateral_info`,
	  `overdue_limmit`,
	  `bad_debt_limmit`,
	  `amount_limmts`,
	  `amount_limmtl`,
	  `allow_transfer`,
	  `close_limmit`,
	  `security_type`,
	  `security_company_name`,
	  `security_company_idcard`,
	  `is_financing_assure`,
	  `security_amount`,
	  `project_source`,
	  `source_product_url`
	) 
select DISTINCT
	
	`date_created`,
	`dept_id`,
	`product_start_time`,
	`product_reg_type`,
	`product_name`,
	`bank_no`,
	`source_product_code`,
	`user_idcard`,
	`loan_use`,
	`loan_describe`,
	`loan_rate`,
	`amount`,
	`rate`,
	`term`,
	`pay_type`,
	`service_cost`,
	`risk_margin`,
	`loan_type`,
	`loan_credit_rating`,
	`security_info`,
	`collateral_desc`,
	`collateral_info`,
	`overdue_limmit`,
	`bad_debt_limmit`,
	`amount_limmts`,
	`amount_limmtl`,
	`allow_transfer`,
	`close_limmit`,
	`security_type`,
	`security_company_name`,
	`security_company_idcard`,
	`is_financing_assure`,
	`security_amount`,
	`project_source`,
	`source_product_url`
 from `sync_debt` where `status` = 4;
update sync_debt set `status` = 1,sync_time = now() where `status` = 4;
    END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for proc_sync_repayment_plan
-- ----------------------------
DROP PROCEDURE IF EXISTS `proc_sync_repayment_plan`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `proc_sync_repayment_plan`()
BEGIN
    
-- 去重1  将所有重复数据状态设为2
UPDATE sync_repayment_plan SET `status` = 2 WHERE FIND_IN_SET(id,
(
SELECT  GROUP_CONCAT(id) FROM 
(
SELECT GROUP_CONCAT(id) id FROM `sync_repayment_plan` 
WHERE `status` = 0
GROUP BY 
DATE_FORMAT(`date_created`,'%Y-%m-%d %T'),
   `dept_id`,
  `source_product_code`,
  `user_idcard`,
  `total_issue`,
  `issue`,
  `replan_id`,
  `cur_fund`,
  `cur_interest`,
  `repay_time`
  HAVING COUNT(1) > 1) t));
    
    
-- 去重2  从重复的数据中选出一条改为待同步
UPDATE sync_repayment_plan SET `status` = 0 WHERE FIND_IN_SET(id,
(
SELECT  GROUP_CONCAT(id) FROM 
(
SELECT MAX(id) id FROM `sync_repayment_plan` 
WHERE `status` = 2
GROUP BY 
DATE_FORMAT(`date_created`,'%Y-%m-%d %T')
   ,`dept_id`,
  `source_product_code`,
  `user_idcard`,
  `total_issue`,
  `issue`,
  `replan_id`,
  `cur_fund`,
  `cur_interest`,
  `repay_time`
  HAVING COUNT(1) > 1) t));   
  
    
-- 同步
    
UPDATE `sync_repayment_plan` SET `status` = 4 WHERE STATUS = 0;
        
	
INSERT INTO `yg_data_submission`.`inf_repayment_plan` (
  `date_created`,
  `dept_id`,
  `source_product_code`,
  `user_idcard`,
  `total_issue`,
  `issue`,
  `replan_id`,
  `cur_fund`,
  `cur_interest`,
  `repay_time`
) 
SELECT DISTINCT
	  `date_created`,
  `dept_id`,
  `source_product_code`,
  `user_idcard`,
  `total_issue`,
  `issue`,
  `replan_id`,
  `cur_fund`,
  `cur_interest`,
  `repay_time`
 from `sync_repayment_plan` where `status` = 4;
 
update sync_repayment_plan set `status` = 1,sync_time = now() where `status` = 4;
    END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for proc_sync_status
-- ----------------------------
DROP PROCEDURE IF EXISTS `proc_sync_status`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `proc_sync_status`()
BEGIN
-- 去重1  将所有重复数据状态设为2
UPDATE sync_status SET `status` = 2 WHERE FIND_IN_SET(id,
(
SELECT  GROUP_CONCAT(id) FROM 
(
SELECT GROUP_CONCAT(id) id FROM `sync_status` 
WHERE `status` = 0
GROUP BY 
DATE_FORMAT(`date_created`,'%Y-%m-%d %T'),
   `dept_id`,
  `source_product_code`,
  `source_financing_code`,
  `product_status`,
  `product_status_desc`,
  `product_date`
  HAVING COUNT(1) > 1) t));
    
    
-- 去重2  从重复的数据中选出一条改为待同步
UPDATE sync_status SET `status` = 0 WHERE FIND_IN_SET(id,
(
SELECT  GROUP_CONCAT(id) FROM 
(
SELECT MAX(id) id FROM `sync_status` 
WHERE `status` = 2
GROUP BY 
DATE_FORMAT(`date_created`,'%Y-%m-%d %T'),
  `dept_id`,
  `source_product_code`,
  `source_financing_code`,
  `product_status`,
  `product_status_desc`,
  `product_date`
  HAVING COUNT(1) > 1) t));   
  
  
  
  
    
    update `sync_status` set `status` = 4 where `status` = 0;
    
	
INSERT INTO `yg_data_submission`.`inf_debt_status` (
    `date_created`,
  `dept_id`,
  `source_product_code`,
  `source_financing_code`,
  `product_status`,
  `product_status_desc`,
  `product_date`
) 
SELECT DISTINCT
  `date_created`,
  `dept_id`,
  `source_product_code`,
  `source_financing_code`,
  `product_status`,
  `product_status_desc`,
  `product_date`
 from `sync_status` where `status` = 4;
 
update sync_status set `status` = 1,sync_time = now() where `status` = 4;
    END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for proc_sync_take_info
-- ----------------------------
DROP PROCEDURE IF EXISTS `proc_sync_take_info`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `proc_sync_take_info`()
BEGIN
-- 去重1  将所有重复数据状态设为2
UPDATE sync_take_info SET `status` = 2 WHERE FIND_IN_SET(id,
(
SELECT  GROUP_CONCAT(id) FROM 
(
SELECT GROUP_CONCAT(id) id FROM `sync_take_info` 
WHERE `status` = 0
GROUP BY 
DATE_FORMAT(`date_created`,'%Y-%m-%d %T'),
      `dept_id`,
  `un_fin_claim_id`,
  `transfer_id`,
  `fin_claim_id`,
  `user_idcard_hash`,
  `take_amount`,
  `take_interest`,
  `float_money`,
  `take_rate`,
  `take_time`,
  `redpackage`,
  `lock_time`
  HAVING COUNT(1) > 1) t));
    
    
-- 去重2  从重复的数据中选出一条改为待同步
UPDATE sync_take_info SET `status` = 0 WHERE FIND_IN_SET(id,
(
SELECT  GROUP_CONCAT(id) FROM 
(
SELECT MAX(id) id FROM `sync_take_info` 
WHERE `status` = 2
GROUP BY 
DATE_FORMAT(`date_created`,'%Y-%m-%d %T'),
    `dept_id`,
  `un_fin_claim_id`,
  `transfer_id`,
  `fin_claim_id`,
  `user_idcard_hash`,
  `take_amount`,
  `take_interest`,
  `float_money`,
  `take_rate`,
  `take_time`,
  `redpackage`,
  `lock_time`
  HAVING COUNT(1) > 1) t));   
  
    
update `sync_take_info` set `status` = 4 where `status` = 0;
    
INSERT INTO `yg_data_submission`.`inf_take_info` (
  
  `date_created`,
  `dept_id`,
  `un_fin_claim_id`,
  `transfer_id`,
  `fin_claim_id`,
  
  `take_amount`,
  `take_interest`,
  `float_money`,
  `take_rate`,
  `take_time`,
  `redpackage`,
  `lock_time`
) 
SELECT DISTINCT
    `date_created`,
  `dept_id`,
  `un_fin_claim_id`,
  `transfer_id`,
  `fin_claim_id`,
  
  `take_amount`,
  `take_interest`,
  `float_money`,
  `take_rate`,
  `take_time`,
  `redpackage`,
  `lock_time`
 from `sync_take_info` where `status` = 4;
 
update sync_take_info set `status` = 1,sync_time = now() where `status` = 4;
    END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for proc_sync_transaction
-- ----------------------------
DROP PROCEDURE IF EXISTS `proc_sync_transaction`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `proc_sync_transaction`()
BEGIN
-- 去重1  将所有重复数据状态设为2
UPDATE sync_transaction SET `status` = 2 WHERE FIND_IN_SET(id,
(
SELECT  GROUP_CONCAT(id) FROM 
(
SELECT GROUP_CONCAT(id) id FROM `sync_transaction` 
WHERE `status` = 0
GROUP BY 
DATE_FORMAT(`date_created`,'%Y-%m-%d %T'),
   `dept_id`,
  `trans_time`,
  `trans_id`,
  `bank_trans_id`,
  `source_product_code`,
  `source_product_name`,
  `source_financing_code`,
  `source_financing_name`,
  `fin_claim_id`,
  `transfer_id`,
  `replan_id`,
  `trans_type`,
  `trans_type_dec`,
  `trans_money`,
  `trans_date`,
  `trans_payment`,
  `user_idcard`,
  `trans_bank`
  HAVING COUNT(1) > 1) t));
    
    
-- 去重2  从重复的数据中选出一条改为待同步
UPDATE sync_transaction SET `status` = 0 WHERE FIND_IN_SET(id,
(
SELECT  GROUP_CONCAT(id) FROM 
(
SELECT MAX(id) id FROM `sync_transaction` 
WHERE `status` = 2
GROUP BY 
DATE_FORMAT(`date_created`,'%Y-%m-%d %T'),
   `dept_id`,
  `trans_time`,
  `trans_id`,
  `bank_trans_id`,
  `source_product_code`,
  `source_product_name`,
  `source_financing_code`,
  `source_financing_name`,
  `fin_claim_id`,
  `transfer_id`,
  `replan_id`,
  `trans_type`,
  `trans_type_dec`,
  `trans_money`,
  `trans_date`,
  `trans_payment`,
  `user_idcard`,
  `trans_bank`
  HAVING COUNT(1) > 1) t));   
    
  
  
  
    
    update `sync_transaction` set `status` = 4 where `status` = 0;
  
  
INSERT INTO `yg_data_submission`.`inf_transaction` (
  
  `date_created`,
  `dept_id`,
  
  
  `trans_time`,
  `trans_id`,
  `bank_trans_id`,
  `source_product_code`,
  `source_product_name`,
  `source_financing_code`,
  `source_financing_name`,
  `fin_claim_id`,
  `transfer_id`,
  `replan_id`,
  `trans_type`,
  `trans_type_dec`,
  `trans_money`,
  `trans_date`,
  `trans_payment`,
  `user_idcard`,
  `trans_bank`
) 
SELECT DISTINCT
     `date_created`,
  `dept_id`,
  `trans_time`,
  `trans_id`,
  `bank_trans_id`,
  `source_product_code`,
  `source_product_name`,
  `source_financing_code`,
  `source_financing_name`,
  `fin_claim_id`,
  `transfer_id`,
  `replan_id`,
  `trans_type`,
  `trans_type_dec`,
  `trans_money`,
  `trans_date`,
  `trans_payment`,
  `user_idcard`,
  `trans_bank`
 from `sync_transaction` where `status` = 4;
 
update sync_transaction set `status` = 1,sync_time = now() where `status` = 4;
    END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for proc_sync_transfer_info
-- ----------------------------
DROP PROCEDURE IF EXISTS `proc_sync_transfer_info`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `proc_sync_transfer_info`()
BEGIN
-- 去重1  将所有重复数据状态设为2
UPDATE sync_transfer_info SET `status` = 2 WHERE FIND_IN_SET(id,
(
SELECT  GROUP_CONCAT(id) FROM 
(
SELECT GROUP_CONCAT(id) id FROM `sync_transfer_info` 
WHERE `status` = 0
GROUP BY 
DATE_FORMAT(`date_created`,'%Y-%m-%d %T'),
    `dept_id`,
  `fin_claim_id`,
  `source_product_code`,
  `user_idcard_hash`,
  `inv_amount`,
  `inv_rate`,
  `inv_time`,
  `redpackage`,
  `lock_time`
  HAVING COUNT(1) > 1) t));
    
    
-- 去重2  从重复的数据中选出一条改为待同步
UPDATE sync_transfer_info SET `status` = 0 WHERE FIND_IN_SET(id,
(
SELECT  GROUP_CONCAT(id) FROM 
(
SELECT MAX(id) id FROM `sync_transfer_info` 
WHERE `status` = 2
GROUP BY 
DATE_FORMAT(`date_created`,'%Y-%m-%d %T'),
   `dept_id`,
  `fin_claim_id`,
  `source_product_code`,
  `user_idcard_hash`,
  `inv_amount`,
  `inv_rate`,
  `inv_time`,
  `redpackage`,
  `lock_time`
  HAVING COUNT(1) > 1) t));   
  
  
    
    update `sync_transfer_info` set `status` = 4 where `status` = 0;
    
	
INSERT INTO `yg_data_submission`.`inf_transfer_info` (
  
  `date_created`,
  `dept_id`,
  `fin_claim_id`,
  `source_product_code`,
  
  `inv_amount`,
  `inv_rate`,
  `inv_time`,
  `redpackage`,
  `lock_time`
  
) 
SELECT DISTINCT
 `date_created`,
  `dept_id`,
  `fin_claim_id`,
  `source_product_code`,
  `inv_amount`,
  `inv_rate`,
  `inv_time`,
  `redpackage`,
  `lock_time`  
  
 from `sync_transfer_info` where `status` = 4;
 
update sync_transfer_info set `status` = 1,sync_time = now() where `status` = 4;
    END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for proc_sync_transfer_project
-- ----------------------------
DROP PROCEDURE IF EXISTS `proc_sync_transfer_project`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `proc_sync_transfer_project`()
BEGIN
-- 去重1  将所有重复数据状态设为2
UPDATE sync_transfer_project SET `status` = 2 WHERE FIND_IN_SET(id,
(
SELECT  GROUP_CONCAT(id) FROM 
(
SELECT GROUP_CONCAT(id) id FROM `sync_transfer_project` 
WHERE `status` = 0
GROUP BY 
DATE_FORMAT(`date_created`,'%Y-%m-%d %T'),
   `dept_id`,
  `transfer_id`,
  `bank_no`,
  `from_type`,
  `fin_claim_id`,
  `user_idcard_hash`,
  `source_product_code`,
  `source_financing_code`,
  `transfer_amount`,
  `transfer_interest`,
  `float_money`,
  `transfer_date`,
  `source_product_url`
  HAVING COUNT(1) > 1) t));
    
    
-- 去重2  从重复的数据中选出一条改为待同步
UPDATE sync_transfer_project SET `status` = 0 WHERE FIND_IN_SET(id,
(
SELECT  GROUP_CONCAT(id) FROM 
(
SELECT MAX(id) id FROM `sync_transfer_project` 
WHERE `status` = 2
GROUP BY 
DATE_FORMAT(`date_created`,'%Y-%m-%d %T'),
  `dept_id`,
  `transfer_id`,
  `bank_no`,
  `from_type`,
  `fin_claim_id`,
  `user_idcard_hash`,
  `source_product_code`,
  `source_financing_code`,
  `transfer_amount`,
  `transfer_interest`,
  `float_money`,
  `transfer_date`,
  `source_product_url`
  HAVING COUNT(1) > 1) t));   
  
    
    update `sync_transfer_project` set `status` = 4 where `status` = 0;
    
	
INSERT INTO `yg_data_submission`.`inf_transfer_project` (
  `date_created`,
  `dept_id`,
  `transfer_id`,
  `bank_no`,
  `from_type`,
  `fin_claim_id`,
  `source_product_code`,
  `source_financing_code`,
  `transfer_amount`,
  `transfer_interest`,
  `float_money`,
  `transfer_date`,
  `source_product_url`
) 
select 
  `date_created`,
  `dept_id`,
  `transfer_id`,
  `bank_no`,
  `from_type`,
  `fin_claim_id`,
  `source_product_code`,
  `source_financing_code`,
  `transfer_amount`,
  `transfer_interest`,
  `float_money`,
  `transfer_date`,
  `source_product_url`
  
 from `sync_transfer_project` where `status` = 4;
 
update sync_transfer_project set `status` = 1,sync_time = now() where `status` = 4;
    END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for proc_sync_transfer_status
-- ----------------------------
DROP PROCEDURE IF EXISTS `proc_sync_transfer_status`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `proc_sync_transfer_status`()
BEGIN
    
    
    -- 去重1  将所有重复数据状态设为2
UPDATE sync_transfer_status SET `status` = 2 WHERE FIND_IN_SET(id,
(
SELECT  GROUP_CONCAT(id) FROM 
(
SELECT GROUP_CONCAT(id) id FROM `sync_transfer_status` 
WHERE `status` = 0
GROUP BY 
DATE_FORMAT(`date_created`,'%Y-%m-%d %T'),
    `dept_id`,
  `transfer_id`,
  `transfer_status`,
  `amount`,
  `interest`,
  `float_money`,
  `product_date`
  HAVING COUNT(1) > 1) t));
    
    
-- 去重2  从重复的数据中选出一条改为待同步
UPDATE sync_transfer_status SET `status` = 0 WHERE FIND_IN_SET(id,
(
SELECT  GROUP_CONCAT(id) FROM 
(
SELECT MAX(id) id FROM `sync_transfer_status` 
WHERE `status` = 2
GROUP BY 
DATE_FORMAT(`date_created`,'%Y-%m-%d %T'),
  `dept_id`,
  `transfer_id`,
  `transfer_status`,
  `amount`,
  `interest`,
  `float_money`,
  `product_date`
  HAVING COUNT(1) > 1) t));   
   
    
    
    
    
    
    
    
    
    update `sync_transfer_status` set `status` = 4 where `status` = 0;
    
	INSERT INTO `yg_data_submission`.`inf_transfer_status` (
  `date_created`,
  `dept_id`,
  `transfer_id`,
  `transfer_status`,
  `amount`,
  `interest`,
  `float_money`,
  `product_date`
) 
SELECT DISTINCT
  `date_created`,
  `dept_id`,
  `transfer_id`,
  `transfer_status`,
  `amount`,
  `interest`,
  `float_money`,
  `product_date`
  
 from `sync_transfer_status` where `status` = 4;
 
update sync_transfer_status set `status` = 1,sync_time = now() where `status` = 4;
    END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for proc_sync_user
-- ----------------------------
DROP PROCEDURE IF EXISTS `proc_sync_user`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `proc_sync_user`()
BEGIN
    
    -- 去重1  将所有重复数据状态设为2
UPDATE sync_user SET `status` = 2 WHERE FIND_IN_SET(id,
(
SELECT  GROUP_CONCAT(id) FROM 
(
SELECT GROUP_CONCAT(id) id FROM `sync_user` 
WHERE `status` = 0
GROUP BY 
DATE_FORMAT(`date_created`,'%Y-%m-%d %T'),
   `dept_id`,
  `user_create_time`,
  `user_status`,
  `user_type`,
  `user_attr`,
  `user_name`,
  `countries`,
  `card_type`,
  `user_idcard`,
  `user_idcard_hash`,
  `user_phone`,
  `user_lawperson`,
  `user_fund`,
  `user_province`,
  `user_address`,
  `register_date`,
  `user_mail`,
  `user_ascription`,
  `user_age`,
  `user_sex`,
  `phone_ascription`,
  `risk_rating`,
  `user_pay`,
  `user_pay_account`,
  `user_bank`,
  `user_bank_account`
  HAVING COUNT(1) > 1) t));
    
    
-- 去重2  从重复的数据中选出一条改为待同步
UPDATE sync_user SET `status` = 0 WHERE FIND_IN_SET(id,
(
SELECT  GROUP_CONCAT(id) FROM 
(
SELECT MAX(id) id FROM `sync_user` 
WHERE `status` = 2
GROUP BY 
DATE_FORMAT(`date_created`,'%Y-%m-%d %T'),
  `dept_id`,
  `user_create_time`,
  `user_status`,
  `user_type`,
  `user_attr`,
  `user_name`,
  `countries`,
  `card_type`,
  `user_idcard`,
  `user_idcard_hash`,
  `user_phone`,
  `user_lawperson`,
  `user_fund`,
  `user_province`,
  `user_address`,
  `register_date`,
  `user_mail`,
  `user_ascription`,
  `user_age`,
  `user_sex`,
  `phone_ascription`,
  `risk_rating`,
  `user_pay`,
  `user_pay_account`,
  `user_bank`,
  `user_bank_account`
  HAVING COUNT(1) > 1) t));   
   
  
    
    update `sync_user` set `status` = 4 where `status` = 0;
    
INSERT INTO `yg_data_submission`.`inf_user` (
  
  `date_created`,
  `dept_id`,
  `user_create_time`,
  `user_status`,
  `user_type`,
  `user_attr`,
  `user_name`,
  `countries`,
  `card_type`,
  `user_idcard`,
  `user_idcard_hash`,
  `user_phone`,
  `user_lawperson`,
  `user_fund`,
  `user_province`,
  `user_address`,
  `register_date`,
  `user_mail`,
  `user_ascription`,
  `user_age`,
  `user_sex`,
  `phone_ascription`,
  `risk_rating`
) 
SELECT DISTINCT
  `date_created`,
  `dept_id`,
  `user_create_time`,
  `user_status`,
  `user_type`,
  `user_attr`,
  `user_name`,
  `countries`,
  `card_type`,
  `user_idcard`,
  `user_idcard_hash`,
  `user_phone`,
  `user_lawperson`,
  `user_fund`,
  `user_province`,
  `user_address`,
  `register_date`,
  `user_mail`,
  `user_ascription`,
  `user_age`,
  `user_sex`,
  `phone_ascription`,
  `risk_rating`
  
 from `sync_user` where `status` = 4;
 
update sync_user set `status` = 1,sync_time = now() where `status` = 4;
    END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for proc_sync_user_account
-- ----------------------------
DROP PROCEDURE IF EXISTS `proc_sync_user_account`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `proc_sync_user_account`()
BEGIN
    
    -- 去重1  将所有重复数据状态设为2
UPDATE sync_user_account SET `status` = 2 WHERE FIND_IN_SET(id,
(
SELECT  GROUP_CONCAT(id) FROM 
(
SELECT GROUP_CONCAT(id) id FROM `sync_user_account` 
WHERE `status` = 0
GROUP BY 
DATE_FORMAT(`date_created`,'%Y-%m-%d %T'),
    `dept_id`,
  `user_name`,
  `user_idcard`,
  `user_phone`,
  `user_pay`,
  `user_pay_account`,
  `user_bank`,
  `user_bank_account`
  HAVING COUNT(1) > 1) t));
    
    
-- 去重2  从重复的数据中选出一条改为待同步
UPDATE sync_user_account SET `status` = 0 WHERE FIND_IN_SET(id,
(
SELECT  GROUP_CONCAT(id) FROM 
(
SELECT MAX(id) id FROM `sync_user_account` 
WHERE `status` = 2
GROUP BY 
DATE_FORMAT(`date_created`,'%Y-%m-%d %T'),
   `dept_id`,
  `user_name`,
  `user_idcard`,
  `user_phone`,
  `user_pay`,
  `user_pay_account`,
  `user_bank`,
  `user_bank_account`
  HAVING COUNT(1) > 1) t));   
   
    
    update `sync_user_account` set `status` = 4 where `status` = 0;
    
INSERT INTO `yg_data_submission`.`inf_user_account` (
  
  `date_created`,
  `dept_id`,
  
  `user_name`,
  `user_idcard`,
  `user_phone`,
  `user_pay`,
  `user_pay_account`,
  `user_bank`,
  `user_bank_account`
) 
SELECT DISTINCT
  
    `date_created`,
  `dept_id`,
  `user_name`,
  `user_idcard`,
  `user_phone`,
  `user_pay`,
  `user_pay_account`,
  `user_bank`,
  `user_bank_account`
  
 from `sync_user_account` where `status` = 4;
 
update sync_user_account set `status` = 1,sync_time = now() where `status` = 4;
    END
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `triger_sync_debt`;
DELIMITER ;;
CREATE TRIGGER `triger_sync_debt` AFTER INSERT ON `sync_debt` FOR EACH ROW BEGIN
    
    /*
	INSERT INTO `yg_data_submission`.`inf_debt` (
  
	  `date_created`,
	  `dept_id`,
	  `product_start_time`,
	  `product_reg_type`,
	  `product_name`,
	  `bank_no`,
	  `source_product_code`,
	  `loan_use`,
	  `loan_describe`,
	  `loan_rate`,
	  `amount`,
	  `rate`,
	  `term`,
	  `pay_type`,
	  `service_cost`,
	  `risk_margin`,
	  `loan_type`,
	  `loan_credit_rating`,
	  `security_info`,
	  `collateral_desc`,
	  `collateral_info`,
	  `overdue_limmit`,
	  `bad_debt_limmit`,
	  `amount_limmts`,
	  `amount_limmtl`,
	  `allow_transfer`,
	  `close_limmit`,
	  `security_type`,
	  `security_company_name`,
	  `security_company_idcard`,
	  `is_financing_assure`,
	  `security_amount`,
	  `project_source`,
	  `source_product_url`
	) 
value( 
  new.`date_created`,
  new.`dept_id`,
  new.`product_start_time`,
  new.`product_reg_type`,
  new.`product_name`,
  new.`bank_no`,
  new.`source_product_code`,
  new.`loan_use`,
  new.`loan_describe`,
  new.`loan_rate`,
  new.`amount`,
  new.`rate`,
  new.`term`,
  new.`pay_type`,
  new.`service_cost`,
  new.`risk_margin`,
  new.`loan_type`,
  new.`loan_credit_rating`,
  new.`security_info`,
  new.`collateral_desc`,
  new.`collateral_info`,
  new.`overdue_limmit`,
  new.`bad_debt_limmit`,
  new.`amount_limmts`,
  new.`amount_limmtl`,
  new.`allow_transfer`,
  new.`close_limmit`,
  new.`security_type`,
  new.`security_company_name`,
  new.`security_company_idcard`,
  new.`is_financing_assure`,
  new.`security_amount`,
  new.`project_source`,
  new.`source_product_url`
);
*/
    END
;;
DELIMITER ;
