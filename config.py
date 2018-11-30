#!/usr/bin/python
# -*- coding: UTF-8 -*-
import os
# host = "172.16.1.23"
# user = "shujvbs_20181121"
# passwd = "KDQT4u$fWuR"
# db = "yg_data_submission"
# port = 3306
# log_filepath="/data/logs/"

host = "172.16.1.23"
user = "shujvbs_20181121"
passwd = "KDQT4u$fWuR"
db = "yg_data_submission"
port = 3306
log_filepath="/data/logs/" if os.environ.get("SHELL", "") else "Logs\\"
os.makedirs(log_filepath)
