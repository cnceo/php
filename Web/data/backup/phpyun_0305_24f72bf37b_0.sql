#dbname:toptophr_com#phpyun#version:3.2#phpyun#def:phpyun_#phpyun#charset:GBK#phpyun#Time:2015-03-05 09:21
#phpyun# Type: 
# phpyun: http://www.phpyun.com
#
set sql_mode='';
DROP TABLE IF EXISTS phpyun_ad;
CREATE TABLE phpyun_ad (
  id int(20) NOT NULL auto_increment,
  ad_name varchar(100) NOT NULL,
  did varchar(100) NOT NULL default '0',
  time_start varchar(100) NOT NULL,
  time_end varchar(100) NOT NULL,
  ad_type varchar(10) NOT NULL,
  word_info text NOT NULL,
  word_url varchar(100) NOT NULL,
  pic_url varchar(100) NOT NULL,
  pic_src varchar(100) NOT NULL,
  pic_width varchar(100) NOT NULL,
  pic_height varchar(100) NOT NULL,
  flash_url varchar(100) default NULL,
  flash_src varchar(100) default NULL,
  flash_width varchar(100) default NULL,
  flash_height varchar(100) default NULL,
  class_id int(20) default NULL,
  is_check int(2) default '0',
  is_open int(1) default '0',
  target int(2) default NULL,
  hits int(11) default '0',
  remark varchar(255) default NULL,
  sort int(11) default '0',
  PRIMARY KEY  (id)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS phpyun_ad_class;
CREATE TABLE phpyun_ad_class (
  id int(20) NOT NULL auto_increment,
  class_name varchar(100) NOT NULL,
  orders int(20) NOT NULL,
  href varchar(100) NOT NULL,
  integral_buy varchar(100) default '0',
  `type` int(11) default '1',
  PRIMARY KEY  (id)
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS phpyun_adclick;
CREATE TABLE phpyun_adclick (
  id int(11) NOT NULL auto_increment,
  aid int(11) default NULL,
  uid int(11) default NULL,
  ip varchar(20) default NULL,
  addtime int(11) default NULL,
  PRIMARY KEY  (id)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS phpyun_admin_announcement;
CREATE TABLE phpyun_admin_announcement (
  id int(11) NOT NULL auto_increment,
  title varchar(255) NOT NULL,
  keyword varchar(255) NOT NULL,
  description varchar(255) NOT NULL,
  content text NOT NULL,
  `datetime` int(11) NOT NULL,
  did varchar(100) default NULL,
  PRIMARY KEY  (id)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS phpyun_admin_config;
CREATE TABLE phpyun_admin_config (
  `name` varchar(255) NOT NULL,
  config text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS phpyun_admin_link;
CREATE TABLE phpyun_admin_link (
  id int(8) NOT NULL auto_increment,
  link_name varchar(50) NOT NULL,
  link_url varchar(50) NOT NULL,
  img_type int(30) NOT NULL,
  pic varchar(50) NOT NULL,
  link_type varchar(1) NOT NULL,
  link_state int(1) NOT NULL default '0',
  link_sorting int(8) NOT NULL default '0',
  link_time varchar(20) NOT NULL,
  domain varchar(100) NOT NULL,
  tem_type int(11) NOT NULL default '1',
  PRIMARY KEY  (id)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS phpyun_admin_log;
CREATE TABLE phpyun_admin_log (
  id int(11) NOT NULL auto_increment,
  uid int(11) default NULL,
  username varchar(200) default NULL,
  content text,
  ctime int(11) default NULL,
  PRIMARY KEY  (id)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS phpyun_admin_navigation;
CREATE TABLE phpyun_admin_navigation (
  id int(11) NOT NULL auto_increment,
  `name` varchar(60) NOT NULL,
  keyid int(11) default '0',
  url varchar(50) default NULL,
  menu int(1) default NULL,
  classname varchar(100) default '0',
  sort int(5) default '0',
  display int(1) default NULL,
  PRIMARY KEY  (id)
) ENGINE=MyISAM AUTO_INCREMENT=1323 DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS phpyun_admin_template;
CREATE TABLE phpyun_admin_template (
  id int(20) NOT NULL auto_increment,
  `name` varchar(50) NOT NULL,
  tp_name varchar(50) NOT NULL,
  update_time int(32) NOT NULL,
  dir varchar(50) default NULL,
  PRIMARY KEY  (id)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS phpyun_admin_user;
CREATE TABLE phpyun_admin_user (
  uid int(3) NOT NULL auto_increment,
  m_id int(2) NOT NULL,
  username varchar(25) NOT NULL,
  `password` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  domain varchar(100) default NULL,
  lasttime int(11) default NULL,
  PRIMARY KEY  (uid)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS phpyun_admin_user_group;
CREATE TABLE phpyun_admin_user_group (
  id int(3) NOT NULL auto_increment,
  group_name varchar(100) NOT NULL,
  group_power text NOT NULL,
  PRIMARY KEY  (id)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS phpyun_answer;
CREATE TABLE phpyun_answer (
  id int(11) NOT NULL auto_increment,
  qid int(11) NOT NULL,
  uid int(11) NOT NULL,
  `comment` int(11) NOT NULL default '0',
  support int(11) NOT NULL default '0',
  oppose int(11) NOT NULL default '0',
  content text NOT NULL,
  add_time int(11) NOT NULL,
  PRIMARY KEY  (id)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS phpyun_answer_review;
CREATE TABLE phpyun_answer_review (
  id int(11) NOT NULL auto_increment,
  aid int(11) NOT NULL,
  qid int(11) default NULL,
  uid int(11) NOT NULL,
  content text NOT NULL,
  add_time int(11) NOT NULL,
  PRIMARY KEY  (id)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS phpyun_atn;
CREATE TABLE phpyun_atn (
  id int(11) NOT NULL auto_increment,
  uid int(11) NOT NULL,
  sc_uid int(11) NOT NULL,
  `time` int(11) NOT NULL,
  usertype int(11) default NULL,
  sc_usertype int(11) default NULL,
  PRIMARY KEY  (id)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS phpyun_attention;
CREATE TABLE phpyun_attention (
  id int(11) NOT NULL auto_increment,
  ids text NOT NULL,
  `type` int(11) NOT NULL,
  uid int(11) NOT NULL,
  PRIMARY KEY  (id)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS phpyun_bank;
CREATE TABLE phpyun_bank (
  id int(11) NOT NULL auto_increment,
  `name` varchar(200) default NULL,
  bank_name varchar(200) default NULL,
  bank_number varchar(200) default NULL,
  bank_address varchar(200) default NULL,
  PRIMARY KEY  (id)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS phpyun_banner;
CREATE TABLE phpyun_banner (
  id int(11) NOT NULL auto_increment,
  uid int(11) default NULL,
  pic varchar(100) default NULL,
  PRIMARY KEY  (id)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS phpyun_blacklist;
CREATE TABLE phpyun_blacklist (
  id int(11) NOT NULL auto_increment,
  p_uid int(11) default NULL,
  c_uid int(11) default NULL,
  inputtime int(11) default NULL,
  usertype int(1) default NULL,
  com_name varchar(100) default NULL,
  PRIMARY KEY  (id)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS phpyun_change;
CREATE TABLE phpyun_change (
  id int(11) NOT NULL auto_increment,
  uid int(11) default NULL,
  username varchar(50) default NULL,
  usertype int(11) default NULL,
  `name` varchar(50) default NULL,
  gid int(11) default NULL,
  integral int(11) default NULL,
  ctime int(11) default NULL,
  num int(11) default NULL,
  linktel varchar(100) default '',
  linkman varchar(200) default '',
  body varchar(255) default '',
  `status` int(11) default '0',
  statusbody text,
  PRIMARY KEY  (id)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS phpyun_city_class;
CREATE TABLE phpyun_city_class (
  id int(11) NOT NULL auto_increment,
  keyid int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  letter varchar(1) NOT NULL,
  display int(1) NOT NULL,
  sitetype int(2) NOT NULL,
  sort int(11) NOT NULL default '0',
  PRIMARY KEY  (id)
) ENGINE=MyISAM AUTO_INCREMENT=1391 DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS phpyun_comclass;
CREATE TABLE phpyun_comclass (
  id int(11) NOT NULL auto_increment,
  keyid int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  variable varchar(50) default NULL,
  sort int(11) default NULL,
  PRIMARY KEY  (id)
) ENGINE=MyISAM AUTO_INCREMENT=129 DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS phpyun_company;
CREATE TABLE phpyun_company (
  uid int(11) NOT NULL,
  `name` varchar(25) default NULL,
  hy int(5) default NULL,
  pr int(5) default NULL,
  provinceid int(5) default NULL,
  cityid int(5) default NULL,
  mun int(3) default NULL,
  sdate varchar(20) default NULL,
  money int(11) default NULL,
  content text,
  address varchar(100) default NULL,
  zip varchar(10) default NULL,
  linkman varchar(50) default NULL,
  linkjob varchar(50) default NULL,
  linkqq varchar(20) default NULL,
  linkphone varchar(20) default NULL,
  linktel varchar(50) default NULL,
  linkmail varchar(150) default NULL,
  website varchar(100) default NULL,
  x varchar(100) default NULL,
  y varchar(100) default NULL,
  logo varchar(100) default NULL,
  payd int(8) default '0',
  integral int(10) default '0',
  lastupdate varchar(10) default NULL,
  cloudtype int(2) default NULL,
  jobtime int(11) default NULL,
  r_status int(2) default '0',
  firmpic varchar(100) default NULL,
  rec int(11) default '0',
  hits int(11) default '0',
  ant_num int(11) default '0',
  pl_time int(11) default NULL,
  pl_status int(11) default '1',
  `order` int(11) unsigned default '0',
  admin_remark varchar(255) default NULL,
  email_dy int(11) default '0',
  msg_dy int(11) default '0',
  sync int(11) unsigned default '0',
  hy_dy varchar(100) default NULL,
  moblie_status int(1) default '0',
  email_status int(1) default '0',
  yyzz_status int(1) default '0',
  hottime int(11) default '0'
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS phpyun_company_cert;
CREATE TABLE phpyun_company_cert (
  id int(11) NOT NULL auto_increment,
  uid int(11) default NULL,
  `type` varchar(200) default NULL,
  `status` int(11) default '0',
  step int(11) default NULL,
  `check` varchar(200) default NULL,
  check2 varchar(200) default NULL,
  ctime int(11) default NULL,
  statusbody varchar(100) default NULL,
  PRIMARY KEY  (id)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS phpyun_company_job;
CREATE TABLE phpyun_company_job (
  id int(11) NOT NULL auto_increment,
  uid int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  hy int(5) default NULL,
  job1 int(5) default NULL,
  job1_son int(5) default NULL,
  job_post int(5) default NULL,
  provinceid int(5) default NULL,
  cityid int(5) default NULL,
  three_cityid int(5) default NULL,
  cert varchar(50) default NULL,
  salary int(5) default NULL,
  `type` int(5) NOT NULL,
  number int(2) NOT NULL,
  exp int(5) NOT NULL,
  report int(5) NOT NULL,
  sex int(5) NOT NULL,
  edu int(5) NOT NULL,
  marriage int(5) NOT NULL,
  description text NOT NULL,
  xuanshang int(11) NOT NULL default '0',
  xsdate int(11) default NULL,
  sdate int(11) NOT NULL,
  edate int(11) NOT NULL,
  jobhits int(10) NOT NULL default '0',
  lastupdate varchar(10) NOT NULL,
  rec int(2) default '0',
  cloudtype int(2) default NULL,
  state int(2) default '0',
  statusbody varchar(200) default '0',
  age int(11) default NULL,
  lang text,
  welfare text,
  com_name varchar(50) NOT NULL default '',
  pr int(5) default NULL,
  mun int(5) default NULL,
  com_provinceid int(5) default NULL,
  rating int(5) default NULL,
  `status` int(1) NOT NULL default '0',
  urgent int(1) default NULL,
  r_status int(1) default '0',
  end_email int(1) default '0',
  urgent_time int(11) default NULL,
  com_logo varchar(100) default NULL,
  autotype int(11) default '0',
  autotime int(11) default '0',
  is_link int(1) default '1',
  link_type int(1) default '1',
  `source` int(1) default '1',
  rec_time int(11) default '0',
  snum int(11) default '0',
  PRIMARY KEY  (id,`status`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS phpyun_company_job_link;
CREATE TABLE phpyun_company_job_link (
  id int(11) NOT NULL auto_increment,
  uid int(11) default NULL,
  jobid int(11) default NULL,
  link_man varchar(100) default NULL,
  link_moblie varchar(20) default NULL,
  email_type int(5) default NULL,
  is_email int(2) default '0',
  email varchar(100) default NULL,
  PRIMARY KEY  (id)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS phpyun_company_msg;
CREATE TABLE phpyun_company_msg (
  id int(11) NOT NULL auto_increment,
  uid int(11) default NULL,
  cuid int(11) default NULL,
  content text,
  ctime varchar(100) default NULL,
  `status` int(2) default NULL,
  reply text,
  reply_time int(11) default NULL,
  PRIMARY KEY  (id)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS phpyun_company_news;
CREATE TABLE phpyun_company_news (
  id int(11) NOT NULL auto_increment,
  uid int(11) default '0',
  title varchar(200) default '0',
  ctime int(11) default '0',
  body text,
  `status` int(2) default '0',
  statusbody text,
  PRIMARY KEY  (id)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS phpyun_company_order;
CREATE TABLE phpyun_company_order (
  id int(11) NOT NULL auto_increment,
  uid int(11) NOT NULL,
  order_id varchar(18) default NULL,
  order_type varchar(25) default NULL,
  order_price double(18,2) NOT NULL,
  order_time int(10) NOT NULL,
  order_state int(2) NOT NULL,
  order_remark text,
  order_bank varchar(150) NOT NULL default '0',
  `type` int(1) default NULL,
  rating int(10) default NULL,
  integral int(11) default NULL,
  is_invoice int(1) default '0',
  PRIMARY KEY  (id)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS phpyun_company_pay;
CREATE TABLE phpyun_company_pay (
  id int(11) NOT NULL auto_increment,
  order_id varchar(18) default NULL,
  order_price decimal(10,2) default NULL,
  pay_time int(11) default NULL,
  pay_state int(2) default NULL,
  com_id int(10) default NULL,
  pay_remark varchar(255) default NULL,
  `type` int(1) default NULL,
  pay_type int(4) default NULL,
  PRIMARY KEY  (id)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS phpyun_company_product;
CREATE TABLE phpyun_company_product (
  id int(11) NOT NULL auto_increment,
  uid int(11) default '0',
  title varchar(200) default '0',
  pic varchar(200) default '0',
  body text,
  ctime int(11) default '0',
  `status` int(2) default '0',
  statusbody text,
  PRIMARY KEY  (id)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS phpyun_company_rating;
CREATE TABLE phpyun_company_rating (
  id int(6) NOT NULL auto_increment,
  `name` varchar(200) default NULL,
  service_price varchar(100) default NULL,
  integral_buy varchar(100) default NULL,
  yh_price varchar(100) default NULL,
  yh_integral varchar(100) default NULL,
  time_start int(11) default NULL,
  time_end int(11) default NULL,
  `resume` int(5) default NULL,
  job_num int(11) default NULL,
  interview int(11) default NULL,
  editjob_num int(11) default NULL,
  breakjob_num int(11) default NULL,
  sort int(10) default NULL,
  display int(1) default NULL,
  explains varchar(255) default NULL,
  com_pic varchar(100) default NULL,
  com_color varchar(100) default NULL,
  `type` int(2) default NULL,
  category int(2) default NULL,
  msg_num int(11) default '0',
  service_time int(11) default NULL,
  coupon int(11) default '0',
  PRIMARY KEY  (id)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS phpyun_company_show;
CREATE TABLE phpyun_company_show (
  id int(11) NOT NULL auto_increment,
  title varchar(200) default NULL,
  picurl varchar(200) default NULL,
  body varchar(200) default NULL,
  ctime varchar(200) default NULL,
  uid varchar(200) default NULL,
  sort int(4) default '0',
  PRIMARY KEY  (id)
) ENGINE=MyISAM AUTO_INCREMENT=60 DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS phpyun_company_statis;
CREATE TABLE phpyun_company_statis (
  uid int(11) NOT NULL,
  pay double(10,2) NOT NULL default '0.00',
  integral varchar(10) NOT NULL default '0',
  sq_job int(6) unsigned NOT NULL,
  fav_job int(6) unsigned NOT NULL,
  rating int(5) unsigned default NULL,
  rating_name varchar(100) default NULL,
  vip_etime varchar(100) default '0',
  all_pay double(10,2) NOT NULL,
  consum_pay double(10,2) NOT NULL,
  rating_type int(11) default NULL,
  invite_resume int(10) default NULL,
  comtpl varchar(100) default '0',
  comtpl_all varchar(100) default NULL,
  job_num int(11) default '0',
  editjob_num int(11) default '0',
  breakjob_num int(11) default '0',
  down_resume int(10) default '0',
  qqshow int(11) default '0',
  qqcomment int(11) default '0',
  sinashare int(11) default '0',
  sinashow int(11) default '0',
  sinacomment int(11) default '0',
  qqwname varchar(100) default NULL,
  sinawname varchar(100) default NULL,
  qqshare int(11) default '0',
  msg_num int(11) default '0',
  autotime int(11) default '0',
  vip_stime int(11) default '0'
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS phpyun_company_tpl;
CREATE TABLE phpyun_company_tpl (
  id int(11) NOT NULL auto_increment,
  `name` varchar(100) default '0',
  url varchar(100) default '0',
  pic varchar(200) default '0',
  `type` int(10) default '0',
  price varchar(100) default '0',
  `status` int(10) default NULL,
  service_uid varchar(225) default '0',
  PRIMARY KEY  (id)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS phpyun_cron;
CREATE TABLE phpyun_cron (
  id int(10) NOT NULL auto_increment,
  `name` varchar(200) default NULL,
  dir varchar(200) default NULL,
  `type` int(11) default NULL,
  `week` int(11) default NULL,
  `month` int(10) default NULL,
  `hour` int(10) default NULL,
  `minute` int(10) default NULL,
  display int(1) default NULL,
  ctime int(11) default NULL,
  nowtime int(11) default '0',
  nexttime int(11) default '0',
  PRIMARY KEY  (id)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS phpyun_desc_class;
CREATE TABLE phpyun_desc_class (
  id int(11) NOT NULL auto_increment,
  `name` varchar(50) NOT NULL,
  sort int(11) default '0',
  PRIMARY KEY  (id)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS phpyun_description;
CREATE TABLE phpyun_description (
  id int(11) NOT NULL auto_increment,
  nid int(11) default NULL,
  `name` varchar(255) default NULL,
  url varchar(255) default NULL,
  title varchar(255) default NULL,
  keyword varchar(255) default NULL,
  descs text,
  top_tpl int(2) default NULL,
  top_tpl_dir varchar(255) default NULL,
  footer_tpl int(2) default NULL,
  footer_tpl_dir varchar(255) default NULL,
  content mediumtext,
  sort int(11) default NULL,
  is_nav int(1) default '0',
  ctime int(11) default NULL,
  is_menu int(11) default '0',
  is_type int(1) default '1',
  PRIMARY KEY  (id)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS phpyun_domain;
CREATE TABLE phpyun_domain (
  id int(11) NOT NULL auto_increment,
  title varchar(200) NOT NULL,
  domain varchar(200) NOT NULL,
  province int(11) default NULL,
  cityid int(11) default NULL,
  three_cityid int(11) default NULL,
  `type` int(2) NOT NULL,
  style varchar(100) NOT NULL,
  tpl varchar(20) default NULL,
  hy int(11) default NULL,
  fz_type int(11) NOT NULL,
  webtitle text,
  webkeyword text,
  webmeta text,
  weblogo varchar(255) default NULL,
  PRIMARY KEY  (id)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS phpyun_down_resume;
CREATE TABLE phpyun_down_resume (
  id int(11) NOT NULL auto_increment,
  uid int(11) default NULL,
  eid int(11) default NULL,
  comid int(11) default NULL,
  downtime int(11) default NULL,
  PRIMARY KEY  (id)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS phpyun_email_msg;
CREATE TABLE phpyun_email_msg (
  id int(11) NOT NULL auto_increment,
  uid int(11) default NULL,
  `name` varchar(100) default NULL,
  cuid int(11) default NULL,
  cname varchar(255) default '',
  email varchar(200) default NULL,
  title varchar(200) default NULL,
  content text,
  ctime int(11) default NULL,
  state int(1) default '0',
  PRIMARY KEY  (id)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS phpyun_fav_job;
CREATE TABLE phpyun_fav_job (
  id int(11) NOT NULL auto_increment,
  uid int(11) NOT NULL,
  com_id int(11) NOT NULL,
  com_name varchar(150) NOT NULL,
  `datetime` int(10) NOT NULL,
  `type` int(11) NOT NULL default '1',
  job_name varchar(150) default NULL,
  job_id int(11) default NULL,
  PRIMARY KEY  (id)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS phpyun_finder;
CREATE TABLE phpyun_finder (
  id int(11) NOT NULL auto_increment,
  uid int(11) default NULL,
  usertype int(1) default NULL,
  `name` varchar(100) default NULL,
  para varchar(255) default NULL,
  addtime int(11) default NULL,
  PRIMARY KEY  (id)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS phpyun_friend;
CREATE TABLE phpyun_friend (
  id int(11) NOT NULL auto_increment,
  uid int(11) default NULL,
  nid int(11) default NULL,
  `status` int(11) default NULL,
  uidtype int(2) default NULL,
  nidtype int(2) default NULL,
  PRIMARY KEY  (id)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS phpyun_friend_foot;
CREATE TABLE phpyun_friend_foot (
  id int(11) NOT NULL auto_increment,
  uid int(11) default NULL,
  fid int(11) default NULL,
  num int(11) default NULL,
  ctime int(11) default NULL,
  PRIMARY KEY  (id)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS phpyun_friend_info;
CREATE TABLE phpyun_friend_info (
  uid int(11) default NULL,
  nickname varchar(100) default NULL,
  sex int(1) default '3',
  pic varchar(100) default NULL,
  pic_big varchar(100) default NULL,
  description varchar(100) default NULL,
  birthday varchar(100) default NULL,
  usertype int(2) default NULL,
  iscert int(2) default '0'
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS phpyun_friend_message;
CREATE TABLE phpyun_friend_message (
  id int(11) NOT NULL auto_increment,
  pid int(11) NOT NULL,
  uid int(11) default NULL,
  u_name varchar(100) default NULL,
  fid int(11) default NULL,
  f_name varchar(100) default NULL,
  nid int(11) default '0',
  content varchar(225) default NULL,
  ctime int(11) default NULL,
  `status` int(11) default '0',
  remind_status int(1) default '0',
  PRIMARY KEY  (id)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS phpyun_friend_reply;
CREATE TABLE phpyun_friend_reply (
  id int(11) NOT NULL auto_increment,
  nid int(11) default NULL,
  fid int(11) default NULL,
  uid int(11) default NULL,
  reply varchar(225) default NULL,
  ctime int(11) default NULL,
  PRIMARY KEY  (id)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS phpyun_friend_state;
CREATE TABLE phpyun_friend_state (
  id int(11) NOT NULL auto_increment,
  uid int(11) default NULL,
  content varchar(225) default NULL,
  ctime int(11) default NULL,
  `type` int(11) default '1',
  msg_pic varchar(100) default NULL,
  PRIMARY KEY  (id)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS phpyun_hot_key;
CREATE TABLE phpyun_hot_key (
  id int(20) NOT NULL auto_increment,
  key_name varchar(100) NOT NULL,
  num int(20) NOT NULL default '0',
  `type` int(2) NOT NULL,
  size varchar(10) default NULL,
  `check` int(1) default '0',
  color varchar(10) default NULL,
  bold int(11) default NULL,
  tuijian int(11) default '0',
  wxtime int(11) default '0',
  wxuser varchar(100) default NULL,
  wxid varchar(100) default '0',
  PRIMARY KEY  (id)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS phpyun_hotjob;
CREATE TABLE phpyun_hotjob (
  id int(11) NOT NULL auto_increment,
  uid int(11) default NULL,
  username varchar(200) default NULL,
  rating varchar(20) default NULL,
  hot_pic varchar(100) default NULL,
  service_price int(11) default NULL,
  time_start int(11) default NULL,
  time_end int(11) default NULL,
  sort int(11) default '0',
  beizhu varchar(200) default NULL,
  PRIMARY KEY  (id)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS phpyun_industry;
CREATE TABLE phpyun_industry (
  id int(11) NOT NULL auto_increment,
  `name` varchar(50) NOT NULL,
  sort int(11) default '0',
  PRIMARY KEY  (id)
) ENGINE=MyISAM AUTO_INCREMENT=840 DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS phpyun_job_class;
CREATE TABLE phpyun_job_class (
  id int(11) NOT NULL auto_increment,
  keyid int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  sort int(11) NOT NULL,
  content text,
  PRIMARY KEY  (id)
) ENGINE=MyISAM AUTO_INCREMENT=953 DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS phpyun_look_job;
CREATE TABLE phpyun_look_job (
  id int(11) NOT NULL auto_increment,
  uid int(11) default NULL,
  jobid int(11) default NULL,
  com_id int(11) default NULL,
  `datetime` int(11) default NULL,
  `status` int(1) default '0',
  com_status int(1) default '0',
  PRIMARY KEY  (id)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS phpyun_look_resume;
CREATE TABLE phpyun_look_resume (
  id int(11) NOT NULL auto_increment,
  uid int(11) default NULL,
  com_id int(11) default NULL,
  resume_id int(11) default NULL,
  `datetime` int(11) default NULL,
  `status` int(1) default '0',
  com_status int(1) default '0',
  PRIMARY KEY  (id)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS phpyun_member;
CREATE TABLE phpyun_member (
  uid int(11) NOT NULL auto_increment,
  username varchar(100) default NULL,
  `password` varchar(32) default NULL,
  email varchar(100) default NULL,
  moblie varchar(20) default NULL,
  reg_ip varchar(20) default NULL,
  reg_date int(11) default NULL,
  login_ip varchar(20) default NULL,
  login_date int(11) default NULL,
  usertype int(1) NOT NULL default '1',
  login_hits int(11) default '0',
  salt varchar(6) default NULL,
  address varchar(100) default NULL,
  name_repeat int(2) default '0',
  qqid varchar(200) default NULL,
  `status` int(4) default NULL,
  pwuid int(11) default '0',
  pw_repeat int(1) default '0',
  lock_info varchar(200) default NULL,
  email_status int(1) default NULL,
  signature varchar(100) default NULL,
  sinaid varchar(100) default NULL,
  wxid varchar(100) default '0',
  wxname varchar(100) default NULL,
  wxbindtime int(11) default '0',
  passtext varchar(100) default NULL,
  `source` int(1) default '1',
  regcode int(10) default NULL,
  PRIMARY KEY  (uid)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS phpyun_member_log;
CREATE TABLE phpyun_member_log (
  id int(11) NOT NULL auto_increment,
  uid int(11) default NULL,
  opera int(11) default NULL,
  `type` int(11) default NULL,
  usertype int(11) default NULL,
  content text,
  ip varchar(20) default NULL,
  ctime int(11) default NULL,
  PRIMARY KEY  (id)
) ENGINE=MyISAM AUTO_INCREMENT=65 DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS phpyun_member_statis;
CREATE TABLE phpyun_member_statis (
  uid int(11) NOT NULL,
  integral varchar(10) NOT NULL default '0',
  pay double(10,2) NOT NULL default '0.00',
  resume_num int(10) NOT NULL,
  fav_jobnum int(10) NOT NULL,
  sq_jobnum int(10) NOT NULL,
  message_num int(10) NOT NULL,
  down_num int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS phpyun_message;
CREATE TABLE phpyun_message (
  id int(11) NOT NULL auto_increment,
  content varchar(255) NOT NULL,
  username varchar(20) default NULL,
  uid int(11) default NULL,
  `status` int(1) default '0',
  ctime int(11) default NULL,
  reply varchar(200) default '',
  reply_time int(11) default NULL,
  PRIMARY KEY  (id)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS phpyun_moblie_msg;
CREATE TABLE phpyun_moblie_msg (
  id int(11) NOT NULL auto_increment,
  uid int(11) default NULL,
  `name` varchar(100) default NULL,
  cuid int(11) default NULL,
  cname varchar(255) default NULL,
  moblie varchar(200) default NULL,
  content varchar(200) default NULL,
  ctime int(11) default NULL,
  state int(11) default NULL,
  PRIMARY KEY  (id)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS phpyun_msg;
CREATE TABLE phpyun_msg (
  id int(11) NOT NULL auto_increment,
  uid int(11) default NULL,
  username varchar(100) default NULL,
  jobid int(11) default NULL,
  job_uid int(11) default NULL,
  `datetime` int(11) default NULL,
  reply text,
  content text,
  reply_time int(11) default NULL,
  com_name varchar(100) default NULL,
  job_name varchar(100) default NULL,
  del_status int(11) default '0',
  `type` int(11) default '1',
  user_remind_status int(1) default '1',
  com_remind_status int(1) default '0',
  PRIMARY KEY  (id)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS phpyun_navigation;
CREATE TABLE phpyun_navigation (
  id int(11) NOT NULL auto_increment,
  nid int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  url varchar(100) default NULL,
  sort int(11) default NULL,
  display int(1) NOT NULL,
  eject int(1) NOT NULL,
  `type` int(1) default '1',
  furl varchar(100) default NULL,
  color varchar(20) default NULL,
  model varchar(20) default NULL,
  bold int(1) default NULL,
  `desc` int(11) default NULL,
  news int(11) default NULL,
  PRIMARY KEY  (id)
) ENGINE=MyISAM AUTO_INCREMENT=65 DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS phpyun_navigation_type;
CREATE TABLE phpyun_navigation_type (
  id int(11) NOT NULL auto_increment,
  typename varchar(100) NOT NULL,
  PRIMARY KEY  (id)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS phpyun_navmap;
CREATE TABLE phpyun_navmap (
  id int(11) NOT NULL auto_increment,
  nid int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  url varchar(100) default NULL,
  sort int(11) default NULL,
  display int(1) NOT NULL default '0',
  eject int(1) NOT NULL,
  `type` int(1) default '1',
  furl varchar(100) default NULL,
  PRIMARY KEY  (id)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS phpyun_news_base;
CREATE TABLE phpyun_news_base (
  id int(11) NOT NULL auto_increment,
  nid int(11) NOT NULL,
  did varchar(100) NOT NULL,
  title varchar(200) NOT NULL,
  color varchar(255) default NULL,
  keyword varchar(200) NOT NULL,
  author varchar(200) NOT NULL,
  `datetime` int(11) NOT NULL,
  hits int(11) NOT NULL,
  `describe` varchar(11) NOT NULL,
  description varchar(255) default NULL,
  newsphoto varchar(100) default NULL,
  s_thumb varchar(100) default NULL,
  `source` varchar(255) default NULL,
  sort int(11) default NULL,
  lastupdate int(11) default NULL,
  PRIMARY KEY  (id)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS phpyun_news_content;
CREATE TABLE phpyun_news_content (
  nbid int(11) NOT NULL,
  content text NOT NULL,
  PRIMARY KEY  (nbid)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS phpyun_news_group;
CREATE TABLE phpyun_news_group (
  id int(11) NOT NULL auto_increment,
  keyid int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  sort int(11) default '0',
  rec int(1) default '0',
  is_menu int(1) default '0',
  rec_news int(1) default '0',
  PRIMARY KEY  (id)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS phpyun_once_job;
CREATE TABLE phpyun_once_job (
  id int(11) NOT NULL auto_increment,
  title varchar(200) NOT NULL,
  mans varchar(100) NOT NULL,
  `require` varchar(255) NOT NULL,
  companyname varchar(255) NOT NULL,
  phone varchar(100) NOT NULL,
  hits int(11) default '0',
  linkman varchar(50) NOT NULL,
  address varchar(200) NOT NULL,
  ctime int(11) NOT NULL,
  `status` int(2) NOT NULL default '0',
  `password` varchar(100) NOT NULL,
  qq varchar(20) default NULL,
  email varchar(150) default NULL,
  edate int(11) default NULL,
  login_ip varchar(20) default NULL,
  PRIMARY KEY  (id)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS phpyun_outside;
CREATE TABLE phpyun_outside (
  id int(11) NOT NULL auto_increment,
  `name` varchar(100) default NULL,
  `type` varchar(100) default NULL,
  titlelen int(10) default NULL,
  infolen int(10) default NULL,
  byorder varchar(200) default NULL,
  num int(11) default NULL,
  `code` text,
  edittime int(10) default NULL,
  lasttime int(11) default NULL,
  urltype varchar(200) default NULL,
  timetype varchar(200) default NULL,
  `where` varchar(200) default NULL,
  PRIMARY KEY  (id)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS phpyun_property;
CREATE TABLE phpyun_property (
  id int(11) NOT NULL auto_increment,
  `name` varchar(20) default NULL,
  `value` varchar(20) default NULL,
  PRIMARY KEY  (id)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS phpyun_q_class;
CREATE TABLE phpyun_q_class (
  id int(11) NOT NULL auto_increment,
  `name` varchar(100) NOT NULL,
  pid int(11) NOT NULL,
  pic varchar(100) default NULL,
  sort int(11) NOT NULL,
  intro text,
  add_time int(11) NOT NULL,
  PRIMARY KEY  (id)
) ENGINE=MyISAM AUTO_INCREMENT=66 DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS phpyun_question;
CREATE TABLE phpyun_question (
  id int(11) NOT NULL auto_increment,
  title text NOT NULL,
  content text NOT NULL,
  cid int(11) NOT NULL,
  uid int(11) NOT NULL,
  answer_num int(11) NOT NULL default '0',
  visit int(11) NOT NULL default '0',
  is_recom int(1) NOT NULL default '0',
  lastupdate int(11) default NULL,
  add_time int(11) NOT NULL,
  PRIMARY KEY  (id)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS phpyun_reason;
CREATE TABLE phpyun_reason (
  id int(11) NOT NULL auto_increment,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY  (id)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS phpyun_report;
CREATE TABLE phpyun_report (
  id int(11) NOT NULL auto_increment,
  p_uid int(11) default NULL,
  c_uid int(11) default NULL,
  eid int(11) default NULL,
  usertype int(1) default NULL,
  inputtime int(11) default NULL,
  username varchar(100) default NULL,
  r_name varchar(100) default NULL,
  `status` int(1) default '0',
  r_reason varchar(200) default NULL,
  `type` int(11) default '0',
  r_type int(11) default NULL,
  PRIMARY KEY  (id)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS phpyun_resume;
CREATE TABLE phpyun_resume (
  uid int(11) NOT NULL,
  `name` varchar(25) default NULL,
  sex int(2) default NULL,
  birthday varchar(10) default NULL,
  marriage varchar(2) default NULL,
  height varchar(4) default NULL,
  nationality varchar(20) default NULL,
  weight varchar(4) default NULL,
  idcard varchar(20) default NULL,
  telphone varchar(20) default NULL,
  telhome varchar(20) default NULL,
  email varchar(50) default NULL,
  edu int(2) default NULL,
  homepage varchar(50) default NULL,
  address varchar(80) default NULL,
  description varchar(150) default NULL,
  resume_photo varchar(100) default NULL,
  photo varchar(100) default NULL,
  expect int(2) default '0',
  def_job int(11) default '0',
  exp int(11) default NULL,
  `status` int(2) default '1',
  idcard_pic varchar(100) default NULL,
  email_status int(1) default '0',
  moblie_status int(1) default '0',
  idcard_status int(1) default '0',
  statusbody varchar(200) default NULL,
  cert_time int(11) default NULL,
  r_status int(1) default '0',
  ant_num int(11) default '0',
  email_dy int(1) default '0',
  msg_dy int(1) default '0',
  living varchar(100) default NULL,
  domicile varchar(100) default NULL,
  basic_info int(11) default '1',
  hy_dy varchar(100) default NULL,
  info_status int(1) default '1',
  KEY 默认简历 (def_job)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS phpyun_resume_cert;
CREATE TABLE phpyun_resume_cert (
  id int(11) NOT NULL auto_increment,
  uid int(11) NOT NULL,
  eid int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  sdate int(10) default NULL,
  edate int(10) default NULL,
  title varchar(50) default NULL,
  content text,
  PRIMARY KEY  (id)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS phpyun_resume_doc;
CREATE TABLE phpyun_resume_doc (
  id int(11) NOT NULL auto_increment,
  uid int(11) NOT NULL,
  eid int(11) NOT NULL,
  doc text,
  PRIMARY KEY  (id)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS phpyun_resume_edu;
CREATE TABLE phpyun_resume_edu (
  id int(11) NOT NULL auto_increment,
  uid int(11) NOT NULL,
  eid int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  sdate int(10) default NULL,
  edate int(10) default NULL,
  specialty varchar(50) default NULL,
  title varchar(50) default NULL,
  content text,
  PRIMARY KEY  (id)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS phpyun_resume_expect;
CREATE TABLE phpyun_resume_expect (
  id int(11) NOT NULL auto_increment,
  uid int(11) NOT NULL,
  `name` varchar(25) default NULL,
  hy int(5) default NULL,
  job_classid varchar(100) default NULL,
  provinceid int(5) default NULL,
  cityid int(5) default NULL,
  three_cityid int(5) default NULL,
  salary int(3) default NULL,
  `type` int(3) default NULL,
  report int(3) default NULL,
  defaults int(1) NOT NULL default '0',
  `open` int(1) default '1',
  is_entrust int(1) default '0',
  `full` int(3) default '0',
  doc int(1) default '0',
  hits int(6) default '0',
  lastupdate int(10) NOT NULL,
  def_job int(11) default NULL,
  cloudtype int(2) default NULL,
  olduid int(11) default NULL,
  integrity int(11) default NULL,
  height_status int(11) default '0',
  statusbody varchar(200) default NULL,
  status_time int(11) default NULL,
  rec int(11) default '0',
  top int(11) default NULL,
  topdate int(11) default '0',
  rec_resume int(11) default NULL,
  dom_sort varchar(255) default NULL,
  resume_diy text,
  `source` int(1) default '1',
  tmpid int(5) default NULL,
  ctime int(11) default NULL,
  dnum int(11) default '0',
  PRIMARY KEY  (id,defaults)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS phpyun_resume_file;
CREATE TABLE phpyun_resume_file (
  id int(11) NOT NULL auto_increment,
  title varchar(200) default NULL,
  picurl varchar(200) default NULL,
  body text,
  ctime varchar(200) default NULL,
  uid varchar(200) default NULL,
  sort int(4) default '0',
  PRIMARY KEY  (id)
) ENGINE=MyISAM AUTO_INCREMENT=84 DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS phpyun_resume_other;
CREATE TABLE phpyun_resume_other (
  id int(11) NOT NULL auto_increment,
  uid int(11) NOT NULL,
  eid int(11) NOT NULL,
  title varchar(50) default NULL,
  content text,
  PRIMARY KEY  (id)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS phpyun_resume_project;
CREATE TABLE phpyun_resume_project (
  id int(11) NOT NULL auto_increment,
  uid int(11) NOT NULL,
  eid int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  sdate int(10) default NULL,
  edate int(10) default NULL,
  sys varchar(50) default NULL,
  title varchar(50) default NULL,
  content text,
  PRIMARY KEY  (id)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS phpyun_resume_show;
CREATE TABLE phpyun_resume_show (
  id int(11) NOT NULL auto_increment,
  title varchar(200) default NULL,
  picurl varchar(200) default NULL,
  ctime varchar(200) default NULL,
  uid varchar(200) default NULL,
  sort int(4) default '0',
  eid int(11) default NULL,
  PRIMARY KEY  (id)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS phpyun_resume_skill;
CREATE TABLE phpyun_resume_skill (
  id int(11) NOT NULL auto_increment,
  uid int(11) NOT NULL,
  eid int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  skill int(5) NOT NULL,
  ing int(5) NOT NULL,
  longtime int(5) NOT NULL,
  PRIMARY KEY  (id)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS phpyun_resume_tiny;
CREATE TABLE phpyun_resume_tiny (
  id int(25) NOT NULL auto_increment,
  username varchar(25) NOT NULL,
  `password` varchar(50) NOT NULL,
  sex int(11) NOT NULL,
  exp int(11) NOT NULL,
  hits int(11) default '0',
  job varchar(25) NOT NULL,
  mobile varchar(25) NOT NULL,
  qq varchar(25) NOT NULL,
  production text NOT NULL,
  `time` int(11) NOT NULL,
  `status` int(2) NOT NULL,
  login_ip varchar(20) default NULL,
  PRIMARY KEY  (id)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS phpyun_resume_training;
CREATE TABLE phpyun_resume_training (
  id int(11) NOT NULL auto_increment,
  uid int(11) NOT NULL,
  eid int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  sdate int(10) default NULL,
  edate int(10) default NULL,
  title varchar(50) default NULL,
  content text,
  PRIMARY KEY  (id)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS phpyun_resume_work;
CREATE TABLE phpyun_resume_work (
  id int(11) NOT NULL auto_increment,
  uid int(11) NOT NULL,
  eid int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  sdate int(10) default NULL,
  edate int(10) default NULL,
  department varchar(50) default NULL,
  title varchar(50) default NULL,
  content text,
  PRIMARY KEY  (id)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS phpyun_reward;
CREATE TABLE phpyun_reward (
  id int(11) NOT NULL auto_increment,
  `name` varchar(30) default NULL,
  nid int(11) default NULL,
  integral int(11) default NULL,
  num int(11) default '0',
  restriction int(11) default '0',
  stock int(11) default '0',
  pic varchar(100) default NULL,
  sort int(11) default NULL,
  content text,
  `status` int(1) default NULL,
  sdate int(11) default NULL,
  rec int(11) default '0',
  PRIMARY KEY  (id)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS phpyun_reward_class;
CREATE TABLE phpyun_reward_class (
  id int(11) NOT NULL auto_increment,
  `name` varchar(20) default NULL,
  PRIMARY KEY  (id)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS phpyun_seo;
CREATE TABLE phpyun_seo (
  id int(11) NOT NULL auto_increment,
  seoname varchar(100) default NULL,
  ident varchar(100) default NULL,
  title varchar(100) default NULL,
  keywords varchar(255) default NULL,
  description text,
  `time` int(11) default NULL,
  affiliation varchar(100) default NULL,
  php_url varchar(100) default NULL,
  rewrite_url varchar(100) default NULL,
  PRIMARY KEY  (id)
) ENGINE=MyISAM AUTO_INCREMENT=111 DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS phpyun_subscribe;
CREATE TABLE phpyun_subscribe (
  id int(11) NOT NULL auto_increment,
  email varchar(100) default NULL,
  job1 int(11) default NULL,
  job1_son int(11) default NULL,
  job_post int(11) default NULL,
  provinceid int(11) default NULL,
  cityid int(11) default NULL,
  three_cityid int(11) default NULL,
  salary int(11) default NULL,
  `type` int(11) default NULL,
  ctime int(11) default NULL,
  `status` int(1) default '0',
  `code` varchar(10) default NULL,
  cycle_time int(11) default NULL,
  `time` int(2) default NULL,
  PRIMARY KEY  (id)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS phpyun_sysmsg;
CREATE TABLE phpyun_sysmsg (
  id int(11) NOT NULL auto_increment,
  content varchar(255) NOT NULL,
  fa_uid int(11) NOT NULL,
  username varchar(20) NOT NULL,
  ctime int(11) NOT NULL,
  remind_status int(1) default '0',
  PRIMARY KEY  (id)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS phpyun_talent_pool;
CREATE TABLE phpyun_talent_pool (
  id int(11) NOT NULL auto_increment,
  uid int(11) default NULL,
  eid int(11) default NULL,
  cuid int(11) default NULL,
  ctime int(11) default NULL,
  remark varchar(200) default NULL,
  PRIMARY KEY  (id)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS phpyun_templates;
CREATE TABLE phpyun_templates (
  id int(10) NOT NULL auto_increment,
  `name` varchar(200) default NULL,
  title varchar(255) default NULL,
  content text,
  PRIMARY KEY  (id)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS phpyun_toolbox_class;
CREATE TABLE phpyun_toolbox_class (
  id int(11) NOT NULL auto_increment,
  `name` varchar(50) default NULL,
  content text,
  pic varchar(100) default NULL,
  PRIMARY KEY  (id)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS phpyun_toolbox_doc;
CREATE TABLE phpyun_toolbox_doc (
  id int(11) NOT NULL auto_increment,
  cid int(11) default NULL,
  `name` varchar(100) default NULL,
  url varchar(100) default NULL,
  is_show int(1) default '0',
  add_time int(11) default NULL,
  downnum int(11) default '0',
  PRIMARY KEY  (id)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS phpyun_user_resume;
CREATE TABLE phpyun_user_resume (
  id int(10) NOT NULL auto_increment,
  uid int(10) NOT NULL,
  eid int(10) NOT NULL,
  expect int(1) default '0',
  skill int(1) default '0',
  `work` int(1) default '0',
  project int(1) default '0',
  edu int(1) default '0',
  training int(1) default '0',
  cert int(1) default '0',
  other int(1) default '0',
  PRIMARY KEY  (id)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS phpyun_userclass;
CREATE TABLE phpyun_userclass (
  id int(11) NOT NULL auto_increment,
  keyid int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  variable varchar(100) default NULL,
  sort int(11) default NULL,
  PRIMARY KEY  (id)
) ENGINE=MyISAM AUTO_INCREMENT=113 DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS phpyun_userid_job;
CREATE TABLE phpyun_userid_job (
  id int(11) NOT NULL auto_increment,
  uid int(11) NOT NULL,
  job_id int(11) NOT NULL,
  job_name varchar(150) NOT NULL,
  com_id int(11) NOT NULL,
  com_name varchar(150) NOT NULL,
  eid int(10) unsigned NOT NULL,
  `datetime` int(10) NOT NULL,
  `type` int(1) NOT NULL default '1',
  is_browse int(1) NOT NULL default '1',
  body varchar(255) default NULL,
  PRIMARY KEY  (id)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS phpyun_userid_msg;
CREATE TABLE phpyun_userid_msg (
  id int(11) NOT NULL auto_increment,
  uid int(11) NOT NULL,
  title varchar(150) NOT NULL,
  content text NOT NULL,
  fid int(11) NOT NULL,
  fname varchar(150) NOT NULL,
  `type` int(11) NOT NULL default '0',
  `datetime` int(10) NOT NULL,
  `default` int(1) default '0',
  is_browse int(1) default '1',
  address varchar(255) default NULL,
  intertime varchar(255) default NULL,
  linkman varchar(50) default NULL,
  linktel varchar(50) default NULL,
  jobid int(11) default NULL,
  jobname varchar(50) default NULL,
  PRIMARY KEY  (id)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS phpyun_warning;
CREATE TABLE phpyun_warning (
  id int(11) NOT NULL auto_increment,
  uid int(11) default NULL,
  `type` int(1) default NULL,
  `status` int(1) default '1',
  ctime int(11) default NULL,
  PRIMARY KEY  (id)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS phpyun_website;
CREATE TABLE phpyun_website (
  id int(11) NOT NULL auto_increment,
  `type` int(11) NOT NULL default '0',
  price int(11) NOT NULL default '0',
  smallday int(11) NOT NULL default '0',
  PRIMARY KEY  (id)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS phpyun_wxlog;
CREATE TABLE phpyun_wxlog (
  id int(11) NOT NULL auto_increment,
  wxid varchar(100) NOT NULL default '0',
  wxname varchar(100) default NULL,
  wxuid int(11) default '0',
  wxuser varchar(100) default NULL,
  content text,
  reply text,
  nav varchar(100) default NULL,
  `type` varchar(100) default NULL,
  `time` int(11) default '0',
  PRIMARY KEY  (id)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS phpyun_wxnav;
CREATE TABLE phpyun_wxnav (
  id int(11) NOT NULL auto_increment,
  `name` varchar(100) NOT NULL,
  keyid int(11) default NULL,
  `key` varchar(100) default NULL,
  url varchar(100) default NULL,
  `type` varchar(50) NOT NULL,
  sort int(11) default NULL,
  PRIMARY KEY  (id)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS phpyun_zhaopinhui;
CREATE TABLE phpyun_zhaopinhui (
  id int(11) NOT NULL auto_increment,
  title varchar(200) default '0',
  pic varchar(200) default '0',
  starttime varchar(100) default '0',
  endtime varchar(100) default '0',
  provinceid int(11) default '0',
  cityid int(11) default '0',
  address varchar(200) default NULL,
  traffic text,
  phone varchar(100) default '0',
  organizers varchar(200) default '0',
  `user` varchar(200) default NULL,
  weburl varchar(100) default '0',
  body text,
  media text,
  packages text,
  booth text,
  participate text,
  `status` int(11) default '0',
  ctime int(11) default '0',
  PRIMARY KEY  (id)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS phpyun_zhaopinhui_com;
CREATE TABLE phpyun_zhaopinhui_com (
  id int(11) NOT NULL auto_increment,
  uid int(11) default '0',
  zid int(11) default '0',
  jobid varchar(255) default '0',
  ctime int(11) default '0',
  `status` int(11) default '0',
  statusbody varchar(100) default NULL,
  inadd varchar(100) default NULL,
  PRIMARY KEY  (id)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
DROP TABLE IF EXISTS phpyun_zhaopinhui_pic;
CREATE TABLE phpyun_zhaopinhui_pic (
  id int(11) NOT NULL auto_increment,
  title varchar(200) default '0',
  pic varchar(200) default '0',
  sort int(11) default '0',
  zid int(11) default '0',
  is_themb int(5) default '0',
  PRIMARY KEY  (id)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
INSERT INTO phpyun_ad VALUES('1','首页幻灯一','0','2014-12-16','2015-12-30','pic','','','../upload/pimg/20141216/14203593258.JPG','','','','','','','','3','1','1','1','0','','0');
INSERT INTO phpyun_ad VALUES('2','首页幻灯二','0','2014-12-16','2015-12-30','pic','','','../upload/pimg/20141216/14220408555.JPG','','','','','','','','3','1','1','2','0','','0');
INSERT INTO phpyun_ad VALUES('3','对联广告左','0','2014-12-16','2015-12-30','pic','','','../upload/pimg/20141216/14187959852.GIF','','','','','','','','11','1','1','2','0','','0');
INSERT INTO phpyun_ad VALUES('4','对联广告右','0','2014-12-16','2015-12-31','pic','','','../upload/pimg/20141216/14259333738.JPG','','','','','','','','11','1','1','2','0','','0');
INSERT INTO phpyun_ad VALUES('5','登录幻灯一','0','2014-12-16','2015-12-31','pic','','','../upload/pimg/20141216/14246324283.jpg','','','','','','','','37','1','1','2','0','','0');

INSERT INTO phpyun_ad_class VALUES('1','首页中部图片广告 规格：宽154 高50','1','','33','2');
INSERT INTO phpyun_ad_class VALUES('3','首页幻灯广告规格：宽774高299','2','ee','100','1');
INSERT INTO phpyun_ad_class VALUES('36','人才列表右侧广告168*120','0','','','2');
INSERT INTO phpyun_ad_class VALUES('5','首页收缩广告','5','','55','1');
INSERT INTO phpyun_ad_class VALUES('6','首页横幅广告960X80','4','','12','1');
INSERT INTO phpyun_ad_class VALUES('7','职位列表页广告','6','','66','1');
INSERT INTO phpyun_ad_class VALUES('8','首页热门职位右侧广告285*51','1','','1','1');
INSERT INTO phpyun_ad_class VALUES('10','网站底部浮动广告980*60','1','','1','1');
INSERT INTO phpyun_ad_class VALUES('11','对联广告','1','','0','1');
INSERT INTO phpyun_ad_class VALUES('12','首页最新人才右侧广告269*50','2','','0','1');
INSERT INTO phpyun_ad_class VALUES('13','首页紧急招聘下横幅广告980*60','2','','0','1');
INSERT INTO phpyun_ad_class VALUES('14','首页紧急招聘下双联横幅广告488*60','11','','0','1');
INSERT INTO phpyun_ad_class VALUES('15','首页紧急招聘下三联联横幅广告325*60','1','','0','1');
INSERT INTO phpyun_ad_class VALUES('27','简历详情页右侧','1','','','2');
INSERT INTO phpyun_ad_class VALUES('29','模板3中部广告1','29','','100','1');
INSERT INTO phpyun_ad_class VALUES('34','积分商城首页幻灯','0','','','2');
INSERT INTO phpyun_ad_class VALUES('37','登录页图片切换','1','','','2');
INSERT INTO phpyun_ad_class VALUES('39','模板1_首页紧急招聘右侧图片','0','','','2');



INSERT INTO phpyun_admin_config VALUES('sy_smtpemail','820591677@qq.com');
INSERT INTO phpyun_admin_config VALUES('sy_smtpuser','820591677');
INSERT INTO phpyun_admin_config VALUES('sy_smtppass','5291027yanhong');
INSERT INTO phpyun_admin_config VALUES('sy_smtpserverport','25');
INSERT INTO phpyun_admin_config VALUES('sy_msguser','');
INSERT INTO phpyun_admin_config VALUES('sy_msgpw','');
INSERT INTO phpyun_admin_config VALUES('sy_msgapi','smtp.163.com');
INSERT INTO phpyun_admin_config VALUES('sy_hotkeyword','php,php求职');
INSERT INTO phpyun_admin_config VALUES('sy_fkeyword','台独');
INSERT INTO phpyun_admin_config VALUES('sy_linksq','0');
INSERT INTO phpyun_admin_config VALUES('user_enforce_identitycert','0');
INSERT INTO phpyun_admin_config VALUES('com_enforce_emailcert','0');
INSERT INTO phpyun_admin_config VALUES('com_enforce_mobilecert','0');
INSERT INTO phpyun_admin_config VALUES('com_enforce_licensecert','0');
INSERT INTO phpyun_admin_config VALUES('com_enforce_setposition','0');
INSERT INTO phpyun_admin_config VALUES('lt_enforce_emailcert','0');
INSERT INTO phpyun_admin_config VALUES('lt_enforce_mobilecert','0');
INSERT INTO phpyun_admin_config VALUES('lt_enforce_licensecert','0');
INSERT INTO phpyun_admin_config VALUES('sy_apikey','php213yun');
INSERT INTO phpyun_admin_config VALUES('sy_webname','PHP云人才招聘系统');
INSERT INTO phpyun_admin_config VALUES('sy_weburl','http://localhost/toptophr.com');
INSERT INTO phpyun_admin_config VALUES('sy_companydomain','');
INSERT INTO phpyun_admin_config VALUES('sy_webkeyword','Meta 关键词');
INSERT INTO phpyun_admin_config VALUES('map_rating','15');
INSERT INTO phpyun_admin_config VALUES('sy_webmeta','Meta 描述');
INSERT INTO phpyun_admin_config VALUES('map_x','116.403856');
INSERT INTO phpyun_admin_config VALUES('map_y','39.914704');
INSERT INTO phpyun_admin_config VALUES('sy_webcopyright','Copyright (C) 2009-2015 All Rights Reserved 版权所有 鑫潮(人力资源服务)');
INSERT INTO phpyun_admin_config VALUES('sy_webemail','admin@admin.com');
INSERT INTO phpyun_admin_config VALUES('sy_webrecord','');
INSERT INTO phpyun_admin_config VALUES('sy_webtel','400-880-5523');
INSERT INTO phpyun_admin_config VALUES('sy_freewebtel','400-880-5523');
INSERT INTO phpyun_admin_config VALUES('sy_webadd','');
INSERT INTO phpyun_admin_config VALUES('sy_mapkey','{config[sy_mapkey]}');
INSERT INTO phpyun_admin_config VALUES('sy_companydir','company');
INSERT INTO phpyun_admin_config VALUES('sy_smtpserver','smtp.qq.com');
INSERT INTO phpyun_admin_config VALUES('code_width','75');
INSERT INTO phpyun_admin_config VALUES('code_height','35');
INSERT INTO phpyun_admin_config VALUES('code_strlength','4');
INSERT INTO phpyun_admin_config VALUES('code_filetype','jpg');
INSERT INTO phpyun_admin_config VALUES('code_type','3');
INSERT INTO phpyun_admin_config VALUES('code_web','注册会员,前台登陆,一句话招聘,后台登陆');
INSERT INTO phpyun_admin_config VALUES('sy_askdoamin','');
INSERT INTO phpyun_admin_config VALUES('sy_pxdir','train');
INSERT INTO phpyun_admin_config VALUES('sy_frienddomain','');
INSERT INTO phpyun_admin_config VALUES('sy_pxdomain','');
INSERT INTO phpyun_admin_config VALUES('paytype','1');
INSERT INTO phpyun_admin_config VALUES('alipay','1');
INSERT INTO phpyun_admin_config VALUES('tenpay','1');
INSERT INTO phpyun_admin_config VALUES('bank','1');
INSERT INTO phpyun_admin_config VALUES('style','default');
INSERT INTO phpyun_admin_config VALUES('sy_city_online','undefined');
INSERT INTO phpyun_admin_config VALUES('sy_webclose','....网站升级中！');
INSERT INTO phpyun_admin_config VALUES('sy_web_online','1');
INSERT INTO phpyun_admin_config VALUES('sy_istemplate','1');
INSERT INTO phpyun_admin_config VALUES('sy_uc_type','');
INSERT INTO phpyun_admin_config VALUES('user_number','5');
INSERT INTO phpyun_admin_config VALUES('user_sq_number','100');
INSERT INTO phpyun_admin_config VALUES('user_fav_number','100');
INSERT INTO phpyun_admin_config VALUES('user_pickb','2048');
INSERT INTO phpyun_admin_config VALUES('user_jobstatus','1');
INSERT INTO phpyun_admin_config VALUES('user_status','0');
INSERT INTO phpyun_admin_config VALUES('user_email','1');
INSERT INTO phpyun_admin_config VALUES('user_moblie','0');
INSERT INTO phpyun_admin_config VALUES('user_job','0');
INSERT INTO phpyun_admin_config VALUES('com_pickb','1024');
INSERT INTO phpyun_admin_config VALUES('com_jobstatus','0');
INSERT INTO phpyun_admin_config VALUES('com_email','1');
INSERT INTO phpyun_admin_config VALUES('com_moblie','1');
INSERT INTO phpyun_admin_config VALUES('integral_pricename','积分');
INSERT INTO phpyun_admin_config VALUES('integral_priceunit','个');
INSERT INTO phpyun_admin_config VALUES('com_integral_online','1');
INSERT INTO phpyun_admin_config VALUES('integral_resume','20');
INSERT INTO phpyun_admin_config VALUES('integral_job','10');
INSERT INTO phpyun_admin_config VALUES('integral_resume_top','10');
INSERT INTO phpyun_admin_config VALUES('integral_resume_top_type','2');
INSERT INTO phpyun_admin_config VALUES('integral_jobefresh','100');
INSERT INTO phpyun_admin_config VALUES('integral_jobedit','11');
INSERT INTO phpyun_admin_config VALUES('integral_interview','12');
INSERT INTO phpyun_admin_config VALUES('integral_reg','100');
INSERT INTO phpyun_admin_config VALUES('integral_proportion','20');
INSERT INTO phpyun_admin_config VALUES('integral_down_resume','30');
INSERT INTO phpyun_admin_config VALUES('sy_bannedip','');
INSERT INTO phpyun_admin_config VALUES('sy_fkeyword_all','***');
INSERT INTO phpyun_admin_config VALUES('sy_bannedip_alert','您的当前IP，该站已经禁止访问，请联系管理员处理。');
INSERT INTO phpyun_admin_config VALUES('sy_qqappid','');
INSERT INTO phpyun_admin_config VALUES('sy_qqappkey','');
INSERT INTO phpyun_admin_config VALUES('sy_qqlogin','0');
INSERT INTO phpyun_admin_config VALUES('sy_email_online','1');
INSERT INTO phpyun_admin_config VALUES('sy_email_yqms','2');
INSERT INTO phpyun_admin_config VALUES('sy_email_reg','2');
INSERT INTO phpyun_admin_config VALUES('sy_email_fkcg','2');
INSERT INTO phpyun_admin_config VALUES('sy_email_zzshtg','2');
INSERT INTO phpyun_admin_config VALUES('sy_email_sqzw','2');
INSERT INTO phpyun_admin_config VALUES('sy_msg_yqms','2');
INSERT INTO phpyun_admin_config VALUES('sy_msg_reg','2');
INSERT INTO phpyun_admin_config VALUES('sy_msg_fkcg','2');
INSERT INTO phpyun_admin_config VALUES('sy_msg_zzshtg','2');
INSERT INTO phpyun_admin_config VALUES('sy_msg_sqzw','2');
INSERT INTO phpyun_admin_config VALUES('sy_seo_rewrite','0');
INSERT INTO phpyun_admin_config VALUES('sy_msg_online','0');
INSERT INTO phpyun_admin_config VALUES('sy_email_getpass','2');
INSERT INTO phpyun_admin_config VALUES('sy_msg_getpass','2');
INSERT INTO phpyun_admin_config VALUES('com_rating','3');
INSERT INTO phpyun_admin_config VALUES('sy_logo','data/logo/20141216/14218746848.PNG');
INSERT INTO phpyun_admin_config VALUES('sy_member_logo','data/logo/20141216/14219950449.PNG');
INSERT INTO phpyun_admin_config VALUES('sy_unit_logo','data/logo/20141216/14224735249.PNG');
INSERT INTO phpyun_admin_config VALUES('map_control','1');
INSERT INTO phpyun_admin_config VALUES('map_control_type','4');
INSERT INTO phpyun_admin_config VALUES('map_control_xb','1');
INSERT INTO phpyun_admin_config VALUES('map_control_scale','1');
INSERT INTO phpyun_admin_config VALUES('sy_rz_logo','data/logo/20120723/13500058397.GIF');
INSERT INTO phpyun_admin_config VALUES('sy_email_cert','2');
INSERT INTO phpyun_admin_config VALUES('sy_msg_cert','2');
INSERT INTO phpyun_admin_config VALUES('sy_msgkey','');
INSERT INTO phpyun_admin_config VALUES('map_control_anchor','4');
INSERT INTO phpyun_admin_config VALUES('com_login_link','1');
INSERT INTO phpyun_admin_config VALUES('com_resume_link','1');
INSERT INTO phpyun_admin_config VALUES('com_fast_status','0');
INSERT INTO phpyun_admin_config VALUES('com_job_status','1');
INSERT INTO phpyun_admin_config VALUES('sy_web_site','0');
INSERT INTO phpyun_admin_config VALUES('sy_rand','');
INSERT INTO phpyun_admin_config VALUES('sy_email_zzshwtg','2');
INSERT INTO phpyun_admin_config VALUES('qqappkey','100643130');
INSERT INTO phpyun_admin_config VALUES('qqappsecret','');
INSERT INTO phpyun_admin_config VALUES('qqopenid','');
INSERT INTO phpyun_admin_config VALUES('qqopenkey','');
INSERT INTO phpyun_admin_config VALUES('qqaccess_token','');
INSERT INTO phpyun_admin_config VALUES('sinaappkey','');
INSERT INTO phpyun_admin_config VALUES('sinaappsecret','');
INSERT INTO phpyun_admin_config VALUES('sinaopenid','');
INSERT INTO phpyun_admin_config VALUES('sinaopenkey','');
INSERT INTO phpyun_admin_config VALUES('sinaaccess_token','');
INSERT INTO phpyun_admin_config VALUES('sy_pw_type','');
INSERT INTO phpyun_admin_config VALUES('sy_qq','3367562');
INSERT INTO phpyun_admin_config VALUES('sy_indexcity','全国');
INSERT INTO phpyun_admin_config VALUES('sy_indexdomain','');
INSERT INTO phpyun_admin_config VALUES('sy_qqkey','');
INSERT INTO phpyun_admin_config VALUES('sy_sinakey','');
INSERT INTO phpyun_admin_config VALUES('alipaytype','1');
INSERT INTO phpyun_admin_config VALUES('user_idcard','0');
INSERT INTO phpyun_admin_config VALUES('com_status','1');
INSERT INTO phpyun_admin_config VALUES('user_imgwidth','90');
INSERT INTO phpyun_admin_config VALUES('user_imgheight','140');
INSERT INTO phpyun_admin_config VALUES('ismemcache','2');
INSERT INTO phpyun_admin_config VALUES('com_uppic','1024');
INSERT INTO phpyun_admin_config VALUES('issmartycache','2');
INSERT INTO phpyun_admin_config VALUES('memcachehost','');
INSERT INTO phpyun_admin_config VALUES('memcacheport','');
INSERT INTO phpyun_admin_config VALUES('memcachetime','');
INSERT INTO phpyun_admin_config VALUES('smartycachetime','3600');
INSERT INTO phpyun_admin_config VALUES('com_urgent','20');
INSERT INTO phpyun_admin_config VALUES('com_message','1');
INSERT INTO phpyun_admin_config VALUES('user_report','1');
INSERT INTO phpyun_admin_config VALUES('com_report','1');
INSERT INTO phpyun_admin_config VALUES('sy_email_lock','2');
INSERT INTO phpyun_admin_config VALUES('user_idcard_status','1');
INSERT INTO phpyun_admin_config VALUES('com_cert_status','1');
INSERT INTO phpyun_admin_config VALUES('sy_email_comcert','2');
INSERT INTO phpyun_admin_config VALUES('sy_unit_icon','data/logo/20141210/14002532782.JPG');
INSERT INTO phpyun_admin_config VALUES('sy_email_usercert','2');
INSERT INTO phpyun_admin_config VALUES('sy_onedomain','');
INSERT INTO phpyun_admin_config VALUES('sy_msg_zzshwtg','2');
INSERT INTO phpyun_admin_config VALUES('sy_email_usercertq','1');
INSERT INTO phpyun_admin_config VALUES('sy_email_jobed','2');
INSERT INTO phpyun_admin_config VALUES('lt_job_status','0');
INSERT INTO phpyun_admin_config VALUES('user_wjl','1');
INSERT INTO phpyun_admin_config VALUES('com_recjob','10');
INSERT INTO phpyun_admin_config VALUES('sy_regname','admin,zhongguo');
INSERT INTO phpyun_admin_config VALUES('com_vip_type','0');
INSERT INTO phpyun_admin_config VALUES('integral_lt_jobefresh','10');
INSERT INTO phpyun_admin_config VALUES('integral_lt_jobedit','30');
INSERT INTO phpyun_admin_config VALUES('integral_lt_downresume','20');
INSERT INTO phpyun_admin_config VALUES('integral_lt_job','30');
INSERT INTO phpyun_admin_config VALUES('sy_member_icon','data/logo/20141210/14204024737.JPG');
INSERT INTO phpyun_admin_config VALUES('sy_im_resume','1');
INSERT INTO phpyun_admin_config VALUES('sy_im_comname','1');
INSERT INTO phpyun_admin_config VALUES('sy_im_ltname','1');
INSERT INTO phpyun_admin_config VALUES('sy_friend_logo','data/logo/20141216/14222743749.PNG');
INSERT INTO phpyun_admin_config VALUES('integral_com_comments','1000');
INSERT INTO phpyun_admin_config VALUES('fast_status','0');
INSERT INTO phpyun_admin_config VALUES('sy_listnum','13');
INSERT INTO phpyun_admin_config VALUES('sy_email_userstatus','2');
INSERT INTO phpyun_admin_config VALUES('lt_rec_rebates','1');
INSERT INTO phpyun_admin_config VALUES('sy_sinalogin','0');
INSERT INTO phpyun_admin_config VALUES('sy_sinaappkey','');
INSERT INTO phpyun_admin_config VALUES('sy_sinaappid','');
INSERT INTO phpyun_admin_config VALUES('user_name','2');
INSERT INTO phpyun_admin_config VALUES('sy_usertype_1','1');
INSERT INTO phpyun_admin_config VALUES('lt_rebates_name','元');
INSERT INTO phpyun_admin_config VALUES('user_wjl_link','1');
INSERT INTO phpyun_admin_config VALUES('map_tocity','2');
INSERT INTO phpyun_admin_config VALUES('map_key','F9bfbeb26054d97898571a1df965d8af');
INSERT INTO phpyun_admin_config VALUES('sy_email_remind','2');
INSERT INTO phpyun_admin_config VALUES('sy_msg_remind','2');
INSERT INTO phpyun_admin_config VALUES('sy_msg_type','1');
INSERT INTO phpyun_admin_config VALUES('integral_msg_proportion','');
INSERT INTO phpyun_admin_config VALUES('user_email_tx','1');
INSERT INTO phpyun_admin_config VALUES('user_msg_tx','1');
INSERT INTO phpyun_admin_config VALUES('com_email_dy','1');
INSERT INTO phpyun_admin_config VALUES('com_msg_dy','1');
INSERT INTO phpyun_admin_config VALUES('user_email_dy','1');
INSERT INTO phpyun_admin_config VALUES('user_msg_dy','0');
INSERT INTO phpyun_admin_config VALUES('sy_msg_comdy','2');
INSERT INTO phpyun_admin_config VALUES('sy_msg_userdy','2');
INSERT INTO phpyun_admin_config VALUES('sy_email_userdy','2');
INSERT INTO phpyun_admin_config VALUES('sy_email_comdy','2');
INSERT INTO phpyun_admin_config VALUES('webcachetime','10');
INSERT INTO phpyun_admin_config VALUES('webcache','2');
INSERT INTO phpyun_admin_config VALUES('sy_friend_icon','data/logo/20141210/14003570782.JPG');
INSERT INTO phpyun_admin_config VALUES('sy_wzp_icon','data/logo/20140422/14046373798.JPG');
INSERT INTO phpyun_admin_config VALUES('wx_token','');
INSERT INTO phpyun_admin_config VALUES('wx_appid','');
INSERT INTO phpyun_admin_config VALUES('wx_appsecret','');
INSERT INTO phpyun_admin_config VALUES('user_trust_number','1');
INSERT INTO phpyun_admin_config VALUES('pay_trust_resume','1.1');
INSERT INTO phpyun_admin_config VALUES('user_trust_status','0');
INSERT INTO phpyun_admin_config VALUES('crmkey','12233ffffddd');
INSERT INTO phpyun_admin_config VALUES('crmname','phpyun');
INSERT INTO phpyun_admin_config VALUES('sy_safekey','7854**222ffdss');
INSERT INTO phpyun_admin_config VALUES('pytoken','7f5f3b1468dc');
INSERT INTO phpyun_admin_config VALUES('job_auto','5');
INSERT INTO phpyun_admin_config VALUES('user_enforce_mobilecert','1');
INSERT INTO phpyun_admin_config VALUES('sy_default_userclass','2');
INSERT INTO phpyun_admin_config VALUES('sy_default_comclass','2');
INSERT INTO phpyun_admin_config VALUES('crmpronid','1');
INSERT INTO phpyun_admin_config VALUES('user_height_resume','1');
INSERT INTO phpyun_admin_config VALUES('sy_com_invoice','1');
INSERT INTO phpyun_admin_config VALUES('com_transfer','1');
INSERT INTO phpyun_admin_config VALUES('sy_def_email','@qq.com|@163.com|@126.com|@gmail.com|@hotmail.com|@sina.com|@sina.com.cn|@sina.cn|@sohu.com|@139.com|@yahoo.com|@aliyun.com');
INSERT INTO phpyun_admin_config VALUES('sy_tiny','2');
INSERT INTO phpyun_admin_config VALUES('sy_once','0');
INSERT INTO phpyun_admin_config VALUES('integral_zhiwei','0');
INSERT INTO phpyun_admin_config VALUES('integral_jianli','100');
INSERT INTO phpyun_admin_config VALUES('integral_xinwen','0');
INSERT INTO phpyun_admin_config VALUES('integral_product','0');
INSERT INTO phpyun_admin_config VALUES('integral_score','100');
INSERT INTO phpyun_admin_config VALUES('sy_email_notice','2');
INSERT INTO phpyun_admin_config VALUES('sy_msg_notice','2');
INSERT INTO phpyun_admin_config VALUES('user_finder','2');
INSERT INTO phpyun_admin_config VALUES('integral_job_type','2');
INSERT INTO phpyun_admin_config VALUES('integral_jobefresh_type','2');
INSERT INTO phpyun_admin_config VALUES('integral_jobedit_type','2');
INSERT INTO phpyun_admin_config VALUES('integral_down_resume_type','2');
INSERT INTO phpyun_admin_config VALUES('integral_interview_type','2');
INSERT INTO phpyun_admin_config VALUES('com_urgent_type','2');
INSERT INTO phpyun_admin_config VALUES('com_recjob_type','2');
INSERT INTO phpyun_admin_config VALUES('integral_com_comments_type','2');
INSERT INTO phpyun_admin_config VALUES('job_auto_type','2');
INSERT INTO phpyun_admin_config VALUES('sy_adclick','0');
INSERT INTO phpyun_admin_config VALUES('sy_wap_jump','1');
INSERT INTO phpyun_admin_config VALUES('integral_lt_job_type','2');
INSERT INTO phpyun_admin_config VALUES('integral_lt_jobefresh_type','2');
INSERT INTO phpyun_admin_config VALUES('integral_lt_jobedit_type','2');
INSERT INTO phpyun_admin_config VALUES('integral_lt_downresume_type','2');
INSERT INTO phpyun_admin_config VALUES('integral_reg_type','1');
INSERT INTO phpyun_admin_config VALUES('integral_login_type','1');
INSERT INTO phpyun_admin_config VALUES('integral_login','2');
INSERT INTO phpyun_admin_config VALUES('integral_userinfo_type','1');
INSERT INTO phpyun_admin_config VALUES('integral_userinfo','20');
INSERT INTO phpyun_admin_config VALUES('integral_emailcert_type','1');
INSERT INTO phpyun_admin_config VALUES('integral_emailcert','10');
INSERT INTO phpyun_admin_config VALUES('integral_mobliecert_type','1');
INSERT INTO phpyun_admin_config VALUES('integral_mobliecert','10');
INSERT INTO phpyun_admin_config VALUES('integral_avatar_type','1');
INSERT INTO phpyun_admin_config VALUES('integral_avatar','10');
INSERT INTO phpyun_admin_config VALUES('integral_question_type','1');
INSERT INTO phpyun_admin_config VALUES('integral_question','10');
INSERT INTO phpyun_admin_config VALUES('integral_answer_type','1');
INSERT INTO phpyun_admin_config VALUES('integral_answer','10');
INSERT INTO phpyun_admin_config VALUES('integral_answerpl_type','1');
INSERT INTO phpyun_admin_config VALUES('integral_answerpl','10');
INSERT INTO phpyun_admin_config VALUES('integral_friend_msg_type','1');
INSERT INTO phpyun_admin_config VALUES('integral_friend_msg','10');
INSERT INTO phpyun_admin_config VALUES('integral_friend_reply_type','1');
INSERT INTO phpyun_admin_config VALUES('integral_friend_reply','10');
INSERT INTO phpyun_admin_config VALUES('integral_invite_reg_type','1');
INSERT INTO phpyun_admin_config VALUES('integral_invite_reg','100');
INSERT INTO phpyun_admin_config VALUES('integral_map_type','1');
INSERT INTO phpyun_admin_config VALUES('integral_map','10');
INSERT INTO phpyun_admin_config VALUES('integral_banner_type','1');
INSERT INTO phpyun_admin_config VALUES('integral_banner','5');
INSERT INTO phpyun_admin_config VALUES('integral_license_cert_type','1');
INSERT INTO phpyun_admin_config VALUES('integral_license_cert','100');
INSERT INTO phpyun_admin_config VALUES('integral_ltcert_type','1');
INSERT INTO phpyun_admin_config VALUES('integral_ltcert','100');
INSERT INTO phpyun_admin_config VALUES('integral_comcert_type','1');
INSERT INTO phpyun_admin_config VALUES('integral_comcert','20');
INSERT INTO phpyun_admin_config VALUES('integral_add_resume','0');
INSERT INTO phpyun_admin_config VALUES('integral_add_resume_type','1');
INSERT INTO phpyun_admin_config VALUES('integral_identity','20');
INSERT INTO phpyun_admin_config VALUES('integral_identity_type','1');
INSERT INTO phpyun_admin_config VALUES('com_finder','3');
INSERT INTO phpyun_admin_config VALUES('wx_welcom','');
INSERT INTO phpyun_admin_config VALUES('wx_search','');
INSERT INTO phpyun_admin_config VALUES('wx_logo','14102668417.PNG');
INSERT INTO phpyun_admin_config VALUES('wx_rz','0');
INSERT INTO phpyun_admin_config VALUES('warning_addjob_type','2');
INSERT INTO phpyun_admin_config VALUES('warning_addjob','10');
INSERT INTO phpyun_admin_config VALUES('warning_downresume_type','2');
INSERT INTO phpyun_admin_config VALUES('warning_downresume','6');
INSERT INTO phpyun_admin_config VALUES('warning_addresume_type','2');
INSERT INTO phpyun_admin_config VALUES('warning_addresume','3');
INSERT INTO phpyun_admin_config VALUES('warning_recharge_type','1');
INSERT INTO phpyun_admin_config VALUES('warning_recharge','1000');
INSERT INTO phpyun_admin_config VALUES('sy_news_rewrite','1');
INSERT INTO phpyun_admin_config VALUES('sy_wx_logo','data/logo/20141216/14202944229.PNG');
INSERT INTO phpyun_admin_config VALUES('sy_wxlogin','0');
INSERT INTO phpyun_admin_config VALUES('sy_wxappkey','');
INSERT INTO phpyun_admin_config VALUES('sy_wxappid','');
INSERT INTO phpyun_admin_config VALUES('sy_header_fix','1');
INSERT INTO phpyun_admin_config VALUES('sy_wap_web','1');
INSERT INTO phpyun_admin_config VALUES('sy_friend_web','1');
INSERT INTO phpyun_admin_config VALUES('sy_ask_web','1');
INSERT INTO phpyun_admin_config VALUES('sy_redeem_web','1');
INSERT INTO phpyun_admin_config VALUES('sy_zph_web','1');
INSERT INTO phpyun_admin_config VALUES('sy_wzp_web','1');
INSERT INTO phpyun_admin_config VALUES('sy_wjl_web','1');
INSERT INTO phpyun_admin_config VALUES('sy_gjx_web','1');
INSERT INTO phpyun_admin_config VALUES('sy_wapdomain','');
INSERT INTO phpyun_admin_config VALUES('sy_wap_logo','data/logo/20141216/14227830849.PNG');
INSERT INTO phpyun_admin_config VALUES('sy_msg_regcode','2');
INSERT INTO phpyun_admin_config VALUES('sy_wapdir','wap');
INSERT INTO phpyun_admin_config VALUES('sy_frienddir','friend');
INSERT INTO phpyun_admin_config VALUES('sy_askdir','ask');
INSERT INTO phpyun_admin_config VALUES('wx_xxtz','0');
INSERT INTO phpyun_admin_config VALUES('reg_fast','1');
INSERT INTO phpyun_admin_config VALUES('reg_passconfirm','0');
INSERT INTO phpyun_admin_config VALUES('reg_username','0');
INSERT INTO phpyun_admin_config VALUES('reg_useremail','0');
INSERT INTO phpyun_admin_config VALUES('reg_usertel','0');
INSERT INTO phpyun_admin_config VALUES('reg_comemail','0');
INSERT INTO phpyun_admin_config VALUES('reg_comtel','0');
INSERT INTO phpyun_admin_config VALUES('reg_comname','0');
INSERT INTO phpyun_admin_config VALUES('reg_comaddress','0');
INSERT INTO phpyun_admin_config VALUES('reg_comlink','0');
INSERT INTO phpyun_admin_config VALUES('subscribe_time','0');
INSERT INTO phpyun_admin_config VALUES('autodate','20150204');
INSERT INTO phpyun_admin_config VALUES('subscribe_time','1423040978');
INSERT INTO phpyun_admin_config VALUES('autodate','20150204');
INSERT INTO phpyun_admin_config VALUES('autodate','20150206');
INSERT INTO phpyun_admin_config VALUES('subscribe_time','1423190957');
INSERT INTO phpyun_admin_config VALUES('autodate','20150206');
INSERT INTO phpyun_admin_config VALUES('autodate','20150207');
INSERT INTO phpyun_admin_config VALUES('subscribe_time','1423289423');
INSERT INTO phpyun_admin_config VALUES('autodate','20150207');
INSERT INTO phpyun_admin_config VALUES('autodate','20150211');
INSERT INTO phpyun_admin_config VALUES('subscribe_time','1423663460');
INSERT INTO phpyun_admin_config VALUES('autodate','20150211');
INSERT INTO phpyun_admin_config VALUES('autodate','20150227');
INSERT INTO phpyun_admin_config VALUES('subscribe_time','1424998851');
INSERT INTO phpyun_admin_config VALUES('autodate','20150227');
INSERT INTO phpyun_admin_config VALUES('autodate','20150301');
INSERT INTO phpyun_admin_config VALUES('subscribe_time','1425179124');
INSERT INTO phpyun_admin_config VALUES('autodate','20150301');
INSERT INTO phpyun_admin_config VALUES('autodate','20150302');
INSERT INTO phpyun_admin_config VALUES('subscribe_time','1425264457');
INSERT INTO phpyun_admin_config VALUES('autodate','20150302');
INSERT INTO phpyun_admin_config VALUES('autodate','20150303');
INSERT INTO phpyun_admin_config VALUES('subscribe_time','1425347436');
INSERT INTO phpyun_admin_config VALUES('autodate','20150303');
INSERT INTO phpyun_admin_config VALUES('autodate','20150304');
INSERT INTO phpyun_admin_config VALUES('subscribe_time','1425434539');
INSERT INTO phpyun_admin_config VALUES('autodate','20150304');
INSERT INTO phpyun_admin_config VALUES('autodate','20150305');
INSERT INTO phpyun_admin_config VALUES('subscribe_time','1425518393');
INSERT INTO phpyun_admin_config VALUES('autodate','20150305');

INSERT INTO phpyun_admin_link VALUES('1','人才网','http://www.phpyun.com ','0','','1','1','0','1356609401','8','3');
INSERT INTO phpyun_admin_link VALUES('2','cms人才系统','http://www.phpyun.com','1','upload/link/20140526/14108767543.PNG','2','1','0','1375927195','0','1');
INSERT INTO phpyun_admin_link VALUES('3','hr135人才网','http://www.hr135.com','0','','1','1','0','1375927889','0','1');
INSERT INTO phpyun_admin_link VALUES('4','PHPYUN论坛','http://www.phyun.com/bbs','0','','1','1','0','1375927908','0','1');
INSERT INTO phpyun_admin_link VALUES('5','沭阳人才网','http://www.shyjob.net','0','','1','1','0','1375927908','0','1');
INSERT INTO phpyun_admin_link VALUES('6','phpyun人才系统','http://www.phpyun.com','0','','1','1','0','1375927922','0','1');

INSERT INTO phpyun_admin_log VALUES('1','1','admin','邮箱配置设置成功！','1423192234');
INSERT INTO phpyun_admin_log VALUES('2','1','admin','微信菜单(ID:4)名称修改成功','1423192397');
INSERT INTO phpyun_admin_log VALUES('3','1','admin','职位审核(ID:1)设置成功！','1423192533');
INSERT INTO phpyun_admin_log VALUES('4','1','admin','职位推荐设置成功！','1423192548');
INSERT INTO phpyun_admin_log VALUES('5','1','admin','微信菜单(ID:5)名称修改成功','1423193400');
INSERT INTO phpyun_admin_log VALUES('6','1','admin','会员配置修改成功！','1423201036');
INSERT INTO phpyun_admin_log VALUES('7','1','admin','数据库备份删除成功！','1425518469');

INSERT INTO phpyun_admin_navigation VALUES('1','系统','0','','0','system','18','0');
INSERT INTO phpyun_admin_navigation VALUES('3','个人','0','','0','user','16','0');
INSERT INTO phpyun_admin_navigation VALUES('4','新闻','0','','0','','8','1');
INSERT INTO phpyun_admin_navigation VALUES('5','生成','0','','0','generate','7','0');
INSERT INTO phpyun_admin_navigation VALUES('6','运营','0','','0','operations','6','0');
INSERT INTO phpyun_admin_navigation VALUES('127','工具','0','','0','tool','1','0');
INSERT INTO phpyun_admin_navigation VALUES('8','系统设置','1','','0','','4','0');
INSERT INTO phpyun_admin_navigation VALUES('134','公告管理','124','index.php?m=admin_announcement','0','','1','0');
INSERT INTO phpyun_admin_navigation VALUES('11','网站设置','8','index.php?m=config','2','','10','0');
INSERT INTO phpyun_admin_navigation VALUES('141','发送邮件','137','index.php?m=email','0','','0','0');
INSERT INTO phpyun_admin_navigation VALUES('85','企业会员分类','80','index.php?m=comclass','1','','2','0');
INSERT INTO phpyun_admin_navigation VALUES('142','新闻首页','49','index.php?m=cache&c=news','1','','7','0');
INSERT INTO phpyun_admin_navigation VALUES('1244','一键更新','49','index.php?m=cache&c=all','2','','0','0');
INSERT INTO phpyun_admin_navigation VALUES('10','企业','0','','0','com','17','0');
INSERT INTO phpyun_admin_navigation VALUES('1240','企业管理','10','','','0','0','0');
INSERT INTO phpyun_admin_navigation VALUES('35','个人用户','3','','0','','0','0');
INSERT INTO phpyun_admin_navigation VALUES('78','类别','0','','0','column','8','0');
INSERT INTO phpyun_admin_navigation VALUES('38','个人用户列表','35','index.php?m=user_member','1','','10','0');
INSERT INTO phpyun_admin_navigation VALUES('133','新闻管理','124','index.php?m=admin_news','2','','11','0');
INSERT INTO phpyun_admin_navigation VALUES('143','风格管理','128','index.php?m=admin_style','1','','0','0');
INSERT INTO phpyun_admin_navigation VALUES('80','类别管理','78','','0','','0','0');
INSERT INTO phpyun_admin_navigation VALUES('135','单页面管理','124','index.php?m=description','1','','1','0');
INSERT INTO phpyun_admin_navigation VALUES('136','企业用户列表','1240','index.php?m=com_member','1','','0','1');
INSERT INTO phpyun_admin_navigation VALUES('138','广告管理','13','index.php?m=advertise','1','','7','0');
INSERT INTO phpyun_admin_navigation VALUES('49','页面生成','5','','0','','0','0');
INSERT INTO phpyun_admin_navigation VALUES('50','生成缓存','49','index.php?m=cache&c=cache','1','','4','0');
INSERT INTO phpyun_admin_navigation VALUES('128','网站工具','127','','0','','0','0');
INSERT INTO phpyun_admin_navigation VALUES('144','职位类别管理','80','index.php?m=admin_job','1','','3','0');
INSERT INTO phpyun_admin_navigation VALUES('86','城市管理','80','index.php?m=admin_city','1','','5','0');
INSERT INTO phpyun_admin_navigation VALUES('122','支付设置','8','index.php?m=payconfig','1','','3','0');
INSERT INTO phpyun_admin_navigation VALUES('137','运营管理','6','','0','','0','0');
INSERT INTO phpyun_admin_navigation VALUES('124','新闻管理','9','','0','','0','0');
INSERT INTO phpyun_admin_navigation VALUES('126','用户设置','8','index.php?m=userconfig','1','','0','0');
INSERT INTO phpyun_admin_navigation VALUES('103','图片上传','89','admin_uploadpic.php','1','','7','1');
INSERT INTO phpyun_admin_navigation VALUES('104','个人会员分类','80','index.php?m=userclass','1','','9','0');
INSERT INTO phpyun_admin_navigation VALUES('129','模板管理','128','index.php?m=admin_template','1','','0','0');
INSERT INTO phpyun_admin_navigation VALUES('1312','我的帐号','1306','index.php?m=admin_user&c=myuser','2','0','10','0');
INSERT INTO phpyun_admin_navigation VALUES('139','友情链接','137','index.php?m=link','0','','0','0');
INSERT INTO phpyun_admin_navigation VALUES('145','行业管理','80','index.php?m=industry','1','','4','1');
INSERT INTO phpyun_admin_navigation VALUES('146','导航设置','8','index.php?m=navigation','2','','7','0');
INSERT INTO phpyun_admin_navigation VALUES('147','数据库','128','index.php?m=database','0','','0','0');
INSERT INTO phpyun_admin_navigation VALUES('148','整合论坛','128','index.php?m=admin_uc','1','','4','0');
INSERT INTO phpyun_admin_navigation VALUES('149','微招聘','1240','index.php?m=admin_once','1','','9','0');
INSERT INTO phpyun_admin_navigation VALUES('150','简历管理','35','index.php?m=admin_resume','2','','9','0');
INSERT INTO phpyun_admin_navigation VALUES('151','公司管理','1240','index.php?m=admin_company','1','','15','0');
INSERT INTO phpyun_admin_navigation VALUES('152','职位管理','1240','index.php?m=admin_company_job','1','','14','0');
INSERT INTO phpyun_admin_navigation VALUES('155','充值记录','137','index.php?m=company_order','1','','0','0');
INSERT INTO phpyun_admin_navigation VALUES('156','消费记录','137','index.php?m=company_pay','0','','0','0');
INSERT INTO phpyun_admin_navigation VALUES('157','邮件设置','8','index.php?m=emailconfig','1','','6','0');
INSERT INTO phpyun_admin_navigation VALUES('158','短信设置','8','index.php?m=msgconfig','1','','6','0');
INSERT INTO phpyun_admin_navigation VALUES('159','快捷登录','128','index.php?m=qqconfig','1','','3','0');
INSERT INTO phpyun_admin_navigation VALUES('162','后台充值','137','index.php?m=recharge','0','','0','0');
INSERT INTO phpyun_admin_navigation VALUES('163','短信群发','137','index.php?m=information','0','','0','0');
INSERT INTO phpyun_admin_navigation VALUES('164','首页生成','49','index.php?m=cache&c=index','2','','10','0');
INSERT INTO phpyun_admin_navigation VALUES('168','新闻类别','49','index.php?m=cache&c=newsclass','1','','6','0');
INSERT INTO phpyun_admin_navigation VALUES('167','新闻详细页','49','index.php?m=cache&c=archive','1','','5','0');
INSERT INTO phpyun_admin_navigation VALUES('169','关键字管理','137','index.php?m=admin_keyword','1','','6','0');
INSERT INTO phpyun_admin_navigation VALUES('171','留言反馈','1216','index.php?m=admin_message','2','','1','0');
INSERT INTO phpyun_admin_navigation VALUES('172','短信记录','137','index.php?m=mobliemsg','0','','3','0');
INSERT INTO phpyun_admin_navigation VALUES('173','名企招聘','1240','index.php?m=hotjob','1','','0','1');
INSERT INTO phpyun_admin_navigation VALUES('174','企业认证审核','1240','index.php?m=comcert','1','','10','0');
INSERT INTO phpyun_admin_navigation VALUES('176','SEO设置','8','index.php?m=seo','1','','3','0');
INSERT INTO phpyun_admin_navigation VALUES('177','数据采集','128','index.php?m=collection','0','','0','0');
INSERT INTO phpyun_admin_navigation VALUES('178','分站管理','128','index.php?m=admin_domain','1','','0','0');
INSERT INTO phpyun_admin_navigation VALUES('179','企业模板','128','index.php?m=comtpl','','','5','0');
INSERT INTO phpyun_admin_navigation VALUES('1239','微信客户端','128','index.php?m=wx','','','0','0');
INSERT INTO phpyun_admin_navigation VALUES('1238','管理员日志','1306','index.php?m=admin_log','','','0','0');
INSERT INTO phpyun_admin_navigation VALUES('1267','招聘会列表','1266','index.php?m=zhaopinhui','0','0','0','0');
INSERT INTO phpyun_admin_navigation VALUES('1268','添加招聘会','1266','index.php?m=zhaopinhui&c=add','0','0','0','0');
INSERT INTO phpyun_admin_navigation VALUES('1266','招聘会管理','2','','0','0','0','0');
INSERT INTO phpyun_admin_navigation VALUES('188','企业新闻管理','1240','index.php?m=comnews','1','','12','0');
INSERT INTO phpyun_admin_navigation VALUES('189','企业产品管理','1240','index.php?m=comproduct','1','','13','0');
INSERT INTO phpyun_admin_navigation VALUES('2','招聘会','0','','0','zph','12','0');
INSERT INTO phpyun_admin_navigation VALUES('1269','参会企业','1266','index.php?m=zhaopinhui&c=com','0','0','0','0');
INSERT INTO phpyun_admin_navigation VALUES('1270','积分设置','8','index.php?m=integral','0','0','0','0');
INSERT INTO phpyun_admin_navigation VALUES('170','行业类别','80','index.php?m=admin_industry','2','','4','0');
INSERT INTO phpyun_admin_navigation VALUES('195','个人认证审核','35','index.php?m=usercert','0','','6','0');
INSERT INTO phpyun_admin_navigation VALUES('1197','求职咨询','35','index.php?m=admin_msg','0','','2','0');
INSERT INTO phpyun_admin_navigation VALUES('1203','微简历','35','index.php?m=admin_tiny','0','','4','0');
INSERT INTO phpyun_admin_navigation VALUES('1210','社交','0','','0','social','11','0');
INSERT INTO phpyun_admin_navigation VALUES('9','新闻','0','','0','news','13','0');
INSERT INTO phpyun_admin_navigation VALUES('1212','问答管理','1216','index.php?m=admin_question','1','','0','0');
INSERT INTO phpyun_admin_navigation VALUES('1213','问答类别','80','index.php?m=question_class','','','0','0');
INSERT INTO phpyun_admin_navigation VALUES('1216','社交','1210','','0','','0','0');
INSERT INTO phpyun_admin_navigation VALUES('1217','留言管理','1216','index.php?m=friend_message','','','0','0');
INSERT INTO phpyun_admin_navigation VALUES('1218','动态管理','1216','index.php?m=friend_state','','','0','0');
INSERT INTO phpyun_admin_navigation VALUES('1219','举报原因管理','80','index.php?m=admin_reason','1','','0','0');
INSERT INTO phpyun_admin_navigation VALUES('1220','数据调用','128','index.php?m=datacall','1','','0','0');
INSERT INTO phpyun_admin_navigation VALUES('1223','举报管理','137','index.php?m=report','1','','0','0');
INSERT INTO phpyun_admin_navigation VALUES('1224','职位搜索','1240','index.php?m=admin_searchest','1','','7','0');
INSERT INTO phpyun_admin_navigation VALUES('1225','举报管理','137','index.php?m=report&type=0','1','','0','1');
INSERT INTO phpyun_admin_navigation VALUES('1234','企业评论','1240','index.php?m=com_pl','1','0','11','0');
INSERT INTO phpyun_admin_navigation VALUES('1243','计划任务','128','index.php?m=cron','','','5','0');
INSERT INTO phpyun_admin_navigation VALUES('1260','简历下载记录','35','index.php?m=down','1','0','1','0');
INSERT INTO phpyun_admin_navigation VALUES('1261','职位申请记录','1240','index.php?m=apply','1','0','1','0');
INSERT INTO phpyun_admin_navigation VALUES('1262','邀请面试记录','1240','index.php?m=invite','1','0','1','0');
INSERT INTO phpyun_admin_navigation VALUES('1264','会员日志','1216','index.php?m=member_log','0','0','0','0');
INSERT INTO phpyun_admin_navigation VALUES('1271','企业会员等级','1240','index.php?m=admin_company_rating','','0','0','0');
INSERT INTO phpyun_admin_navigation VALUES('1273','邮件记录','137','index.php?m=emailmsg','0','0','0','0');
INSERT INTO phpyun_admin_navigation VALUES('1274','兑换奖品管理','1284','index.php?m=reward','','0','0','0');
INSERT INTO phpyun_admin_navigation VALUES('1276','工具箱','124','index.php?m=hr','','','6','0');
INSERT INTO phpyun_admin_navigation VALUES('1277','单页面生成','49','index.php?m=cache&c=once','1','0','2','0');
INSERT INTO phpyun_admin_navigation VALUES('1278','添加新闻','124','index.php?m=admin_news&c=news','1','','10','0');
INSERT INTO phpyun_admin_navigation VALUES('1280','简历浏览记录','35','index.php?m=look_resume','0','0','0','0');
INSERT INTO phpyun_admin_navigation VALUES('1281','职位浏览记录','1240','index.php?m=look_job','0','0','0','0');
INSERT INTO phpyun_admin_navigation VALUES('12','广告','0','','0','ban','9','0');
INSERT INTO phpyun_admin_navigation VALUES('13','广告管理','12','','0','0','0','0');
INSERT INTO phpyun_admin_navigation VALUES('14','商城','0','','0','jf','10','0');
INSERT INTO phpyun_admin_navigation VALUES('1284','商城管理','14','','0','jifen','0','0');
INSERT INTO phpyun_admin_navigation VALUES('1285','广告类别','13','index.php?m=advertise&c=class','0','0','0','0');
INSERT INTO phpyun_admin_navigation VALUES('1286','添加广告','13','index.php?m=advertise&c=ad_add','1','0','6','0');
INSERT INTO phpyun_admin_navigation VALUES('1287','新闻类别','124','index.php?m=admin_news&c=group','1','0','8','0');
INSERT INTO phpyun_admin_navigation VALUES('1289','公司搜索','1240','index.php?m=admin_searchest&c=company','1','0','8','0');
INSERT INTO phpyun_admin_navigation VALUES('1290','简历搜索','35','index.php?m=admin_searchest&c=resume','0','0','0','0');
INSERT INTO phpyun_admin_navigation VALUES('1292','兑换奖品记录','1284','index.php?m=reward_list','1','0','9','0');
INSERT INTO phpyun_admin_navigation VALUES('1302','工具箱类别','124','index.php?m=hrclass','1','0','5','0');
INSERT INTO phpyun_admin_navigation VALUES('1303','单页面类别','80','index.php?m=desc_class','0','0','0','0');
INSERT INTO phpyun_admin_navigation VALUES('1304','预警管理','128','index.php?m=warning','0','0','0','0');
INSERT INTO phpyun_admin_navigation VALUES('15','管理员','0','','0','guanliyuan','0','0');
INSERT INTO phpyun_admin_navigation VALUES('1306','后台管理员','15','','0','0','0','0');
INSERT INTO phpyun_admin_navigation VALUES('1307','管理员列表','1306','index.php?m=admin_user','1','0','8','0');
INSERT INTO phpyun_admin_navigation VALUES('1308','添加管理员','1306','index.php?m=admin_user&c=add','1','0','7','0');
INSERT INTO phpyun_admin_navigation VALUES('1309','管理员类型','1306','index.php?m=admin_user&c=group','0','0','3','0');
INSERT INTO phpyun_admin_navigation VALUES('1310','添加管理员类型','1306','index.php?m=admin_user&c=addgroup','0','0','4','0');
INSERT INTO phpyun_admin_navigation VALUES('1320','订阅管理','137','index.php?m=subscribe','1','0','0','0');
INSERT INTO phpyun_admin_navigation VALUES('1313','生成XML','49','index.php?m=admin_xml','0','0','0','0');
INSERT INTO phpyun_admin_navigation VALUES('1314','修改我的密码','1306','index.php?m=admin_user&c=pass','1','0','9','0');
INSERT INTO phpyun_admin_navigation VALUES('1315','系统消息','1216','index.php?m=sysnews','0','0','0','0');
INSERT INTO phpyun_admin_navigation VALUES('1316','网站地图','8','index.php?m=navmap','0','0','0','0');
INSERT INTO phpyun_admin_navigation VALUES('1319','站内信','1216','index.php?m=friend_letter','1','0','0','0');
INSERT INTO phpyun_admin_navigation VALUES('1318','模块设置','8','index.php?m=model_config','1','0','9','0');
INSERT INTO phpyun_admin_navigation VALUES('1321','页面设置','8','index.php?m=web_config','1','0','8','0');
INSERT INTO phpyun_admin_navigation VALUES('1322','注册设置','8','index.php?m=regset','','','0','0');


INSERT INTO phpyun_admin_user VALUES('1','1','admin','21232f297a57a5a743894a0e4a801fc3','超级管理员','0','1425518445');

INSERT INTO phpyun_admin_user_group VALUES('1','超级管理员','a:127:{i:0;s:1:\"1\";i:1;s:1:\"8\";i:2;s:2:\"11\";i:3;s:4:\"1318\";i:4;s:4:\"1321\";i:5;s:3:\"146\";i:6;s:3:\"157\";i:7;s:3:\"158\";i:8;s:3:\"122\";i:9;s:3:\"176\";i:10;s:3:\"126\";i:11;s:4:\"1270\";i:12;s:4:\"1316\";i:13;s:4:\"1322\";i:14;s:2:\"10\";i:15;s:4:\"1240\";i:16;s:3:\"151\";i:17;s:3:\"152\";i:18;s:3:\"189\";i:19;s:3:\"188\";i:20;s:4:\"1234\";i:21;s:3:\"174\";i:22;s:3:\"149\";i:23;s:4:\"1289\";i:24;s:4:\"1224\";i:25;s:4:\"1261\";i:26;s:4:\"1262\";i:27;s:4:\"1271\";i:28;s:4:\"1281\";i:29;s:1:\"3\";i:30;s:2:\"35\";i:31;s:2:\"38\";i:32;s:3:\"150\";i:33;s:3:\"195\";i:34;s:4:\"1203\";i:35;s:4:\"1197\";i:36;s:4:\"1260\";i:37;s:4:\"1280\";i:38;s:4:\"1290\";i:39;s:1:\"9\";i:40;s:3:\"124\";i:41;s:3:\"133\";i:42;s:4:\"1278\";i:43;s:4:\"1287\";i:44;s:4:\"1276\";i:45;s:4:\"1302\";i:46;s:3:\"134\";i:47;s:3:\"135\";i:48;s:1:\"2\";i:49;s:4:\"1266\";i:50;s:4:\"1267\";i:51;s:4:\"1268\";i:52;s:4:\"1269\";i:53;s:4:\"1210\";i:54;s:4:\"1216\";i:55;s:3:\"171\";i:56;s:4:\"1212\";i:57;s:4:\"1217\";i:58;s:4:\"1218\";i:59;s:4:\"1264\";i:60;s:4:\"1315\";i:61;s:4:\"1319\";i:62;s:2:\"14\";i:63;s:4:\"1284\";i:64;s:4:\"1292\";i:65;s:4:\"1274\";i:66;s:2:\"12\";i:67;s:2:\"13\";i:68;s:3:\"138\";i:69;s:4:\"1286\";i:70;s:4:\"1285\";i:71;s:2:\"78\";i:72;s:2:\"80\";i:73;s:3:\"104\";i:74;s:2:\"86\";i:75;s:3:\"170\";i:76;s:3:\"144\";i:77;s:2:\"85\";i:78;s:4:\"1213\";i:79;s:4:\"1219\";i:80;s:4:\"1303\";i:81;s:1:\"5\";i:82;s:2:\"49\";i:83;s:3:\"164\";i:84;s:3:\"142\";i:85;s:3:\"168\";i:86;s:3:\"167\";i:87;s:2:\"50\";i:88;s:4:\"1277\";i:89;s:4:\"1244\";i:90;s:4:\"1313\";i:91;s:1:\"6\";i:92;s:3:\"137\";i:93;s:3:\"169\";i:94;s:3:\"172\";i:95;s:3:\"141\";i:96;s:3:\"139\";i:97;s:3:\"155\";i:98;s:3:\"156\";i:99;s:3:\"162\";i:100;s:3:\"163\";i:101;s:4:\"1223\";i:102;s:4:\"1273\";i:103;s:4:\"1320\";i:104;s:3:\"127\";i:105;s:3:\"128\";i:106;s:3:\"179\";i:107;s:4:\"1243\";i:108;s:3:\"148\";i:109;s:3:\"159\";i:110;s:3:\"143\";i:111;s:3:\"129\";i:112;s:3:\"147\";i:113;s:3:\"177\";i:114;s:3:\"178\";i:115;s:4:\"1239\";i:116;s:4:\"1220\";i:117;s:4:\"1304\";i:118;s:2:\"15\";i:119;s:4:\"1306\";i:120;s:4:\"1312\";i:121;s:4:\"1314\";i:122;s:4:\"1307\";i:123;s:4:\"1308\";i:124;s:4:\"1310\";i:125;s:4:\"1309\";i:126;s:4:\"1238\";}');



INSERT INTO phpyun_atn VALUES('2','2','1','1423192152','1','2');



INSERT INTO phpyun_banner VALUES('1','1','../upload/company/20150206/14324100252.JPG');



INSERT INTO phpyun_city_class VALUES('1','0','北京','B','1','0','1');
INSERT INTO phpyun_city_class VALUES('2','0','上海','S','1','0','2');
INSERT INTO phpyun_city_class VALUES('3','0','天津','T','1','0','3');
INSERT INTO phpyun_city_class VALUES('4','0','重庆','C','1','0','4');
INSERT INTO phpyun_city_class VALUES('5','0','河北','H','1','0','5');
INSERT INTO phpyun_city_class VALUES('6','0','山西','S','1','0','6');
INSERT INTO phpyun_city_class VALUES('7','0','内蒙古','N','1','0','7');
INSERT INTO phpyun_city_class VALUES('8','0','辽宁','L','1','0','9');
INSERT INTO phpyun_city_class VALUES('9','0','吉林','J','1','0','10');
INSERT INTO phpyun_city_class VALUES('10','0','黑龙江','H','1','0','11');
INSERT INTO phpyun_city_class VALUES('11','0','江苏','J','1','0','8');
INSERT INTO phpyun_city_class VALUES('12','0','浙江','Z','1','0','12');
INSERT INTO phpyun_city_class VALUES('13','0','安徽','A','1','0','13');
INSERT INTO phpyun_city_class VALUES('14','0','福建','F','1','0','14');
INSERT INTO phpyun_city_class VALUES('15','0','江西','J','1','0','15');
INSERT INTO phpyun_city_class VALUES('16','0','山东','S','1','0','16');
INSERT INTO phpyun_city_class VALUES('17','0','河南','H','1','0','17');
INSERT INTO phpyun_city_class VALUES('18','0','湖北','H','1','0','18');
INSERT INTO phpyun_city_class VALUES('19','0','湖南','H','1','0','33');
INSERT INTO phpyun_city_class VALUES('20','0','广东','G','1','0','32');
INSERT INTO phpyun_city_class VALUES('21','0','广西','G','1','0','31');
INSERT INTO phpyun_city_class VALUES('22','0','海南','H','1','0','30');
INSERT INTO phpyun_city_class VALUES('23','0','四川','S','1','0','29');
INSERT INTO phpyun_city_class VALUES('24','0','贵州','G','1','0','28');
INSERT INTO phpyun_city_class VALUES('25','0','云南','Y','1','0','27');
INSERT INTO phpyun_city_class VALUES('26','0','西藏','X','1','0','26');
INSERT INTO phpyun_city_class VALUES('27','0','陕西','S','1','0','25');
INSERT INTO phpyun_city_class VALUES('28','0','甘肃','G','1','0','24');
INSERT INTO phpyun_city_class VALUES('29','0','宁夏','N','1','0','23');
INSERT INTO phpyun_city_class VALUES('30','0','青海','Q','1','0','22');
INSERT INTO phpyun_city_class VALUES('31','0','新疆','X','1','0','21');
INSERT INTO phpyun_city_class VALUES('32','0','香港','X','1','0','20');
INSERT INTO phpyun_city_class VALUES('34','0','台湾','T','1','0','19');
INSERT INTO phpyun_city_class VALUES('35','0','其它','Q','1','0','34');
INSERT INTO phpyun_city_class VALUES('36','1','北京','B','1','1','1');
INSERT INTO phpyun_city_class VALUES('37','2','上海','S','1','1','0');
INSERT INTO phpyun_city_class VALUES('38','3','天津','T','1','1','0');
INSERT INTO phpyun_city_class VALUES('39','4','重庆','C','1','1','0');
INSERT INTO phpyun_city_class VALUES('40','5','石家庄','S','1','1','0');
INSERT INTO phpyun_city_class VALUES('41','5','邯郸','H','1','1','0');
INSERT INTO phpyun_city_class VALUES('42','5','邢台','X','1','1','0');
INSERT INTO phpyun_city_class VALUES('43','5','保定','B','1','1','0');
INSERT INTO phpyun_city_class VALUES('44','5','张家口','Z','1','1','0');
INSERT INTO phpyun_city_class VALUES('45','5','承德','C','1','1','0');
INSERT INTO phpyun_city_class VALUES('46','5','廊坊','L','1','1','0');
INSERT INTO phpyun_city_class VALUES('47','5','唐山','T','1','1','0');
INSERT INTO phpyun_city_class VALUES('48','5','秦皇岛','Q','1','1','0');
INSERT INTO phpyun_city_class VALUES('49','5','沧州','C','1','1','0');
INSERT INTO phpyun_city_class VALUES('50','5','衡水','H','1','1','0');
INSERT INTO phpyun_city_class VALUES('51','6','太原','T','1','1','0');
INSERT INTO phpyun_city_class VALUES('52','6','大同','D','1','1','0');
INSERT INTO phpyun_city_class VALUES('53','6','阳泉','Y','1','1','0');
INSERT INTO phpyun_city_class VALUES('54','6','长治','C','1','1','0');
INSERT INTO phpyun_city_class VALUES('55','6','晋城','J','1','1','0');
INSERT INTO phpyun_city_class VALUES('56','6','朔州','S','1','1','0');
INSERT INTO phpyun_city_class VALUES('57','6','吕梁','L','1','1','0');
INSERT INTO phpyun_city_class VALUES('58','6','忻州','X','1','1','0');
INSERT INTO phpyun_city_class VALUES('59','6','晋中','J','1','1','0');
INSERT INTO phpyun_city_class VALUES('60','6','临汾','L','1','1','0');
INSERT INTO phpyun_city_class VALUES('61','6','运城','Y','1','1','0');
INSERT INTO phpyun_city_class VALUES('62','7','呼和浩特','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('63','7','包头','B','1','0','0');
INSERT INTO phpyun_city_class VALUES('64','7','乌海','W','1','0','0');
INSERT INTO phpyun_city_class VALUES('65','7','赤峰','C','1','0','0');
INSERT INTO phpyun_city_class VALUES('66','7','呼伦贝尔','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('67','7','阿拉善盟','A','1','0','0');
INSERT INTO phpyun_city_class VALUES('68','7','哲里木盟','Z','1','0','0');
INSERT INTO phpyun_city_class VALUES('69','7','兴安盟盟','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('70','7','乌兰察盟','W','1','0','0');
INSERT INTO phpyun_city_class VALUES('71','7','锡林郭盟','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('72','7','巴彦淖盟','B','1','0','0');
INSERT INTO phpyun_city_class VALUES('73','7','伊克昭盟','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('74','8','沈阳','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('75','8','大连','D','1','0','0');
INSERT INTO phpyun_city_class VALUES('76','8','鞍山','A','1','0','0');
INSERT INTO phpyun_city_class VALUES('77','8','抚顺','F','1','0','0');
INSERT INTO phpyun_city_class VALUES('78','8','本溪','B','1','0','0');
INSERT INTO phpyun_city_class VALUES('79','8','丹东','D','1','0','0');
INSERT INTO phpyun_city_class VALUES('80','8','锦州','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('81','8','营口','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('82','8','阜新','F','1','0','0');
INSERT INTO phpyun_city_class VALUES('83','8','辽阳','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('84','8','盘锦','P','1','0','0');
INSERT INTO phpyun_city_class VALUES('85','8','铁岭','T','1','0','0');
INSERT INTO phpyun_city_class VALUES('86','8','朝阳','C','1','0','0');
INSERT INTO phpyun_city_class VALUES('87','8','葫芦岛','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('88','9','长春','C','1','0','0');
INSERT INTO phpyun_city_class VALUES('89','9','吉林','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('90','9','四平','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('91','9','辽源','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('92','9','通化','T','1','0','0');
INSERT INTO phpyun_city_class VALUES('93','9','白山','B','1','0','0');
INSERT INTO phpyun_city_class VALUES('94','9','松原','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('95','9','白城','B','1','0','0');
INSERT INTO phpyun_city_class VALUES('96','9','延边','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('97','10','哈尔滨','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('98','10','齐齐哈尔','Q','1','0','0');
INSERT INTO phpyun_city_class VALUES('99','10','牡丹江','M','1','0','0');
INSERT INTO phpyun_city_class VALUES('100','10','佳木斯','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('101','10','大庆','D','1','0','0');
INSERT INTO phpyun_city_class VALUES('102','10','绥化','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('103','10','鹤岗','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('104','10','鸡西','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('105','10','黑河','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('106','10','双鸭山','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('107','10','伊春','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('108','10','七台河','Q','1','0','0');
INSERT INTO phpyun_city_class VALUES('109','10','大兴安岭','D','1','0','0');
INSERT INTO phpyun_city_class VALUES('110','11','南京','N','1','1','11');
INSERT INTO phpyun_city_class VALUES('111','11','镇江','Z','1','1','2');
INSERT INTO phpyun_city_class VALUES('112','11','苏州','S','1','1','3');
INSERT INTO phpyun_city_class VALUES('113','11','南通','N','1','1','4');
INSERT INTO phpyun_city_class VALUES('114','11','扬州','Y','1','1','5');
INSERT INTO phpyun_city_class VALUES('115','11','盐城','Y','1','1','6');
INSERT INTO phpyun_city_class VALUES('116','11','徐州','X','1','1','7');
INSERT INTO phpyun_city_class VALUES('117','11','连云港','L','1','0','8');
INSERT INTO phpyun_city_class VALUES('118','11','常州','C','1','0','9');
INSERT INTO phpyun_city_class VALUES('119','11','无锡','W','1','0','10');
INSERT INTO phpyun_city_class VALUES('120','11','宿迁','S','1','0','1');
INSERT INTO phpyun_city_class VALUES('121','11','泰州','T','1','0','12');
INSERT INTO phpyun_city_class VALUES('122','11','淮安','H','1','0','13');
INSERT INTO phpyun_city_class VALUES('123','12','杭州','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('124','12','宁波','N','1','0','0');
INSERT INTO phpyun_city_class VALUES('125','12','温州','W','1','0','0');
INSERT INTO phpyun_city_class VALUES('126','12','嘉兴','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('127','12','湖州','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('128','12','绍兴','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('129','12','金华','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('130','12','衢州','Q','1','0','0');
INSERT INTO phpyun_city_class VALUES('131','12','舟山','Z','1','0','0');
INSERT INTO phpyun_city_class VALUES('132','12','台州','T','1','0','0');
INSERT INTO phpyun_city_class VALUES('133','12','丽水','L','1','1','0');
INSERT INTO phpyun_city_class VALUES('134','13','合肥','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('135','13','芜湖','W','1','0','0');
INSERT INTO phpyun_city_class VALUES('136','13','蚌埠','B','1','0','0');
INSERT INTO phpyun_city_class VALUES('137','13','马鞍山','M','1','0','0');
INSERT INTO phpyun_city_class VALUES('138','13','淮北','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('139','13','铜陵','T','1','0','0');
INSERT INTO phpyun_city_class VALUES('140','13','安庆','A','1','0','0');
INSERT INTO phpyun_city_class VALUES('141','13','黄山','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('142','13','滁州','C','1','0','0');
INSERT INTO phpyun_city_class VALUES('143','13','宿州','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('144','13','池州','C','1','0','0');
INSERT INTO phpyun_city_class VALUES('145','13','淮南','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('146','13','巢湖','C','1','0','0');
INSERT INTO phpyun_city_class VALUES('147','13','阜阳','B','1','0','0');
INSERT INTO phpyun_city_class VALUES('148','13','六安','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('149','13','宣城','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('150','13','亳州','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('151','14','福州','F','1','0','0');
INSERT INTO phpyun_city_class VALUES('152','14','厦门','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('153','14','莆田','P','1','0','0');
INSERT INTO phpyun_city_class VALUES('154','14','三明','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('155','14','泉州','Q','1','0','0');
INSERT INTO phpyun_city_class VALUES('156','14','漳州','Z','1','0','0');
INSERT INTO phpyun_city_class VALUES('157','14','南平','N','1','0','0');
INSERT INTO phpyun_city_class VALUES('158','14','龙岩','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('159','14','宁德','N','1','0','0');
INSERT INTO phpyun_city_class VALUES('160','15','南昌','N','1','0','0');
INSERT INTO phpyun_city_class VALUES('161','15','景德镇','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('162','15','九江','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('163','15','鹰潭','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('164','15','萍乡','P','1','0','0');
INSERT INTO phpyun_city_class VALUES('165','15','新馀','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('166','15','赣州','G','1','0','0');
INSERT INTO phpyun_city_class VALUES('167','15','吉安','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('168','15','宜春','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('169','15','抚州','F','1','0','0');
INSERT INTO phpyun_city_class VALUES('170','15','上饶','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('171','16','济南','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('172','16','青岛','Q','1','0','0');
INSERT INTO phpyun_city_class VALUES('173','16','淄博','Z','1','0','0');
INSERT INTO phpyun_city_class VALUES('174','16','枣庄','Z','1','0','0');
INSERT INTO phpyun_city_class VALUES('175','16','东营','D','1','0','0');
INSERT INTO phpyun_city_class VALUES('176','16','烟台','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('177','16','潍坊','W','1','0','0');
INSERT INTO phpyun_city_class VALUES('178','16','济宁','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('179','16','泰安','T','1','0','0');
INSERT INTO phpyun_city_class VALUES('180','16','威海','W','1','0','0');
INSERT INTO phpyun_city_class VALUES('181','16','日照','R','1','0','0');
INSERT INTO phpyun_city_class VALUES('182','16','莱芜','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('183','16','临沂','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('184','16','德州','D','1','0','0');
INSERT INTO phpyun_city_class VALUES('185','16','聊城','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('186','16','滨州','B','1','0','0');
INSERT INTO phpyun_city_class VALUES('187','16','菏泽','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('188','17','开封','K','1','0','0');
INSERT INTO phpyun_city_class VALUES('189','17','洛阳','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('190','17','平顶山','P','1','0','0');
INSERT INTO phpyun_city_class VALUES('191','17','安阳','A','1','0','0');
INSERT INTO phpyun_city_class VALUES('192','17','鹤壁','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('193','17','新乡','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('194','17','焦作','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('195','17','濮阳','P','1','0','0');
INSERT INTO phpyun_city_class VALUES('196','17','许昌','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('197','17','漯河','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('198','17','三门峡','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('199','17','南阳','N','1','0','0');
INSERT INTO phpyun_city_class VALUES('200','17','商丘','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('201','17','信阳','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('202','17','周口','Z','1','0','0');
INSERT INTO phpyun_city_class VALUES('203','17','驻马店','Z','1','0','0');
INSERT INTO phpyun_city_class VALUES('204','17','济源','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('205','18','武汉','W','1','0','0');
INSERT INTO phpyun_city_class VALUES('206','18','宜昌','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('207','18','荆州','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('208','18','襄樊','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('209','18','黄石','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('210','18','荆门','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('211','18','黄冈','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('212','18','十堰','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('213','18','恩施','E','1','0','0');
INSERT INTO phpyun_city_class VALUES('214','18','潜江','Q','1','0','0');
INSERT INTO phpyun_city_class VALUES('215','18','天门','T','1','0','0');
INSERT INTO phpyun_city_class VALUES('216','18','仙桃','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('217','18','随州','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('218','18','咸宁','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('219','18','孝感','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('220','18','鄂州','E','1','0','0');
INSERT INTO phpyun_city_class VALUES('221','19','长沙','C','1','0','0');
INSERT INTO phpyun_city_class VALUES('222','19','常德','C','1','0','0');
INSERT INTO phpyun_city_class VALUES('223','19','株洲','Z','1','0','0');
INSERT INTO phpyun_city_class VALUES('224','19','湘潭','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('225','19','衡阳','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('226','19','岳阳','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('227','19','邵阳','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('228','19','益阳','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('229','19','娄底','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('230','19','怀化','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('231','19','郴州','C','1','0','0');
INSERT INTO phpyun_city_class VALUES('232','19','永州','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('233','19','湘西','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('234','19','张家界','Z','1','0','0');
INSERT INTO phpyun_city_class VALUES('235','20','广州','G','1','0','0');
INSERT INTO phpyun_city_class VALUES('236','20','深圳','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('237','20','珠海','Z','1','0','0');
INSERT INTO phpyun_city_class VALUES('238','20','汕头','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('239','20','东莞','D','1','0','0');
INSERT INTO phpyun_city_class VALUES('240','20','中山','Z','1','0','0');
INSERT INTO phpyun_city_class VALUES('241','20','佛山','F','1','0','0');
INSERT INTO phpyun_city_class VALUES('242','20','韶关','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('243','20','江门','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('244','20','湛江','Z','1','0','0');
INSERT INTO phpyun_city_class VALUES('245','20','肇庆','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('246','20','惠州','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('247','20','梅州','M','1','0','0');
INSERT INTO phpyun_city_class VALUES('248','20','汕尾','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('249','20','河源','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('250','20','阳江','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('251','20','清远','Q','1','0','0');
INSERT INTO phpyun_city_class VALUES('252','20','潮州','C','1','0','0');
INSERT INTO phpyun_city_class VALUES('253','20','揭阳','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('254','20','云浮','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('255','21','南宁','N','1','0','0');
INSERT INTO phpyun_city_class VALUES('256','21','柳州','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('257','21','桂林','G','1','0','0');
INSERT INTO phpyun_city_class VALUES('258','21','梧州','W','1','0','0');
INSERT INTO phpyun_city_class VALUES('259','21','北海','B','1','0','0');
INSERT INTO phpyun_city_class VALUES('260','21','防城港','F','1','0','0');
INSERT INTO phpyun_city_class VALUES('261','21','钦州','Q','1','0','0');
INSERT INTO phpyun_city_class VALUES('262','21','贵港','G','1','0','0');
INSERT INTO phpyun_city_class VALUES('263','21','玉林','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('264','21','来宾','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('265','21','崇左','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('266','21','贺州','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('267','21','百色','B','1','0','0');
INSERT INTO phpyun_city_class VALUES('268','21','河池','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('269','22','海口','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('270','22','三亚','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('271','23','成都','C','1','0','0');
INSERT INTO phpyun_city_class VALUES('272','23','绵阳','M','1','0','0');
INSERT INTO phpyun_city_class VALUES('273','23','德阳','D','1','0','0');
INSERT INTO phpyun_city_class VALUES('274','23','自贡','Z','1','0','0');
INSERT INTO phpyun_city_class VALUES('275','23','攀枝花','P','1','0','0');
INSERT INTO phpyun_city_class VALUES('276','23','广元','G','1','0','0');
INSERT INTO phpyun_city_class VALUES('277','23','内江','N','1','0','0');
INSERT INTO phpyun_city_class VALUES('278','23','乐山','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('279','23','南充','N','1','0','0');
INSERT INTO phpyun_city_class VALUES('280','23','宜宾','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('281','23','广安','G','1','0','0');
INSERT INTO phpyun_city_class VALUES('282','23','达川','D','1','0','0');
INSERT INTO phpyun_city_class VALUES('283','23','雅安','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('284','23','眉山','M','1','0','0');
INSERT INTO phpyun_city_class VALUES('285','23','甘孜','G','1','0','0');
INSERT INTO phpyun_city_class VALUES('286','23','凉山','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('287','23','泸州','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('288','24','贵阳','G','1','0','0');
INSERT INTO phpyun_city_class VALUES('289','24','六盘水','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('290','24','遵义','Z','1','0','0');
INSERT INTO phpyun_city_class VALUES('291','24','安顺','A','1','0','0');
INSERT INTO phpyun_city_class VALUES('292','24','铜仁','T','1','0','0');
INSERT INTO phpyun_city_class VALUES('293','24','黔西南','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('294','24','毕节','B','1','0','0');
INSERT INTO phpyun_city_class VALUES('295','24','黔东南','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('296','24','黔南','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('297','25','昆明','K','1','1','0');
INSERT INTO phpyun_city_class VALUES('298','25','大理','D','1','1','0');
INSERT INTO phpyun_city_class VALUES('299','25','曲靖','Q','1','1','0');
INSERT INTO phpyun_city_class VALUES('300','25','玉溪','Y','1','1','0');
INSERT INTO phpyun_city_class VALUES('301','25','昭通','Z','1','1','0');
INSERT INTO phpyun_city_class VALUES('302','25','楚雄','C','1','1','0');
INSERT INTO phpyun_city_class VALUES('303','25','红河','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('304','25','文山','W','1','0','0');
INSERT INTO phpyun_city_class VALUES('305','25','思茅','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('306','25','西双版','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('307','25','保山','B','1','0','0');
INSERT INTO phpyun_city_class VALUES('308','25','德宏','D','1','0','0');
INSERT INTO phpyun_city_class VALUES('309','25','丽江','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('310','25','怒江','N','1','0','0');
INSERT INTO phpyun_city_class VALUES('311','25','迪庆','D','1','0','0');
INSERT INTO phpyun_city_class VALUES('312','25','临沧','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('313','26','拉萨','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('314','26','日喀则','R','1','0','0');
INSERT INTO phpyun_city_class VALUES('315','26','山南','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('316','26','林芝','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('317','26','昌都','C','1','0','0');
INSERT INTO phpyun_city_class VALUES('318','26','阿里','A','1','0','0');
INSERT INTO phpyun_city_class VALUES('319','26','那曲','N','1','0','0');
INSERT INTO phpyun_city_class VALUES('320','27','西安','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('321','27','宝鸡','B','1','0','0');
INSERT INTO phpyun_city_class VALUES('322','27','咸阳','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('323','27','铜川','T','1','0','0');
INSERT INTO phpyun_city_class VALUES('324','27','渭南','W','1','0','0');
INSERT INTO phpyun_city_class VALUES('325','27','延安','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('326','27','榆林','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('327','27','汉中','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('328','27','安康','A','1','1','0');
INSERT INTO phpyun_city_class VALUES('329','27','商洛','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('330','28','兰州','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('331','28','嘉峪关','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('332','28','金昌','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('333','28','白银','B','1','0','0');
INSERT INTO phpyun_city_class VALUES('334','28','天水','T','1','0','0');
INSERT INTO phpyun_city_class VALUES('335','28','酒泉','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('336','28','张掖','Z','1','0','0');
INSERT INTO phpyun_city_class VALUES('337','28','武威','W','1','0','0');
INSERT INTO phpyun_city_class VALUES('338','28','定西','D','1','0','0');
INSERT INTO phpyun_city_class VALUES('339','28','陇南','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('340','28','平凉','P','1','0','0');
INSERT INTO phpyun_city_class VALUES('341','28','庆阳','Q','1','0','0');
INSERT INTO phpyun_city_class VALUES('342','28','临夏','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('343','28','甘南','G','1','0','0');
INSERT INTO phpyun_city_class VALUES('344','29','银川','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('345','29','石嘴山','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('346','29','吴忠','W','1','0','0');
INSERT INTO phpyun_city_class VALUES('347','29','固原','G','1','0','0');
INSERT INTO phpyun_city_class VALUES('348','30','西宁','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('349','30','海东','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('350','30','海南','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('351','30','海北','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('352','30','黄南','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('353','30','玉树','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('354','30','果洛','G','1','0','0');
INSERT INTO phpyun_city_class VALUES('355','30','海西','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('356','31','乌鲁木齐','W','1','0','0');
INSERT INTO phpyun_city_class VALUES('357','31','石河子','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('358','31','克拉玛','K','1','0','0');
INSERT INTO phpyun_city_class VALUES('359','31','伊犁','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('360','31','巴音郭','B','1','0','0');
INSERT INTO phpyun_city_class VALUES('361','31','昌吉','C','1','0','0');
INSERT INTO phpyun_city_class VALUES('362','31','克孜勒','K','1','0','0');
INSERT INTO phpyun_city_class VALUES('363','31','博尔塔','B','1','0','0');
INSERT INTO phpyun_city_class VALUES('364','31','吐鲁番','T','1','0','0');
INSERT INTO phpyun_city_class VALUES('365','31','哈密','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('366','31','喀什','K','1','0','0');
INSERT INTO phpyun_city_class VALUES('367','31','和田','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('368','31','阿克苏','A','1','1','0');
INSERT INTO phpyun_city_class VALUES('369','32','香港','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('370','33','澳门','A','1','0','0');
INSERT INTO phpyun_city_class VALUES('371','34','台北','T','1','0','0');
INSERT INTO phpyun_city_class VALUES('372','34','高雄','G','1','0','0');
INSERT INTO phpyun_city_class VALUES('373','34','台中','T','1','0','0');
INSERT INTO phpyun_city_class VALUES('374','34','台南','T','1','0','0');
INSERT INTO phpyun_city_class VALUES('375','34','屏东','P','1','0','0');
INSERT INTO phpyun_city_class VALUES('376','34','南投','N','1','0','0');
INSERT INTO phpyun_city_class VALUES('377','34','云林','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('378','34','新竹','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('379','34','彰化','Z','1','0','0');
INSERT INTO phpyun_city_class VALUES('380','34','苗栗','M','1','0','0');
INSERT INTO phpyun_city_class VALUES('381','34','嘉义','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('382','34','花莲','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('383','34','桃园','T','1','0','0');
INSERT INTO phpyun_city_class VALUES('384','34','宜兰','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('385','34','基隆','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('386','34','台东','T','1','0','0');
INSERT INTO phpyun_city_class VALUES('387','34','金门','J','1','1','0');
INSERT INTO phpyun_city_class VALUES('388','34','马祖','M','1','0','0');
INSERT INTO phpyun_city_class VALUES('389','34','澎湖','P','1','0','0');
INSERT INTO phpyun_city_class VALUES('390','35','北美洲','B','1','0','0');
INSERT INTO phpyun_city_class VALUES('391','35','南美洲','N','1','0','0');
INSERT INTO phpyun_city_class VALUES('392','35','亚洲','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('393','35','非洲','F','1','0','0');
INSERT INTO phpyun_city_class VALUES('396','36','延庆县','Y','1','0','1');
INSERT INTO phpyun_city_class VALUES('397','36','密云县','X','1','0','2');
INSERT INTO phpyun_city_class VALUES('398','37','崇明县','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('399','38','静海县','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('400','38','宁河县','N','1','0','0');
INSERT INTO phpyun_city_class VALUES('401','38','蓟县','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('402','39','潼南县','T','1','0','0');
INSERT INTO phpyun_city_class VALUES('403','39','梁平县','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('404','40','平山县','P','1','0','0');
INSERT INTO phpyun_city_class VALUES('405','40','灵寿县','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('406','41','临漳县','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('407','41','成安县','C','1','0','0');
INSERT INTO phpyun_city_class VALUES('408','42','内丘县','N','1','0','0');
INSERT INTO phpyun_city_class VALUES('409','42','临城县','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('410','43','满城县','M','1','0','0');
INSERT INTO phpyun_city_class VALUES('411','43','清苑县','Q','1','0','0');
INSERT INTO phpyun_city_class VALUES('412','44','宣化县','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('413','44','张北县','Z','1','0','0');
INSERT INTO phpyun_city_class VALUES('414','45','兴隆县','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('415','45','平泉县','P','1','0','0');
INSERT INTO phpyun_city_class VALUES('416','46','永清县','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('417','46','香河县','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('418','47','乐亭县','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('419','47','迁西县','Q','1','0','0');
INSERT INTO phpyun_city_class VALUES('420','48','青龙县','Q','1','0','0');
INSERT INTO phpyun_city_class VALUES('421','48','昌黎县','C','1','0','0');
INSERT INTO phpyun_city_class VALUES('422','49','东光县','D','1','0','0');
INSERT INTO phpyun_city_class VALUES('423','49','海兴县','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('424','50','武强县','W','1','0','0');
INSERT INTO phpyun_city_class VALUES('425','50','故城县 ','G','1','0','0');
INSERT INTO phpyun_city_class VALUES('426','51','清徐县','Q','1','0','0');
INSERT INTO phpyun_city_class VALUES('427','51','娄烦县','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('428','52','天镇县','T','1','0','0');
INSERT INTO phpyun_city_class VALUES('429','52','阳高县','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('430','53','平定县','P','1','0','0');
INSERT INTO phpyun_city_class VALUES('431','53','盂县','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('432','54','平顺县','P','1','0','0');
INSERT INTO phpyun_city_class VALUES('433','54','黎城县','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('434','55','沁水县','Q','1','0','0');
INSERT INTO phpyun_city_class VALUES('435','55','阳城','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('436','56','山阴县','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('437','56','应县','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('438','57','方山县','F','1','0','0');
INSERT INTO phpyun_city_class VALUES('439','57','中阳县','Z','1','0','0');
INSERT INTO phpyun_city_class VALUES('440','58','定襄县','D','1','0','0');
INSERT INTO phpyun_city_class VALUES('441','58','五台县','W','1','0','0');
INSERT INTO phpyun_city_class VALUES('442','59','左权县','Z','1','0','0');
INSERT INTO phpyun_city_class VALUES('443','59','和顺县','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('444','60','曲沃县','Q','1','0','0');
INSERT INTO phpyun_city_class VALUES('445','60','翼城县','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('446','61','临猗县','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('447','61','万荣县','W','1','0','0');
INSERT INTO phpyun_city_class VALUES('448','62','和林县','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('449','62','武川县','W','1','0','0');
INSERT INTO phpyun_city_class VALUES('450','63','固阳县','G','1','0','0');
INSERT INTO phpyun_city_class VALUES('451','64','海拉尔区','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('452','64','阿荣旗','A','1','0','0');
INSERT INTO phpyun_city_class VALUES('453','65','林西县','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('454','66','化德县','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('455','66','兴和县','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('456','68','额济纳旗','E','1','0','0');
INSERT INTO phpyun_city_class VALUES('457','68','哲里木盟','Z','1','0','0');
INSERT INTO phpyun_city_class VALUES('458','69','兴安盟盟','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('459','70','乌兰察盟','W','1','0','0');
INSERT INTO phpyun_city_class VALUES('460','71','锡林郭盟','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('461','72','巴彦淖盟','B','1','0','0');
INSERT INTO phpyun_city_class VALUES('462','73','伊克昭盟','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('463','74','康平县','K','1','0','0');
INSERT INTO phpyun_city_class VALUES('464','74','法库县','F','1','0','0');
INSERT INTO phpyun_city_class VALUES('465','75','长海县','C','1','0','0');
INSERT INTO phpyun_city_class VALUES('466','76','台安县','T','1','0','0');
INSERT INTO phpyun_city_class VALUES('467','78','振兴区','Z','1','0','0');
INSERT INTO phpyun_city_class VALUES('468','79','丹东县','D','1','0','0');
INSERT INTO phpyun_city_class VALUES('469','80','黑山县','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('470','81','西市区','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('471','81','鲅鱼圈区 ','B','1','0','0');
INSERT INTO phpyun_city_class VALUES('472','82','彰武县','Z','1','0','0');
INSERT INTO phpyun_city_class VALUES('473','82','太平区','T','1','0','0');
INSERT INTO phpyun_city_class VALUES('474','83','辽阳县','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('475','83','文圣区','W','1','0','0');
INSERT INTO phpyun_city_class VALUES('476','84','大洼县','D','1','0','0');
INSERT INTO phpyun_city_class VALUES('477','84','盘山县 ','P','1','0','0');
INSERT INTO phpyun_city_class VALUES('478','85','铁岭县','T','1','0','0');
INSERT INTO phpyun_city_class VALUES('479','85','西丰县','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('480','86','建平县','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('481','86','朝阳县','Z','1','0','0');
INSERT INTO phpyun_city_class VALUES('482','87','建昌县','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('483','87','龙港区','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('484','88','农安县','N','1','0','0');
INSERT INTO phpyun_city_class VALUES('485','88','宽城区 ','K','1','0','0');
INSERT INTO phpyun_city_class VALUES('486','89','船营区','C','1','0','0');
INSERT INTO phpyun_city_class VALUES('487','89','昌邑区','C','1','0','0');
INSERT INTO phpyun_city_class VALUES('488','90','梨树县','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('489','90','铁西区','T','1','0','0');
INSERT INTO phpyun_city_class VALUES('490','91','东丰县','D','1','0','0');
INSERT INTO phpyun_city_class VALUES('491','91','东辽县','D','1','0','0');
INSERT INTO phpyun_city_class VALUES('492','92','柳河县','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('493','92','辉南县','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('494','93','靖宇县','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('495','93','抚松县','F','1','0','0');
INSERT INTO phpyun_city_class VALUES('496','94','乾安县','Q','1','0','0');
INSERT INTO phpyun_city_class VALUES('497','94','扶余县','F','1','0','0');
INSERT INTO phpyun_city_class VALUES('498','95','通榆县','T','1','0','0');
INSERT INTO phpyun_city_class VALUES('499','95','镇赉县','Z','1','0','0');
INSERT INTO phpyun_city_class VALUES('500','96','汪清县','W','1','0','0');
INSERT INTO phpyun_city_class VALUES('501','96','安图县','A','1','0','0');
INSERT INTO phpyun_city_class VALUES('502','97','方正县','F','1','0','0');
INSERT INTO phpyun_city_class VALUES('503','97','宾县','B','1','0','0');
INSERT INTO phpyun_city_class VALUES('504','98','龙江县','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('505','98','依安县','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('506','99','林口县','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('507','99','东宁县','D','1','0','0');
INSERT INTO phpyun_city_class VALUES('508','100','桦南县','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('509','100','桦川县','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('510','101','林甸县','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('511','101','肇州县','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('512','102','望奎县','W','1','0','0');
INSERT INTO phpyun_city_class VALUES('513','102','兰西县','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('514','103','兴安区','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('515','103','向阳区','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('516','104','鸡东县','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('517','104','麻山区','M','1','0','0');
INSERT INTO phpyun_city_class VALUES('518','105','逊克县','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('519','105','孙吴县','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('520','106','友谊县','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('521','106','集贤县','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('522','107','嘉荫县','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('523','107','伊春区','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('524','108','新兴区','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('525','108','勃利县 ','B','1','0','0');
INSERT INTO phpyun_city_class VALUES('526','109','呼玛县','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('527','109','漠河县','M','1','0','0');
INSERT INTO phpyun_city_class VALUES('528','110','鼓楼区','G','1','0','0');
INSERT INTO phpyun_city_class VALUES('529','110','建邺区','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('530','110','浦口区','P','1','0','0');
INSERT INTO phpyun_city_class VALUES('531','111','润州区 ','R','1','0','0');
INSERT INTO phpyun_city_class VALUES('532','111','京口区','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('533','112','昆山市','K','1','0','0');
INSERT INTO phpyun_city_class VALUES('534','112','吴中区','W','1','0','0');
INSERT INTO phpyun_city_class VALUES('535','113','海安县','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('536','113','港闸区','G','1','0','0');
INSERT INTO phpyun_city_class VALUES('537','114','邗江区','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('538','114','广陵区','G','1','0','0');
INSERT INTO phpyun_city_class VALUES('539','115','大丰市','D','1','0','0');
INSERT INTO phpyun_city_class VALUES('540','115','滨海市','B','1','0','0');
INSERT INTO phpyun_city_class VALUES('541','116','铜山县','T','1','0','0');
INSERT INTO phpyun_city_class VALUES('542','116','沛县','P','1','0','0');
INSERT INTO phpyun_city_class VALUES('543','117','东海县','D','1','0','0');
INSERT INTO phpyun_city_class VALUES('544','117','赣榆县','G','1','0','0');
INSERT INTO phpyun_city_class VALUES('545','118','钟楼区','Z','1','0','0');
INSERT INTO phpyun_city_class VALUES('546','118','天宁区','T','1','0','0');
INSERT INTO phpyun_city_class VALUES('547','119','北塘区','B','1','0','0');
INSERT INTO phpyun_city_class VALUES('548','119',' 宜兴市','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('549','120','沭阳县','S','1','0','1');
INSERT INTO phpyun_city_class VALUES('550','120','泗阳县','S','1','0','2');
INSERT INTO phpyun_city_class VALUES('551','121','高港区','G','1','0','0');
INSERT INTO phpyun_city_class VALUES('552','121','海陵区','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('553','122','涟水县','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('554','122','盱眙县','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('555','123','桐庐县','T','1','0','0');
INSERT INTO phpyun_city_class VALUES('556','123','淳安县','C','1','0','0');
INSERT INTO phpyun_city_class VALUES('557','124','宁海县','N','1','0','0');
INSERT INTO phpyun_city_class VALUES('558','124','象山县','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('559','125','洞头县','D','1','0','0');
INSERT INTO phpyun_city_class VALUES('560','125','永嘉县','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('561','126','嘉善县','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('562','126','海盐县','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('563','127','德清县','D','1','0','0');
INSERT INTO phpyun_city_class VALUES('564','127','长兴县','C','1','0','0');
INSERT INTO phpyun_city_class VALUES('565','128','新昌县','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('566','128','绍兴县','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('567','129','磐安县','P','1','0','0');
INSERT INTO phpyun_city_class VALUES('568','129','武义县','W','1','0','0');
INSERT INTO phpyun_city_class VALUES('569','130','常山县','C','1','0','0');
INSERT INTO phpyun_city_class VALUES('570','130','开化县','K','1','0','0');
INSERT INTO phpyun_city_class VALUES('571','131','普陀区','P','1','0','0');
INSERT INTO phpyun_city_class VALUES('572','131','岱山县','D','1','0','0');
INSERT INTO phpyun_city_class VALUES('573','132','玉环县','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('574','132','三门县','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('575','133','青田县','Q','1','0','0');
INSERT INTO phpyun_city_class VALUES('576','133','莲都区','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('577','134','长丰县','C','1','0','0');
INSERT INTO phpyun_city_class VALUES('578','134','肥东县','F','1','0','0');
INSERT INTO phpyun_city_class VALUES('579','135','芜湖县','W','1','0','0');
INSERT INTO phpyun_city_class VALUES('580','135','南陵县','N','1','0','0');
INSERT INTO phpyun_city_class VALUES('581','137','当涂县','D','1','0','0');
INSERT INTO phpyun_city_class VALUES('582','137','花山区','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('583','138','烈山区','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('584','138','相山区','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('585','139','铜陵县','T','1','0','0');
INSERT INTO phpyun_city_class VALUES('586','139','狮子山区','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('587','140','怀宁县','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('588','140','潜山县','Q','1','0','0');
INSERT INTO phpyun_city_class VALUES('589','141','休宁县','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('590','141','黄山区','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('591','142','定远县','D','1','0','0');
INSERT INTO phpyun_city_class VALUES('592','142','凤阳县','F','1','0','0');
INSERT INTO phpyun_city_class VALUES('593','143','萧县','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('594','143','灵璧县','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('595','144','东至县','D','1','0','0');
INSERT INTO phpyun_city_class VALUES('596','144','石台县','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('597','145','凤台县','F','1','0','0');
INSERT INTO phpyun_city_class VALUES('598','145','大通区','D','1','0','0');
INSERT INTO phpyun_city_class VALUES('599','146','无为县','W','1','0','0');
INSERT INTO phpyun_city_class VALUES('600','146','含山县','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('601','147','埠阳县','B','1','0','0');
INSERT INTO phpyun_city_class VALUES('602','148','寿县','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('603','148','舒城县','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('604','149','郎溪县','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('605','149','广德县','G','1','0','0');
INSERT INTO phpyun_city_class VALUES('606','150','利辛县','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('607','150','蒙城县','M','1','0','0');
INSERT INTO phpyun_city_class VALUES('608','151','连江县','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('609','151','罗源县','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('610','152','思明区','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('611','152','海沧区','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('612','153','仙游县','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('613','153','涵江区','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('614','154','大田县','D','1','0','0');
INSERT INTO phpyun_city_class VALUES('615','154','尤溪县','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('616','155','金门县','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('617','155','德化县','D','1','0','0');
INSERT INTO phpyun_city_class VALUES('618','156','漳浦县','Z','1','0','0');
INSERT INTO phpyun_city_class VALUES('619','156','华安县','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('620','157','浦城县','P','1','0','0');
INSERT INTO phpyun_city_class VALUES('621','157','顺昌县','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('622','158','上杭县','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('623','158','武平县','W','1','0','0');
INSERT INTO phpyun_city_class VALUES('624','159','霞浦县','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('625','159','古田县','G','1','0','0');
INSERT INTO phpyun_city_class VALUES('626','160','安义县','A','1','0','0');
INSERT INTO phpyun_city_class VALUES('627','160','新建县','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('628','161','浮梁县','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('629','161','珠山区','Z','1','0','0');
INSERT INTO phpyun_city_class VALUES('630','162','武宁县','W','1','0','0');
INSERT INTO phpyun_city_class VALUES('631','162','修水县','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('632','163','余江县','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('633','163','月湖区','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('634','164','莲花县','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('635','164','上栗县','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('636','165','分宜县','F','1','0','0');
INSERT INTO phpyun_city_class VALUES('637','165','渝水区','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('638','166','信丰县 ','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('639','166','大余县','D','1','0','0');
INSERT INTO phpyun_city_class VALUES('640','167','吉水县','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('641','167','峡江县','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('642','168','奉新县','F','1','0','0');
INSERT INTO phpyun_city_class VALUES('643','168','万载县','W','1','0','0');
INSERT INTO phpyun_city_class VALUES('644','169','南丰县 ','N','1','0','0');
INSERT INTO phpyun_city_class VALUES('645','169','崇仁县','C','1','0','0');
INSERT INTO phpyun_city_class VALUES('646','170','玉山县','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('647','170','广丰县','G','1','0','0');
INSERT INTO phpyun_city_class VALUES('648','171','济阳县','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('649','171','商河县','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('650','172','黄岛区','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('651','172',' 四方区','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('652','173','高青县','G','1','0','0');
INSERT INTO phpyun_city_class VALUES('653','173','桓台县','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('654','174','台儿庄区','T','1','0','0');
INSERT INTO phpyun_city_class VALUES('655','174','山亭区','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('656','175','利津县','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('657','175','广饶县','G','1','0','0');
INSERT INTO phpyun_city_class VALUES('658','176','长岛县','C','1','0','0');
INSERT INTO phpyun_city_class VALUES('659','176','福山区','F','1','0','0');
INSERT INTO phpyun_city_class VALUES('660','177','昌乐县','C','1','0','0');
INSERT INTO phpyun_city_class VALUES('661','177','临朐县','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('662','178','微山县','W','1','0','0');
INSERT INTO phpyun_city_class VALUES('663','178','鱼台县','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('664','179','东平县','D','1','0','0');
INSERT INTO phpyun_city_class VALUES('665','179','宁阳县','N','1','0','0');
INSERT INTO phpyun_city_class VALUES('666','180','环翠区','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('667','180','文登市','W','1','0','0');
INSERT INTO phpyun_city_class VALUES('668','181','五莲县','W','1','0','0');
INSERT INTO phpyun_city_class VALUES('669','181','东港区','D','1','0','0');
INSERT INTO phpyun_city_class VALUES('670','182','莱城区','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('671','182','钢城区','G','1','0','0');
INSERT INTO phpyun_city_class VALUES('672','183','沂水县','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('673','183','苍山县','C','1','0','0');
INSERT INTO phpyun_city_class VALUES('674','184','庆云县','Q','1','0','0');
INSERT INTO phpyun_city_class VALUES('675','184','齐河县','Q','1','0','0');
INSERT INTO phpyun_city_class VALUES('676','185','阳谷县','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('677','185','东阿县','D','1','0','0');
INSERT INTO phpyun_city_class VALUES('678','186','惠民县','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('679','186','阳信县','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('680','187','成武县','C','1','0','0');
INSERT INTO phpyun_city_class VALUES('681','187','巨野县','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('682','188','通许县','T','1','0','0');
INSERT INTO phpyun_city_class VALUES('683','188','尉氏县','W','1','0','0');
INSERT INTO phpyun_city_class VALUES('684','189','新安县','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('685','189','孟津县','M','1','0','0');
INSERT INTO phpyun_city_class VALUES('686','190','鲁山县','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('687','190','宝丰县','B','1','0','0');
INSERT INTO phpyun_city_class VALUES('688','191','内黄县','N','1','0','0');
INSERT INTO phpyun_city_class VALUES('689','191','汤阴县','T','1','0','0');
INSERT INTO phpyun_city_class VALUES('690','192','浚县','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('691','192','淇县','Q','1','0','0');
INSERT INTO phpyun_city_class VALUES('692','193','新乡县','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('693','193','原阳县','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('694','194','博爱县','P','1','0','0');
INSERT INTO phpyun_city_class VALUES('695','194','武陟县','W','1','0','0');
INSERT INTO phpyun_city_class VALUES('696','195','台前县','T','1','0','0');
INSERT INTO phpyun_city_class VALUES('697','195','范县','F','1','0','0');
INSERT INTO phpyun_city_class VALUES('698','196','襄城县','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('699','196','许昌县','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('700','197','舞阳县','W','1','0','0');
INSERT INTO phpyun_city_class VALUES('701','197','临颍县','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('702','198','渑池县','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('703','198','卢氏县','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('704','199','南召县','N','1','0','0');
INSERT INTO phpyun_city_class VALUES('705','199','方城县','F','1','0','0');
INSERT INTO phpyun_city_class VALUES('706','200','民权县','M','1','0','0');
INSERT INTO phpyun_city_class VALUES('707','200','宁陵县','N','1','0','0');
INSERT INTO phpyun_city_class VALUES('708','201','光山县','G','1','0','0');
INSERT INTO phpyun_city_class VALUES('709','201','新县','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('710','202','商水县','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('711','202','西华县','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('712','203','西平县','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('713','203','平舆县','P','1','0','0');
INSERT INTO phpyun_city_class VALUES('714','204','天坛街道','T','1','0','0');
INSERT INTO phpyun_city_class VALUES('715','17','郑州','Z','1','0','0');
INSERT INTO phpyun_city_class VALUES('716','715','中原区','Z','1','0','0');
INSERT INTO phpyun_city_class VALUES('717','715','二七区','E','1','0','0');
INSERT INTO phpyun_city_class VALUES('718','205','武昌区','W','1','0','0');
INSERT INTO phpyun_city_class VALUES('719','205','江汉区','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('720','206','兴山县','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('721','206','远安县','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('722','207','江陵县','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('723','207','监利县','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('724','208','保康县','B','1','0','0');
INSERT INTO phpyun_city_class VALUES('725','208','南漳县','N','1','0','0');
INSERT INTO phpyun_city_class VALUES('726','209','阳新县','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('727','209','铁山区','T','1','0','0');
INSERT INTO phpyun_city_class VALUES('728','210','沙洋县','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('729','210','京山县','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('730','211','团风县','T','1','0','0');
INSERT INTO phpyun_city_class VALUES('731','211','红安县','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('732','212','竹溪县','Z','1','0','0');
INSERT INTO phpyun_city_class VALUES('733','212','竹山县','Z','1','0','0');
INSERT INTO phpyun_city_class VALUES('734','213','建始县','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('735','213','巴东县','B','1','0','0');
INSERT INTO phpyun_city_class VALUES('736','214','龙湾镇','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('737','214','老新镇','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('738','215','拖市镇','T','1','0','0');
INSERT INTO phpyun_city_class VALUES('739','215','张港镇','Z','1','0','0');
INSERT INTO phpyun_city_class VALUES('740','216','陈场镇','C','1','0','0');
INSERT INTO phpyun_city_class VALUES('741','216','通海口镇','T','1','0','0');
INSERT INTO phpyun_city_class VALUES('742','217','广水市 ','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('743','218','通城县','T','1','0','0');
INSERT INTO phpyun_city_class VALUES('744','218','崇阳县','C','1','0','0');
INSERT INTO phpyun_city_class VALUES('745','219','孝昌县','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('746','219','大悟县','D','1','0','0');
INSERT INTO phpyun_city_class VALUES('747','220','华容区','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('748','220','鄂城区','E','1','0','0');
INSERT INTO phpyun_city_class VALUES('749','221','长沙县','C','1','0','0');
INSERT INTO phpyun_city_class VALUES('750','221','望城县','W','1','0','0');
INSERT INTO phpyun_city_class VALUES('751','222','安乡县','A','1','0','0');
INSERT INTO phpyun_city_class VALUES('752','222','汉寿县','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('753','223','荷塘区','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('754','223','石峰区','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('755','224','湘潭县','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('756','224','岳塘区','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('757','225','衡山县','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('758','225','祁东县','Q','1','0','0');
INSERT INTO phpyun_city_class VALUES('759','226','华容县','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('760','226','湘阴县','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('761','227','邵东县','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('762','227','隆回县','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('763','228','南县','N','1','0','0');
INSERT INTO phpyun_city_class VALUES('764','228','桃江县','T','1','0','0');
INSERT INTO phpyun_city_class VALUES('765','229','新化县','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('766','229','双峰县','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('767','230','中方县','Z','1','0','0');
INSERT INTO phpyun_city_class VALUES('768','230','会同县','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('769','231','桂阳县','G','1','0','0');
INSERT INTO phpyun_city_class VALUES('770','231','宜章县','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('771','232','祁阳县','Q','1','0','0');
INSERT INTO phpyun_city_class VALUES('772','232','东安县','D','1','0','0');
INSERT INTO phpyun_city_class VALUES('773','233','凤凰县','F','1','0','0');
INSERT INTO phpyun_city_class VALUES('774','233','花垣县','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('775','234','慈利县','C','1','0','0');
INSERT INTO phpyun_city_class VALUES('776','234','桑植县','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('777','235','越秀区','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('778','235','海珠区','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('779','236','南山区','N','1','0','0');
INSERT INTO phpyun_city_class VALUES('780','236','宝安区','B','1','0','0');
INSERT INTO phpyun_city_class VALUES('781','237','斗门区','D','1','0','0');
INSERT INTO phpyun_city_class VALUES('782','237','金湾区','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('783','238','潮阳区','C','1','0','0');
INSERT INTO phpyun_city_class VALUES('784','238','南澳县','N','1','0','0');
INSERT INTO phpyun_city_class VALUES('785','239','万江区','W','1','0','0');
INSERT INTO phpyun_city_class VALUES('786','239','南城区','N','1','0','0');
INSERT INTO phpyun_city_class VALUES('787','240','黄圃镇','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('788','240','石岐区','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('789','241','南海区','N','1','0','0');
INSERT INTO phpyun_city_class VALUES('790','241','顺德区','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('791','242','始兴县','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('792','242','仁化县','R','1','0','0');
INSERT INTO phpyun_city_class VALUES('793','243','新会区','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('794','243','江海区','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('795','244','徐闻县','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('796','244','麻章区','M','1','0','0');
INSERT INTO phpyun_city_class VALUES('797','245','封开县','F','1','0','0');
INSERT INTO phpyun_city_class VALUES('798','245','怀集县','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('799','246','惠东县','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('800','246','博罗县','B','1','0','0');
INSERT INTO phpyun_city_class VALUES('801','247','大埔县','D','1','0','0');
INSERT INTO phpyun_city_class VALUES('802','247','丰顺县','F','1','0','0');
INSERT INTO phpyun_city_class VALUES('803','248','海丰县','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('804','248','陆河县','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('805','249','龙川县','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('806','249','连平县','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('807','250','阳西县','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('808','250','阳东县','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('809','251','阳山县','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('810','251','连山县','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('811','252','潮安县','C','1','0','0');
INSERT INTO phpyun_city_class VALUES('812','252','饶平县','R','1','0','0');
INSERT INTO phpyun_city_class VALUES('813','253','揭西县','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('814','253','惠来县','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('815','254','云安县','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('816','254','郁南县','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('817','269','秀英区','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('818','269','龙华区','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('819','270','天涯镇','T','1','0','0');
INSERT INTO phpyun_city_class VALUES('820','270','崖城镇','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('821','22','五指山','W','1','0','0');
INSERT INTO phpyun_city_class VALUES('822','821','番阳镇','P','1','0','0');
INSERT INTO phpyun_city_class VALUES('823','821','毛阳镇','M','1','0','0');
INSERT INTO phpyun_city_class VALUES('824','22','琼海','Q','1','0','0');
INSERT INTO phpyun_city_class VALUES('825','824','会山镇','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('826','824','大路镇','D','1','0','0');
INSERT INTO phpyun_city_class VALUES('827','22','儋州','D','1','0','0');
INSERT INTO phpyun_city_class VALUES('828','827','海头镇','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('829','827','和庆镇','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('830','22','文昌','W','1','0','0');
INSERT INTO phpyun_city_class VALUES('831','830','翁田镇','W','1','0','0');
INSERT INTO phpyun_city_class VALUES('832','830','冯坡镇','F','1','0','0');
INSERT INTO phpyun_city_class VALUES('833','22','万宁','W','1','0','0');
INSERT INTO phpyun_city_class VALUES('834','833','南桥镇','N','1','0','0');
INSERT INTO phpyun_city_class VALUES('835','833','北大镇','B','1','0','0');
INSERT INTO phpyun_city_class VALUES('836','22','东方','D','1','0','0');
INSERT INTO phpyun_city_class VALUES('837','836','天安乡','T','1','0','0');
INSERT INTO phpyun_city_class VALUES('838','836','新龙镇','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('839','22','定安','D','1','0','0');
INSERT INTO phpyun_city_class VALUES('840','839','富文镇','F','1','0','0');
INSERT INTO phpyun_city_class VALUES('841','839','翰林镇','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('842','22','屯昌','T','1','0','0');
INSERT INTO phpyun_city_class VALUES('843','842','西昌镇','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('844','842','坡心镇','P','1','0','0');
INSERT INTO phpyun_city_class VALUES('845','22','澄迈','C','1','0','0');
INSERT INTO phpyun_city_class VALUES('846','845','桥头镇','Q','1','0','0');
INSERT INTO phpyun_city_class VALUES('847','845','福山镇','F','1','0','0');
INSERT INTO phpyun_city_class VALUES('848','22','临高','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('849','848','调楼镇','D','1','0','0');
INSERT INTO phpyun_city_class VALUES('850','848','新盈镇','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('851','22','白沙','B','1','0','0');
INSERT INTO phpyun_city_class VALUES('852','851','金波乡','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('853','851','青松乡','Q','1','0','0');
INSERT INTO phpyun_city_class VALUES('854','22','昌江','C','1','0','0');
INSERT INTO phpyun_city_class VALUES('855','854','七叉镇','Q','1','0','0');
INSERT INTO phpyun_city_class VALUES('856','854','海尾镇','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('857','22','乐东','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('858','857','莺歌海镇','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('859','857','尖峰镇','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('860','22','陵水','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('861','860','群英乡','Q','1','0','0');
INSERT INTO phpyun_city_class VALUES('862','860','提蒙乡','T','1','0','0');
INSERT INTO phpyun_city_class VALUES('863','22','保亭','B','1','0','0');
INSERT INTO phpyun_city_class VALUES('864','863','毛感乡','M','1','0','0');
INSERT INTO phpyun_city_class VALUES('865','863','南林乡','N','1','0','0');
INSERT INTO phpyun_city_class VALUES('866','22','琼中','Q','1','0','0');
INSERT INTO phpyun_city_class VALUES('867','866','什运乡','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('868','866','红毛镇','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('869','255','宾阳县','B','1','0','0');
INSERT INTO phpyun_city_class VALUES('870','255','上林县','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('871','256','柳江县','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('872','256','柳城县','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('873','257','临桂县','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('874','257','灵川县','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('875','258','苍梧县','C','1','0','0');
INSERT INTO phpyun_city_class VALUES('876','258','藤县','T','1','0','0');
INSERT INTO phpyun_city_class VALUES('877','259','铁山港','T','1','0','0');
INSERT INTO phpyun_city_class VALUES('878','259','合浦县','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('879','260','上思县','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('880','260','防城区','F','1','0','0');
INSERT INTO phpyun_city_class VALUES('881','261','灵山县','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('882','261','浦北县','P','1','0','0');
INSERT INTO phpyun_city_class VALUES('883','262','平南县','P','1','0','0');
INSERT INTO phpyun_city_class VALUES('884','262','港南区','G','1','0','0');
INSERT INTO phpyun_city_class VALUES('885','263','陆川县','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('886','263','博白县','B','1','0','0');
INSERT INTO phpyun_city_class VALUES('887','267','田阳县','T','1','0','0');
INSERT INTO phpyun_city_class VALUES('888','267','田东县','T','1','0','0');
INSERT INTO phpyun_city_class VALUES('889','266','昭平县','Z','1','0','0');
INSERT INTO phpyun_city_class VALUES('890','266','钟山县','Z','1','0','0');
INSERT INTO phpyun_city_class VALUES('891','268','东兰县','D','1','0','0');
INSERT INTO phpyun_city_class VALUES('892','268','凤山县','F','1','0','0');
INSERT INTO phpyun_city_class VALUES('893','264','象州县','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('894','264','武宣县','W','1','0','0');
INSERT INTO phpyun_city_class VALUES('895','265','龙州县','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('896','265','大新县','D','1','0','0');
INSERT INTO phpyun_city_class VALUES('898','271','金堂县','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('899','271','大邑县','D','1','0','0');
INSERT INTO phpyun_city_class VALUES('900','272','三台县','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('901','273','中江县','Z','1','0','0');
INSERT INTO phpyun_city_class VALUES('902','274','富顺县','F','1','0','0');
INSERT INTO phpyun_city_class VALUES('903','275','盐边县','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('904','275','米易县','M','1','0','0');
INSERT INTO phpyun_city_class VALUES('905','276','旺苍县','W','1','0','0');
INSERT INTO phpyun_city_class VALUES('906','276','青川县','Q','1','0','0');
INSERT INTO phpyun_city_class VALUES('907','277','威远县','W','1','0','0');
INSERT INTO phpyun_city_class VALUES('908','277','资中县','Z','1','0','0');
INSERT INTO phpyun_city_class VALUES('909','278','井研县','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('910','278','夹江县','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('911','279','营山县','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('912','279','蓬安县','P','1','0','0');
INSERT INTO phpyun_city_class VALUES('913','280','南溪县','N','1','0','0');
INSERT INTO phpyun_city_class VALUES('914','280','长宁县','C','1','0','0');
INSERT INTO phpyun_city_class VALUES('915','281','岳池县','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('916','281','武胜县','W','1','0','0');
INSERT INTO phpyun_city_class VALUES('917','282','开江县','K','1','0','0');
INSERT INTO phpyun_city_class VALUES('918','283','名山县','M','1','0','0');
INSERT INTO phpyun_city_class VALUES('919','283','汉源县','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('920','284','彭山县','P','1','0','0');
INSERT INTO phpyun_city_class VALUES('921','284','洪雅县','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('922','285','甘孜县','G','1','0','0');
INSERT INTO phpyun_city_class VALUES('923','286','盐源县','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('924','287','古蔺县','G','1','0','0');
INSERT INTO phpyun_city_class VALUES('925','288','修文县','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('926','288','息烽县','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('927','289','水城县','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('928','289','盘　县','P','1','0','0');
INSERT INTO phpyun_city_class VALUES('929','290','凤冈县','F','1','0','0');
INSERT INTO phpyun_city_class VALUES('930','290','正安县','Z','1','0','0');
INSERT INTO phpyun_city_class VALUES('931','291','普定县','P','1','0','0');
INSERT INTO phpyun_city_class VALUES('932','291','平坝县','P','1','0','0');
INSERT INTO phpyun_city_class VALUES('933','292','德江县','D','1','0','0');
INSERT INTO phpyun_city_class VALUES('934','292','江口县','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('935','293','望谟县','W','1','0','0');
INSERT INTO phpyun_city_class VALUES('936','293','晴隆县','Q','1','0','0');
INSERT INTO phpyun_city_class VALUES('937','295','施秉县','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('938','295','麻江县','M','1','0','0');
INSERT INTO phpyun_city_class VALUES('939','296','贵定县','G','1','0','0');
INSERT INTO phpyun_city_class VALUES('940','296','惠水县','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('941','294','金沙县','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('942','294','织金县','Z','1','0','0');
INSERT INTO phpyun_city_class VALUES('943','297','富民县','F','1','0','0');
INSERT INTO phpyun_city_class VALUES('944','297','宜良县','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('945','298','祥云县','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('946','298','宾川县','B','1','0','0');
INSERT INTO phpyun_city_class VALUES('947','299','马龙县','M','1','0','0');
INSERT INTO phpyun_city_class VALUES('948','299','陆良县','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('949','300','江川县','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('950','300','通海县','T','1','0','0');
INSERT INTO phpyun_city_class VALUES('951','301','巧家县','Q','1','0','0');
INSERT INTO phpyun_city_class VALUES('952','301','盐津县','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('953','302','南华县','N','1','0','0');
INSERT INTO phpyun_city_class VALUES('954','302','姚安县','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('955','303','绿春县','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('956','303','建水县','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('957','304','马关县','M','1','0','0');
INSERT INTO phpyun_city_class VALUES('958','304','丘北县','Q','1','0','0');
INSERT INTO phpyun_city_class VALUES('959','305','墨江县','M','1','0','0');
INSERT INTO phpyun_city_class VALUES('960','305','景东县','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('961','306','勐海县','M','1','0','0');
INSERT INTO phpyun_city_class VALUES('962','306','勐腊县','M','1','0','0');
INSERT INTO phpyun_city_class VALUES('963','307','施甸县','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('964','307','腾冲县','T','1','0','0');
INSERT INTO phpyun_city_class VALUES('965','308','梁河县','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('966','308','盈江县','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('967','308','陇川县','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('968','309','永胜县 ','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('969','309','华坪县','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('970','309','玉龙县 ','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('971','309','宁蒗县','N','1','0','0');
INSERT INTO phpyun_city_class VALUES('972','310','泸水县','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('973','310','福贡县','F','1','0','0');
INSERT INTO phpyun_city_class VALUES('974','310','贡山县 ','G','1','0','0');
INSERT INTO phpyun_city_class VALUES('975','310','兰坪县','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('976','311','香格里拉县 ','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('977','311','德钦县','D','1','0','0');
INSERT INTO phpyun_city_class VALUES('978','311','维西县','W','1','0','0');
INSERT INTO phpyun_city_class VALUES('979','312','临翔区','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('980','312','凤庆县','F','1','0','0');
INSERT INTO phpyun_city_class VALUES('981','312','云 县','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('982','312','永德县','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('983','312','镇康县','Z','1','0','0');
INSERT INTO phpyun_city_class VALUES('984','312','双江县 ','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('985','312','耿马县','G','1','0','0');
INSERT INTO phpyun_city_class VALUES('986','312','沧源县','C','1','0','0');
INSERT INTO phpyun_city_class VALUES('987','313','林周县','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('988','313','达孜县','D','1','0','0');
INSERT INTO phpyun_city_class VALUES('989','313','尼木县','N','1','0','0');
INSERT INTO phpyun_city_class VALUES('990','313','当雄县','D','1','0','0');
INSERT INTO phpyun_city_class VALUES('991','313','曲水县','Q','1','0','0');
INSERT INTO phpyun_city_class VALUES('992','313','墨竹工卡县','M','1','0','0');
INSERT INTO phpyun_city_class VALUES('993','313','堆龙德庆县','D','1','0','0');
INSERT INTO phpyun_city_class VALUES('994','314','定结县','D','1','0','0');
INSERT INTO phpyun_city_class VALUES('995','314','萨迦县','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('996','314','江孜县','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('997','314','拉孜县','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('998','314','定日县','D','1','0','0');
INSERT INTO phpyun_city_class VALUES('999','314','康马县','K','1','0','0');
INSERT INTO phpyun_city_class VALUES('1000','314','聂拉木县','N','1','0','0');
INSERT INTO phpyun_city_class VALUES('1001','314','吉隆县','A','1','0','0');
INSERT INTO phpyun_city_class VALUES('1002','314','亚东县','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('1003','314','谢通门县','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('1004','315','乃东县','N','1','0','0');
INSERT INTO phpyun_city_class VALUES('1005','315','琼结县','Q','1','0','0');
INSERT INTO phpyun_city_class VALUES('1006','315','措美县','C','1','0','0');
INSERT INTO phpyun_city_class VALUES('1007','315','加查县','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('1008','315','贡嘎县','G','1','0','0');
INSERT INTO phpyun_city_class VALUES('1009','315','洛扎县','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('1010','315','曲松县','Q','1','0','0');
INSERT INTO phpyun_city_class VALUES('1011','315','桑日县','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('1012','315','扎囊县','Z','1','0','0');
INSERT INTO phpyun_city_class VALUES('1013','315','错那县','C','1','0','0');
INSERT INTO phpyun_city_class VALUES('1014','315','隆子县','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('1015','315','浪卡子县','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('1016','316','林芝县','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('1017','316','墨脱县','M','1','0','0');
INSERT INTO phpyun_city_class VALUES('1018','316','朗 县','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('1019','316','米林县','M','1','0','0');
INSERT INTO phpyun_city_class VALUES('1020','316','察隅县','C','1','0','0');
INSERT INTO phpyun_city_class VALUES('1021','316','波密县','B','1','0','0');
INSERT INTO phpyun_city_class VALUES('1022','316','工布江达县','G','1','0','0');
INSERT INTO phpyun_city_class VALUES('1023','317','昌都县','C','1','0','0');
INSERT INTO phpyun_city_class VALUES('1024','317','芒康县','M','1','0','0');
INSERT INTO phpyun_city_class VALUES('1025','317','贡觉县','G','1','0','0');
INSERT INTO phpyun_city_class VALUES('1026','317','八宿县','B','1','0','0');
INSERT INTO phpyun_city_class VALUES('1027','317','左贡县','Z','1','0','0');
INSERT INTO phpyun_city_class VALUES('1028','317','边坝县','B','1','0','0');
INSERT INTO phpyun_city_class VALUES('1029','317','洛隆县','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('1030','317','江达县','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('1031','317','类乌齐县','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('1032','317','丁青县','D','1','0','0');
INSERT INTO phpyun_city_class VALUES('1033','317','察雅县','C','1','0','0');
INSERT INTO phpyun_city_class VALUES('1034','318','噶尔县','G','1','0','0');
INSERT INTO phpyun_city_class VALUES('1035','318','措勤县','C','1','0','0');
INSERT INTO phpyun_city_class VALUES('1036','318','普兰县','P','1','0','0');
INSERT INTO phpyun_city_class VALUES('1037','318','革吉县','G','1','0','0');
INSERT INTO phpyun_city_class VALUES('1038','318','日土县','R','1','0','0');
INSERT INTO phpyun_city_class VALUES('1040','318','札达县','Z','1','0','0');
INSERT INTO phpyun_city_class VALUES('1041','318','改则县','G','1','0','0');
INSERT INTO phpyun_city_class VALUES('1042','319','那曲县','N','1','0','0');
INSERT INTO phpyun_city_class VALUES('1043','319','嘉黎县','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('1044','319','申扎县','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('1045','319','巴青县','B','1','0','0');
INSERT INTO phpyun_city_class VALUES('1046','319','聂荣县','N','1','0','0');
INSERT INTO phpyun_city_class VALUES('1047','319','尼玛县','N','1','0','0');
INSERT INTO phpyun_city_class VALUES('1048','319','比如县','B','1','0','0');
INSERT INTO phpyun_city_class VALUES('1049','319','索 县','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('1050','319','班戈县','B','1','0','0');
INSERT INTO phpyun_city_class VALUES('1051','319','安多县','A','1','0','0');
INSERT INTO phpyun_city_class VALUES('1052','320','未央区','W','1','0','0');
INSERT INTO phpyun_city_class VALUES('1053','320','莲湖区','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('1054','320','新城区','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('1055','320','雁塔区','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('1056','320','灞桥区','B','1','0','0');
INSERT INTO phpyun_city_class VALUES('1057','320','阎良区','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('1058','320','临潼区','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('1059','320','长安区','C','1','0','0');
INSERT INTO phpyun_city_class VALUES('1060','320','高陵县','G','1','0','0');
INSERT INTO phpyun_city_class VALUES('1061','320','蓝田县','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('1062','320','户 县','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('1063','320','周至县','Z','1','0','0');
INSERT INTO phpyun_city_class VALUES('1064','321','金台区','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('1065','321','渭滨区','W','1','0','0');
INSERT INTO phpyun_city_class VALUES('1066','321','陈仓区','C','1','0','0');
INSERT INTO phpyun_city_class VALUES('1067','321','岐山县','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('1068','321','凤翔县','F','1','0','0');
INSERT INTO phpyun_city_class VALUES('1069','321','陇 县','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('1070','321','太白县','T','1','0','0');
INSERT INTO phpyun_city_class VALUES('1071','321','麟游县','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('1072','321','扶风县','F','1','0','0');
INSERT INTO phpyun_city_class VALUES('1073','321','千阳县','Q','1','0','0');
INSERT INTO phpyun_city_class VALUES('1074','321','眉 县','M','1','0','0');
INSERT INTO phpyun_city_class VALUES('1075','321','凤 县','F','1','0','0');
INSERT INTO phpyun_city_class VALUES('1076','322','秦都区','Q','1','0','0');
INSERT INTO phpyun_city_class VALUES('1077','322','渭城区','W','1','0','0');
INSERT INTO phpyun_city_class VALUES('1078','322','杨陵区','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('1079','322','兴平市','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('1080','322','礼泉县','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('1081','322','泾阳县','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('1082','322','永寿县','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('1083','322','三原县','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('1084','322','彬 县','B','1','0','0');
INSERT INTO phpyun_city_class VALUES('1085','322','旬邑县','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('1086','322','长武县','C','1','0','0');
INSERT INTO phpyun_city_class VALUES('1087','322','乾 县','Q','1','0','0');
INSERT INTO phpyun_city_class VALUES('1088','322','武功县','W','1','0','0');
INSERT INTO phpyun_city_class VALUES('1089','322','淳化县','C','1','0','0');
INSERT INTO phpyun_city_class VALUES('1090','323','耀州区','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('1091','323','王益区','W','1','0','0');
INSERT INTO phpyun_city_class VALUES('1092','323','印台区','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('1093','323','宜君县','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('1095','324','临渭区','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('1096','324','韩城市','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('1097','324','华阴市','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('1098','324','蒲城县','P','1','0','0');
INSERT INTO phpyun_city_class VALUES('1099','324','潼关县','T','1','0','0');
INSERT INTO phpyun_city_class VALUES('1100','324','白水县','B','1','0','0');
INSERT INTO phpyun_city_class VALUES('1101','324','澄城县','D','1','0','0');
INSERT INTO phpyun_city_class VALUES('1102','324','华 县','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('1103','324','合阳县','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('1104','324','富平县','F','1','0','0');
INSERT INTO phpyun_city_class VALUES('1105','324','大荔县','D','1','0','0');
INSERT INTO phpyun_city_class VALUES('1106','325','宝塔区','B','1','0','0');
INSERT INTO phpyun_city_class VALUES('1107','325','安塞县','A','1','0','0');
INSERT INTO phpyun_city_class VALUES('1108','325','洛川县','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('1109','325','子长县','Z','1','0','0');
INSERT INTO phpyun_city_class VALUES('1110','325','黄陵县','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('1111','325','延川县','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('1112','325','富 县','F','1','0','0');
INSERT INTO phpyun_city_class VALUES('1113','325','延长县','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('1114','325','甘泉县','G','1','0','0');
INSERT INTO phpyun_city_class VALUES('1115','325','宜川县','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('1116','325','志丹县','Z','1','0','0');
INSERT INTO phpyun_city_class VALUES('1117','325','黄龙县','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('1118','325','吴起县','W','1','0','0');
INSERT INTO phpyun_city_class VALUES('1119','326','榆阳区','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('1120','326','清涧县','Q','1','0','0');
INSERT INTO phpyun_city_class VALUES('1121','326','绥德县','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('1122','326','神木县','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('1123','326','佳 县','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('1124','326','府谷县','F','1','0','0');
INSERT INTO phpyun_city_class VALUES('1125','326','子洲县','Z','1','0','0');
INSERT INTO phpyun_city_class VALUES('1126','326','靖边县','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('1127','326','横山县','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('1128','326','米脂县','M','1','0','0');
INSERT INTO phpyun_city_class VALUES('1129','326','吴堡县','W','1','0','0');
INSERT INTO phpyun_city_class VALUES('1130','326','定边县','D','1','0','0');
INSERT INTO phpyun_city_class VALUES('1131','327','汉台区','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('1132','327','留坝县','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('1133','327','镇巴县','Z','1','0','0');
INSERT INTO phpyun_city_class VALUES('1134','327','城固县','C','1','0','0');
INSERT INTO phpyun_city_class VALUES('1135','327','南郑县','N','1','0','0');
INSERT INTO phpyun_city_class VALUES('1136','327','洋 县','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('1137','327','宁强县','N','1','0','0');
INSERT INTO phpyun_city_class VALUES('1138','327','佛坪县','F','1','0','0');
INSERT INTO phpyun_city_class VALUES('1139','327','勉 县','M','1','0','0');
INSERT INTO phpyun_city_class VALUES('1140','327','西乡县','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('1141','327','略阳县','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('1142','328','汉滨区','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('1143','328','紫阳县','Z','1','0','0');
INSERT INTO phpyun_city_class VALUES('1144','328','岚皋县','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('1145','328','旬阳县','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('1146','328','镇坪县','Z','1','0','0');
INSERT INTO phpyun_city_class VALUES('1147','328','平利县','P','1','0','0');
INSERT INTO phpyun_city_class VALUES('1148','328','石泉县','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('1149','328','宁陕县','N','1','0','0');
INSERT INTO phpyun_city_class VALUES('1150','328','白河县','B','1','0','0');
INSERT INTO phpyun_city_class VALUES('1151','328','汉阴县','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('1152','329','商州区','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('1153','329','镇安县','Z','1','0','0');
INSERT INTO phpyun_city_class VALUES('1154','329','山阳县','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('1155','329','洛南县','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('1156','329','商南县','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('1157','329','丹凤县','D','1','0','0');
INSERT INTO phpyun_city_class VALUES('1158','329','柞水县','Z','1','0','0');
INSERT INTO phpyun_city_class VALUES('1159','330','城关区','C','1','0','0');
INSERT INTO phpyun_city_class VALUES('1160','330','七里河区','Q','1','0','0');
INSERT INTO phpyun_city_class VALUES('1161','330','西固区','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('1162','330','安宁区','A','1','0','0');
INSERT INTO phpyun_city_class VALUES('1163','330','红古区','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('1164','330','永登县','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('1165','330','皋兰县','G','1','0','0');
INSERT INTO phpyun_city_class VALUES('1166','330','榆中县','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('1167','332','金川区','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('1168','332','永昌县','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('1169','333','白银区','B','1','0','0');
INSERT INTO phpyun_city_class VALUES('1170','333','平川区','P','1','0','0');
INSERT INTO phpyun_city_class VALUES('1171','333','靖远县','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('1172','333','会宁县','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('1173','333','景泰县','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('1174','334','秦州区','Q','1','0','0');
INSERT INTO phpyun_city_class VALUES('1175','334','麦积区','M','1','0','0');
INSERT INTO phpyun_city_class VALUES('1176','334','清水县','Q','1','0','0');
INSERT INTO phpyun_city_class VALUES('1177','334','秦安县','Q','1','0','0');
INSERT INTO phpyun_city_class VALUES('1178','334','甘谷县','G','1','0','0');
INSERT INTO phpyun_city_class VALUES('1179','334','武山县','W','1','0','0');
INSERT INTO phpyun_city_class VALUES('1180','335','肃州区','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('1181','335','玉门市','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('1182','335','敦煌市','Z','1','0','0');
INSERT INTO phpyun_city_class VALUES('1183','335','金塔县','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('1184','335','瓜州县','G','1','0','0');
INSERT INTO phpyun_city_class VALUES('1185','335','肃北蒙古族自治县','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('1186','335','阿克塞哈萨克族自治县','A','1','0','0');
INSERT INTO phpyun_city_class VALUES('1187','336','甘州区','G','1','0','0');
INSERT INTO phpyun_city_class VALUES('1188','336','肃南裕固族自治县','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('1189','336','民乐县','M','1','0','0');
INSERT INTO phpyun_city_class VALUES('1190','336','临泽县','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('1191','336','高台县','G','1','0','0');
INSERT INTO phpyun_city_class VALUES('1192','336','山丹县','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('1193','337','凉州区','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('1194','337','民勤县','M','1','0','0');
INSERT INTO phpyun_city_class VALUES('1195','337','古浪县','G','1','0','0');
INSERT INTO phpyun_city_class VALUES('1196','337','天祝藏族自治县','A','1','0','0');
INSERT INTO phpyun_city_class VALUES('1197','338','安定区','A','1','0','0');
INSERT INTO phpyun_city_class VALUES('1198','338','通渭县','T','1','0','0');
INSERT INTO phpyun_city_class VALUES('1199','338','陇西县','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('1200','338','渭源县','W','1','0','0');
INSERT INTO phpyun_city_class VALUES('1201','338','临洮县','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('1202','338','漳 县','Z','1','0','0');
INSERT INTO phpyun_city_class VALUES('1203','338','岷 县','M','1','0','0');
INSERT INTO phpyun_city_class VALUES('1204','339','武都区','W','1','0','0');
INSERT INTO phpyun_city_class VALUES('1205','339','成 县','C','1','0','0');
INSERT INTO phpyun_city_class VALUES('1206','339','文 县','W','1','0','0');
INSERT INTO phpyun_city_class VALUES('1207','339','宕昌县','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('1208','339','康 县','K','1','0','0');
INSERT INTO phpyun_city_class VALUES('1209','339','西和县','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('1210','339','礼 县','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('1211','339','徽 县','W','1','0','0');
INSERT INTO phpyun_city_class VALUES('1212','339','两当县','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('1213','340','崆峒区','K','1','0','0');
INSERT INTO phpyun_city_class VALUES('1214','340','泾川县','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('1215','340','灵台县','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('1216','340','崇信县','C','1','0','0');
INSERT INTO phpyun_city_class VALUES('1217','340','华亭县','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('1218','340','庄浪县','Z','1','0','0');
INSERT INTO phpyun_city_class VALUES('1219','340','静宁县','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('1220','341','西峰区','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('1221','341','庆城县','Q','1','0','0');
INSERT INTO phpyun_city_class VALUES('1222','341','环 县','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('1223','341','华池县','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('1224','341','合水县','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('1225','341','正宁县','Z','1','0','0');
INSERT INTO phpyun_city_class VALUES('1226','341','宁 县','N','1','0','0');
INSERT INTO phpyun_city_class VALUES('1227','341','镇原县','Z','1','0','0');
INSERT INTO phpyun_city_class VALUES('1228','342','临夏县','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('1229','342','康乐县','G','1','0','0');
INSERT INTO phpyun_city_class VALUES('1230','342','永靖县','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('1231','342','广河县','G','1','0','0');
INSERT INTO phpyun_city_class VALUES('1232','342','和政县','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('1233','342','东乡族自治县','D','1','0','0');
INSERT INTO phpyun_city_class VALUES('1234','342','积石山保安族东乡族撒拉族自治县','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('1235','343','合作市','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('1236','343','临潭县','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('1237','343','卓尼县','Z','1','0','0');
INSERT INTO phpyun_city_class VALUES('1238','343','舟曲县','Z','1','0','0');
INSERT INTO phpyun_city_class VALUES('1239','343','迭部县','D','1','0','0');
INSERT INTO phpyun_city_class VALUES('1240','343','玛曲县','M','1','0','0');
INSERT INTO phpyun_city_class VALUES('1241','343','碌曲县','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('1242','343','夏河县','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('1243','344','兴庆区','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('1244','344','金凤区','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('1245','344','西夏区','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('1246','344','灵武市','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('1247','344','永宁县','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('1248','344','贺兰县','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('1249','345','大武口区','D','1','0','0');
INSERT INTO phpyun_city_class VALUES('1250','345','惠农区','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('1251','345','平罗县','P','1','0','0');
INSERT INTO phpyun_city_class VALUES('1252','346','利通区','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('1253','346','红寺堡区','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('1254','346','青铜峡市','Q','1','0','0');
INSERT INTO phpyun_city_class VALUES('1255','346','同心县','T','1','0','0');
INSERT INTO phpyun_city_class VALUES('1256','346','盐池县','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('1257','347','原州区','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('1258','347','西吉县','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('1259','347','隆德县','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('1260','347','泾源县','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('1261','347','彭阳县','P','1','0','0');
INSERT INTO phpyun_city_class VALUES('1262','29','中卫','Z','1','0','0');
INSERT INTO phpyun_city_class VALUES('1263','1262','沙坡头区','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('1264','1262','中宁县','Z','1','0','0');
INSERT INTO phpyun_city_class VALUES('1265','1262','海原县','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('1266','348','城东区','C','1','0','0');
INSERT INTO phpyun_city_class VALUES('1267','348','城中区','C','1','0','0');
INSERT INTO phpyun_city_class VALUES('1268','348','城西区','C','1','0','0');
INSERT INTO phpyun_city_class VALUES('1269','348','城北区','C','1','0','0');
INSERT INTO phpyun_city_class VALUES('1270','348','湟中县','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('1271','348','湟源县','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('1272','348','大通回族土族自治县','D','1','0','0');
INSERT INTO phpyun_city_class VALUES('1273','349','平安县','P','1','0','0');
INSERT INTO phpyun_city_class VALUES('1274','349','乐都县','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('1275','349','民和回族土族自治县','M','1','0','0');
INSERT INTO phpyun_city_class VALUES('1276','349','互助土族自治县','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('1277','349','化隆回族自治县','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('1278','349','循化撒拉族自治县','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('1279','352','同仁县','T','1','0','0');
INSERT INTO phpyun_city_class VALUES('1280','352','尖扎县','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('1281','352','泽库县','Z','1','0','0');
INSERT INTO phpyun_city_class VALUES('1282','352','河南蒙古族自治县','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('1283','351','海晏县','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('1284','351','祁连县','Q','1','0','0');
INSERT INTO phpyun_city_class VALUES('1285','351','刚察县','G','1','0','0');
INSERT INTO phpyun_city_class VALUES('1286','351','门源回族自治县','M','1','0','0');
INSERT INTO phpyun_city_class VALUES('1287','350','共和县','G','1','0','0');
INSERT INTO phpyun_city_class VALUES('1288','350','同德县','T','1','0','0');
INSERT INTO phpyun_city_class VALUES('1289','350','贵德县','G','1','0','0');
INSERT INTO phpyun_city_class VALUES('1290','350','兴海县','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('1291','350','贵南县','G','1','0','0');
INSERT INTO phpyun_city_class VALUES('1292','353','玉树县','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('1293','353','杂多县','Z','1','0','0');
INSERT INTO phpyun_city_class VALUES('1294','353','称多县','C','1','0','0');
INSERT INTO phpyun_city_class VALUES('1295','353','治多县','Z','1','0','0');
INSERT INTO phpyun_city_class VALUES('1296','353','囊谦县','N','1','0','0');
INSERT INTO phpyun_city_class VALUES('1297','353','曲麻莱县','Q','1','0','0');
INSERT INTO phpyun_city_class VALUES('1298','354','玛沁县','M','1','0','0');
INSERT INTO phpyun_city_class VALUES('1299','354','班玛县','B','1','0','0');
INSERT INTO phpyun_city_class VALUES('1300','354','甘德县','G','1','0','0');
INSERT INTO phpyun_city_class VALUES('1301','354','达日县','D','1','0','0');
INSERT INTO phpyun_city_class VALUES('1302','354','久治县','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('1303','354','玛多县','M','1','0','0');
INSERT INTO phpyun_city_class VALUES('1304','355','德令哈市','D','1','0','0');
INSERT INTO phpyun_city_class VALUES('1305','355','格尔木市','G','1','0','0');
INSERT INTO phpyun_city_class VALUES('1306','355','乌兰县','W','1','0','0');
INSERT INTO phpyun_city_class VALUES('1307','355','都兰县','D','1','0','0');
INSERT INTO phpyun_city_class VALUES('1308','355','天峻县','T','1','0','0');
INSERT INTO phpyun_city_class VALUES('1309','355','冷湖行委','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('1310','355','大柴旦行委','D','1','0','0');
INSERT INTO phpyun_city_class VALUES('1311','355','茫崖行委','M','1','0','0');
INSERT INTO phpyun_city_class VALUES('1312','356','乌鲁木齐县','W','1','0','0');
INSERT INTO phpyun_city_class VALUES('1313','357','沙湾县','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('1314','358','和田县','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('1315','359','伊宁县','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('1316','359','霍城县','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('1317','359','巩留县','G','1','0','0');
INSERT INTO phpyun_city_class VALUES('1318','359','新源县','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('1319','359','昭苏县','Z','1','0','0');
INSERT INTO phpyun_city_class VALUES('1320','359','特克斯县','T','1','0','0');
INSERT INTO phpyun_city_class VALUES('1321','359','尼勒克县','N','1','0','0');
INSERT INTO phpyun_city_class VALUES('1322','360','轮台县','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('1323','360','尉犁县','W','1','0','0');
INSERT INTO phpyun_city_class VALUES('1324','360','若羌县','R','1','0','0');
INSERT INTO phpyun_city_class VALUES('1325','360','焉耆县','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('1326','360','和静县','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('1327','360','和硕县','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('1328','360','博湖县','B','1','0','0');
INSERT INTO phpyun_city_class VALUES('1329','360','且末县','Q','1','0','0');
INSERT INTO phpyun_city_class VALUES('1330','361','玛纳斯县','M','1','0','0');
INSERT INTO phpyun_city_class VALUES('1331','361','呼图壁县','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('1332','361','昌吉市','C','1','0','0');
INSERT INTO phpyun_city_class VALUES('1333','361','阜康市','Z','1','0','0');
INSERT INTO phpyun_city_class VALUES('1334','361','吉木萨尔县','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('1335','361','奇台县','Q','1','0','0');
INSERT INTO phpyun_city_class VALUES('1336','361','木垒县','M','1','0','0');
INSERT INTO phpyun_city_class VALUES('1337','362','阿克陶县','A','1','0','0');
INSERT INTO phpyun_city_class VALUES('1338','362','阿合奇县','A','1','0','0');
INSERT INTO phpyun_city_class VALUES('1339','362','乌恰县','W','1','0','0');
INSERT INTO phpyun_city_class VALUES('1340','363','精河县','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('1341','363','温泉县','W','1','0','0');
INSERT INTO phpyun_city_class VALUES('1342','364','鄯善县','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('1343','364','托克逊县','T','1','0','0');
INSERT INTO phpyun_city_class VALUES('1344','365','伊吾县','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('1345','365','巴里坤哈萨克自治县','B','1','0','0');
INSERT INTO phpyun_city_class VALUES('1346','366','疏附县','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('1347','366','疏勒县','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('1348','366','英吉沙县','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('1349','366','泽普县','Z','1','0','0');
INSERT INTO phpyun_city_class VALUES('1350','366','莎车县','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('1351','366','叶城县','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('1352','366','麦盖提县','M','1','0','0');
INSERT INTO phpyun_city_class VALUES('1353','366','岳普湖县','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('1354','366','伽师县','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('1355','366','巴楚县','B','1','0','0');
INSERT INTO phpyun_city_class VALUES('1356','366','塔什库尔干塔吉克自治县','T','1','0','0');
INSERT INTO phpyun_city_class VALUES('1357','367','和田县','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('1358','367','墨玉县','M','1','0','0');
INSERT INTO phpyun_city_class VALUES('1359','367','皮山县','P','1','0','0');
INSERT INTO phpyun_city_class VALUES('1360','367','洛浦县','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('1361','367','策勒县','C','1','0','0');
INSERT INTO phpyun_city_class VALUES('1362','367','于田县','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('1363','367','民丰县','M','1','0','0');
INSERT INTO phpyun_city_class VALUES('1364','368','库车县','K','1','0','0');
INSERT INTO phpyun_city_class VALUES('1365','368','沙雅县','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('1366','368','新和县','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('1367','368','拜城县','B','1','0','0');
INSERT INTO phpyun_city_class VALUES('1368','368','乌什县','W','1','0','0');
INSERT INTO phpyun_city_class VALUES('1369','368','阿瓦提县','A','1','0','0');
INSERT INTO phpyun_city_class VALUES('1370','368','柯坪县','K','1','0','0');
INSERT INTO phpyun_city_class VALUES('1371','369','中西区','Z','1','0','0');
INSERT INTO phpyun_city_class VALUES('1372','369','东区','D','1','0','0');
INSERT INTO phpyun_city_class VALUES('1373','369','南区','N','1','0','0');
INSERT INTO phpyun_city_class VALUES('1374','369','湾仔区','W','1','0','0');
INSERT INTO phpyun_city_class VALUES('1375','369','九龙区','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('1376','369','观塘区','G','1','0','0');
INSERT INTO phpyun_city_class VALUES('1377','369','深水埗区','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('1378','369','黄大仙区','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('1379','369','油尖旺区 离岛区','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('1380','369','葵青区','K','1','0','0');
INSERT INTO phpyun_city_class VALUES('1381','369','北区','B','1','0','0');
INSERT INTO phpyun_city_class VALUES('1382','369','西贡区','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('1383','369','沙田区','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('1384','369','大埔区','D','1','0','0');
INSERT INTO phpyun_city_class VALUES('1385','369','荃湾区','Q','1','0','0');
INSERT INTO phpyun_city_class VALUES('1386','369','屯门区','T','1','0','0');
INSERT INTO phpyun_city_class VALUES('1387','369','元朗区','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('1388','370','澳门半岛','A','1','0','0');
INSERT INTO phpyun_city_class VALUES('1389','370','路环岛','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('1390','370','路氹城','L','1','0','0');

INSERT INTO phpyun_comclass VALUES('112','39','未婚','','2');
INSERT INTO phpyun_comclass VALUES('75','0','企业反馈类型','job_message','0');
INSERT INTO phpyun_comclass VALUES('10','0','工作经验','job_exp','0');
INSERT INTO phpyun_comclass VALUES('12','10','应届毕业生','','2');
INSERT INTO phpyun_comclass VALUES('13','10','1年以上','','3');
INSERT INTO phpyun_comclass VALUES('14','10','2年以上','','4');
INSERT INTO phpyun_comclass VALUES('15','10','3年以上','','5');
INSERT INTO phpyun_comclass VALUES('16','10','5年以上','','6');
INSERT INTO phpyun_comclass VALUES('17','10','8年以上','','7');
INSERT INTO phpyun_comclass VALUES('18','10','10年以上','','8');
INSERT INTO phpyun_comclass VALUES('19','0','企业性质','job_pr','0');
INSERT INTO phpyun_comclass VALUES('20','19','外资企业','','0');
INSERT INTO phpyun_comclass VALUES('21','19','合资企业','','1');
INSERT INTO phpyun_comclass VALUES('22','19','私营企业','','2');
INSERT INTO phpyun_comclass VALUES('23','19','民营企业','','3');
INSERT INTO phpyun_comclass VALUES('24','19','股份制企业','','4');
INSERT INTO phpyun_comclass VALUES('25','19','集体企业','','4');
INSERT INTO phpyun_comclass VALUES('26','0','企业规模','job_mun','0');
INSERT INTO phpyun_comclass VALUES('27','26','10人以下','','0');
INSERT INTO phpyun_comclass VALUES('28','26','10-50人','','1');
INSERT INTO phpyun_comclass VALUES('29','26','50-200人','','2');
INSERT INTO phpyun_comclass VALUES('30','26','200-500人','','3');
INSERT INTO phpyun_comclass VALUES('31','26','500-1000人','','4');
INSERT INTO phpyun_comclass VALUES('32','26','1000人以上','','5');
INSERT INTO phpyun_comclass VALUES('33','0','招聘人数','job_number','0');
INSERT INTO phpyun_comclass VALUES('34','0','薪水待遇','job_salary','0');
INSERT INTO phpyun_comclass VALUES('35','0','工作性质','job_type','0');
INSERT INTO phpyun_comclass VALUES('36','0','到岗时间','job_report','0');
INSERT INTO phpyun_comclass VALUES('37','0','性别','job_sex','0');
INSERT INTO phpyun_comclass VALUES('38','0','教育程度','job_edu','0');
INSERT INTO phpyun_comclass VALUES('39','0','婚姻状况','job_marriage','0');
INSERT INTO phpyun_comclass VALUES('40','33','若干','','0');
INSERT INTO phpyun_comclass VALUES('41','33','1-2人','','1');
INSERT INTO phpyun_comclass VALUES('42','33','3-4人','','2');
INSERT INTO phpyun_comclass VALUES('43','33','5-6人','','3');
INSERT INTO phpyun_comclass VALUES('44','33','7-8人','','4');
INSERT INTO phpyun_comclass VALUES('45','33','9-10人','','5');
INSERT INTO phpyun_comclass VALUES('46','34','面议','','1');
INSERT INTO phpyun_comclass VALUES('47','34','1000以下','','2');
INSERT INTO phpyun_comclass VALUES('48','34','1000 - 1999','','3');
INSERT INTO phpyun_comclass VALUES('49','34','3000 - 4499','','4');
INSERT INTO phpyun_comclass VALUES('50','34','4500 - 5999','','5');
INSERT INTO phpyun_comclass VALUES('51','34','6000 - 7999','','6');
INSERT INTO phpyun_comclass VALUES('52','34','8000 - 9999','','7');
INSERT INTO phpyun_comclass VALUES('53','34','10000及以上','','9');
INSERT INTO phpyun_comclass VALUES('54','35','不限','','0');
INSERT INTO phpyun_comclass VALUES('55','35','全职','','1');
INSERT INTO phpyun_comclass VALUES('56','35','兼职','','2');
INSERT INTO phpyun_comclass VALUES('57','36','不限','','0');
INSERT INTO phpyun_comclass VALUES('58','36','1周以内','','1');
INSERT INTO phpyun_comclass VALUES('59','36','2周以内','','2');
INSERT INTO phpyun_comclass VALUES('60','36','3周以内','','3');
INSERT INTO phpyun_comclass VALUES('61','36','1个月之内','','4');
INSERT INTO phpyun_comclass VALUES('62','37','不限','','0');
INSERT INTO phpyun_comclass VALUES('63','37','男','','1');
INSERT INTO phpyun_comclass VALUES('64','37','女','','2');
INSERT INTO phpyun_comclass VALUES('65','38','不限','','0');
INSERT INTO phpyun_comclass VALUES('66','38','高中','','1');
INSERT INTO phpyun_comclass VALUES('67','38','中专','','2');
INSERT INTO phpyun_comclass VALUES('68','38','大专','','3');
INSERT INTO phpyun_comclass VALUES('69','38','本科','','4');
INSERT INTO phpyun_comclass VALUES('70','38','硕士','','5');
INSERT INTO phpyun_comclass VALUES('71','38','博士','','6');
INSERT INTO phpyun_comclass VALUES('72','39','不限','','0');
INSERT INTO phpyun_comclass VALUES('73','39','已婚','','1');
INSERT INTO phpyun_comclass VALUES('76','75','建议','','1');
INSERT INTO phpyun_comclass VALUES('77','75','咨询','','1');
INSERT INTO phpyun_comclass VALUES('78','75','购买','','2');
INSERT INTO phpyun_comclass VALUES('79','19','上市公司','','0');
INSERT INTO phpyun_comclass VALUES('80','19','国家机关','','0');
INSERT INTO phpyun_comclass VALUES('81','19','事业单位','','0');
INSERT INTO phpyun_comclass VALUES('82','19','其他','','0');
INSERT INTO phpyun_comclass VALUES('83','34','2000 - 2999','','3');
INSERT INTO phpyun_comclass VALUES('84','0','年龄要求','job_age','');
INSERT INTO phpyun_comclass VALUES('85','84','18-25岁','','2');
INSERT INTO phpyun_comclass VALUES('86','84','35岁以下','','3');
INSERT INTO phpyun_comclass VALUES('87','84','35岁以上','','4');
INSERT INTO phpyun_comclass VALUES('88','84','不限','','1');
INSERT INTO phpyun_comclass VALUES('89','0','福利待遇','job_welfare','');
INSERT INTO phpyun_comclass VALUES('90','89','三险一金','','0');
INSERT INTO phpyun_comclass VALUES('91','89','五险一金','','0');
INSERT INTO phpyun_comclass VALUES('92','89','包吃住','','0');
INSERT INTO phpyun_comclass VALUES('93','89','综合补贴','','0');
INSERT INTO phpyun_comclass VALUES('94','89','年终奖金','','0');
INSERT INTO phpyun_comclass VALUES('95','89','奖励计划','','0');
INSERT INTO phpyun_comclass VALUES('96','89','销售奖金','','0');
INSERT INTO phpyun_comclass VALUES('97','89','休假制度','','0');
INSERT INTO phpyun_comclass VALUES('98','89','法定节假日','','0');
INSERT INTO phpyun_comclass VALUES('99','0','语言要求','job_lang','');
INSERT INTO phpyun_comclass VALUES('100','99','普通话一级','','0');
INSERT INTO phpyun_comclass VALUES('101','99','普通话二级','','0');
INSERT INTO phpyun_comclass VALUES('102','99','普通话三级','','0');
INSERT INTO phpyun_comclass VALUES('103','99','英语','','0');
INSERT INTO phpyun_comclass VALUES('104','99','韩语','','0');
INSERT INTO phpyun_comclass VALUES('105','99','德语','','0');
INSERT INTO phpyun_comclass VALUES('106','99','法语','','0');
INSERT INTO phpyun_comclass VALUES('107','99','西班牙语','','0');
INSERT INTO phpyun_comclass VALUES('108','99','粤语','','0');
INSERT INTO phpyun_comclass VALUES('109','99','闽南语','','0');
INSERT INTO phpyun_comclass VALUES('110','99','上海话','','0');
INSERT INTO phpyun_comclass VALUES('127','10','不限','','1');
INSERT INTO phpyun_comclass VALUES('128','34','不限','','1');

INSERT INTO phpyun_company VALUES('1','才纵企业管理有限公司','35','23','20','239','27','','0','简单介绍<img src=\"http://localhost/toptophr.com/data/kindeditor/plugins/emoticons/images/0.gif\" border=\"0\" alt=\"\" />','广东省东莞市南城区星鹏商务大厦','','王生','','','','15920258490','820591677@qq.com','','113.746967','23.019569','./upload/company/20150206/make_S_14258473834.JPG','0','0','1423191133','','1423191399','0','./upload/company/20150206/14266054134.JPG','0','19','1','','1','0','','0','0','0','','0','0','0','0');


INSERT INTO phpyun_company_job VALUES('1','1','设计','35','35','48','128','20','239','785','','128','54','0','127','57','62','65','72','描述','0','','1423191399','1425744000','6','1423191399','1','','1','0','88','','','才纵企业管理有限公司','23','27','20','3','2','','0','0','','./upload/company/20150206/make_S_14258473834.JPG','0','0','1','1','1','1424056548','0');

INSERT INTO phpyun_company_job_link VALUES('1','1','1','','','1','1','820591677@qq.com');


INSERT INTO phpyun_company_news VALUES('1','1','测试新闻','1423191184','测试新闻','0','');

INSERT INTO phpyun_company_order VALUES('1','1','142319101842772','','0.50','1423191018','1','姓名：\r\n联系电话：\r\n留言：','0','2','0','10','0');

INSERT INTO phpyun_company_pay VALUES('1','142304119146617','20.00','1423041191','2','2','首次填写基本资料','1','25');
INSERT INTO phpyun_company_pay VALUES('2','142319113492713','20.00','1423191134','2','1','首次填写基本资料','1','25');
INSERT INTO phpyun_company_pay VALUES('3','142319126655590','5.00','1423191266','2','1','上传企业横幅','1','0');
INSERT INTO phpyun_company_pay VALUES('4','142320140045400','-20.00','1423201400','2','1','购买企业模板','1','15');
INSERT INTO phpyun_company_pay VALUES('5','142320143249089','-5.00','1423201432','2','1','购买企业模板','1','15');
INSERT INTO phpyun_company_pay VALUES('6','142320184280743','-5.00','1423201842','2','1','购买职位自动刷新','1','9');
INSERT INTO phpyun_company_pay VALUES('7','142320184275440','-5.00','1423201842','2','1','购买职位自动刷新','1','9');

INSERT INTO phpyun_company_product VALUES('1','1','测试产品','/upload/product/20150206/14289724858.JPG','测试产品描述','1423191225','0','');

INSERT INTO phpyun_company_rating VALUES('3','免费会员','0','0','','','','','5','3','10','1','2','0','1','终生免费会员','upload/compic/20121226/13601426595.JPG','000000','1','1','0','0','0');
INSERT INTO phpyun_company_rating VALUES('4','铜牌会员','10','95','','','','','50','50','50','10','10','1','1','铜牌会员','upload/compic/20121226/13611599075.JPG','FF2B1C','1','1','0','30','2');
INSERT INTO phpyun_company_rating VALUES('5','银牌会员','20','250','','','','','180','600','80','6','10','2','1','银牌会员','upload/compic/20121226/13662730644.JPG','FFBC21','1','1','0','30','0');
INSERT INTO phpyun_company_rating VALUES('6','金牌会员','100','900','','','','','800','888','800','100','100','3','1','金牌会员','','FF1C14','1','1','0','30','0');
INSERT INTO phpyun_company_rating VALUES('8','月会员','50','270','','','','','0','0','0','0','0','7','1','','upload/compic/20121226/13611599075.JPG','000000','2','1','0','30','0');
INSERT INTO phpyun_company_rating VALUES('9','半年会员','200','560','150','400','1418486400','1420819200','0','0','0','0','0','8','1','半年会员','','FFFFFF','2','1','50','180','4');
INSERT INTO phpyun_company_rating VALUES('10','年会员','500','1000','','','','','0','0','0','0','0','9','1','年会员','','FFABEB','2','1','100','360','0');

INSERT INTO phpyun_company_show VALUES('1','1','./upload/show/20150206/14313723167.JPG','','1423191236','1','0');
INSERT INTO phpyun_company_show VALUES('2','2','./upload/show/20150206/14245974971.JPG','','1423191237','1','0');
INSERT INTO phpyun_company_show VALUES('3','3','./upload/show/20150206/14278787476.JPG','','1423191237','1','0');
INSERT INTO phpyun_company_show VALUES('4','4','./upload/show/20150206/14313162377.JPG','','1423191237','1','0');
INSERT INTO phpyun_company_show VALUES('5','5','./upload/show/20150206/14247537483.JPG','','1423191238','1','0');
INSERT INTO phpyun_company_show VALUES('6','6','./upload/show/20150206/14281912483.JPG','','1423191238','1','0');

INSERT INTO phpyun_company_statis VALUES('1','0.00','95','0','0','3','免费会员','0','0.00','0.00','1','8','blue','green,blue','2','1','2','3','0','0','0','0','0','','','0','0','1423288242','0');

INSERT INTO phpyun_company_tpl VALUES('4','默认模板','default','upload/company/20131114/make_S_13616410212.PNG','0','0','1','0');
INSERT INTO phpyun_company_tpl VALUES('6','蓝色模版','blue','upload/company/20131114/make_S_13868045228.PNG','1','5','1','0');
INSERT INTO phpyun_company_tpl VALUES('7','绿色模板','green','upload/company/20131114/make_S_13874121836.PNG','1','20','1','0');


INSERT INTO phpyun_desc_class VALUES('1','关于我们','1');
INSERT INTO phpyun_desc_class VALUES('2','支付信息','2');
INSERT INTO phpyun_desc_class VALUES('3','网站特色','3');
INSERT INTO phpyun_desc_class VALUES('4','咨询反馈','4');
INSERT INTO phpyun_desc_class VALUES('5','特色服务','5');

INSERT INTO phpyun_description VALUES('5','1','注册协议','about/service.html','注册协议','phpyun人才系统,hr135,招聘,求职,猎头,注册协议','注册协议','1','','1','','<p align=\"left\">\r\n	PHPYUN人才招聘系统（phpyun.com）用户协议<br />\r\n<br />\r\n一、版权：<br />\r\n<br />\r\n此网址的内容和图表受到中国版权法及国际条约的保护。phpyun.com 拥有一切权利，未经其同意，不允许复制。以任何目的重新使用&nbsp;phpyun.com 网上的内容和图表也受到严格的禁止。在内容和图表不作任何修改，在保留内容未做修改，以及得到 phprencai.com 的许可的情况下，phpyun.com 的网上材料可作为网外信息方面和非商业方面的用途。申请使用 phprencai.com 内容的许可是按逐个批准的原则进行的。phpyun.com 欢迎提出申请。请把请求直接提交给400-087- -6680。不要复制或采用 phprencai.com 所创造的用以制成网页的HTML。HTML也属于 phpyun.com的版权。phpyun.com 网址上的“观看”和“感觉”也属于 phpyun.com 的商标，其中包括颜 色的组合、按钮的形状、设计和所有其他的图表。\r\n</p>\r\n<p align=\"left\">\r\n	<br />\r\n</p>\r\n<p align=\"left\">\r\n	<br />\r\n</p>\r\n<p align=\"left\">\r\n	<br />\r\n</p>\r\n<p align=\"left\">\r\n	<br />\r\n</p>','2','1','1417224045','0','1');
INSERT INTO phpyun_description VALUES('9','1','法律声明','about/phpyun.html','phpyun系统法律声明','人才招聘，PHPYUN，人才系统','PHP云人才系统是一款开源的php+mysql人才网站管理系统，集成在线支付，求职、招聘等云端管理功能于一体','1','','1','','本授权协议适用且仅适用于PHPYUN.3.0 版本，鑫潮信息技术有限公司拥有对本授权协议的最终解释权。\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	I. 协议许可的权利\r\n</p>\r\n<p>\r\n	1. 您可以在完全遵守本最终用户授权协议的基础上，将本软件应用于非商业用途(包括个人用户：不具备法人资格的自然人，以个人名义从事网络威客交易；非盈利性用途：从事非盈利活动的商业机构及非盈利性组织，将PHPYUN 人才系统仅用于产品演示、展示及发布，而并不是用来买卖及盈利的运营活动的)\r\n</p>\r\n<p>\r\n	2. 您可以在协议规定的约束和限制范围内修改 PHPYUN人才网系统 源代码(如果被提供的话)或界面风格以适应您的网站要求。\r\n</p>\r\n<p>\r\n	3. 您拥有使用本软件构建的人才系统中全部招聘信息，求职，用户信息及相关信息的所有权，并独立承担与其内容的相关法律义务。\r\n</p>\r\n<p>\r\n	4. 获得商业授权之后，您可以将本软件应用于商业用途，同时依据所购买的授权类型中确定的技术支持期限、技术支持方式和技术支持内容，自授权时刻起，在技术支持期限内拥有通过指定的方式获得指定范围内的技术支持服务。商业授权用户享有反映和提出意见的权力，相关意见将被作为首要考虑，但没有一定被采纳的承诺或保证。\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	II. 协议规定的约束和限制\r\n</p>\r\n<p>\r\n	1. 未获商业授权之前，不得将本软件用于商业用途(包括但不限于企业法人经营的企业网站、经营性网站、以盈利为目或实现盈利的网站)。\r\n</p>\r\n<p>\r\n	2. 不得对本软件或与之关联的商业授权进行出租、出售、抵押或发放子许可证。\r\n</p>\r\n<p>\r\n	3. 无论如何，即无论用途如何、是否经过修改或美化、修改程度如何，只要使用PHPYUN 人才系统 的整体或任何部分，未经书面许可，网站标题的Powered by PHPYun.都必须保留，而不能清除或修改。\r\n</p>\r\n<p>\r\n	4. 如果您未能遵守本协议的条款，您的授权将被终止，所被许可的权利将被收回，并承担相应法律责任。\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	III. 有限担保和免责声明\r\n</p>\r\n<p>\r\n	1. 本软件及所附带的文件是作为不提供任何明确的或隐含的赔偿或担保的形式提供的。\r\n</p>\r\n<p>\r\n	2. 用户出于自愿而使用本软件，您必须了解使用本软件的风险，在尚未购买产品技术服务之前，我们不承诺提供任何形式的技术支持、使用担保，也不承担任何因使用本软件而产生问题的相关责任。\r\n</p>\r\n<p>\r\n	3. 宿迁鑫潮信息技术有限公司不对使用本软件构建的人才系统中的文章或任务信息承担责任，但在不侵犯用户隐私信息的前提下，保留以任何方式获取用户及商品信息的权利。\r\n</p>\r\n<p>\r\n	有关 phpyun人才网系统! 最终用户授权协议、商业授权与技术服务的详细内容，均由PHPYUN 官方网站独家提供。 宿迁鑫潮信息技术有限公司拥有在不事先通知的情况下，修改授权协议和服务价目表的权力，修改后的协议或价目表对自改变之日起的新授权用户生效。电子文本形式的授权协议如同双方书面签署的协议一样，具有完全的和等同的法律效力。您一旦开始安装 PHPYUN2.5，即被视为完全理解并接受本协议的各项条款，在享有上述条款授予的权力的同时，受到相关的约束和限制。协议许可范围以外的行为，将直接违反本授权协议并构成侵权，我们有权随时终止授权，责令停止损害，并保留追究相关责任的权力。\r\n</p>','4','1','1415763035','0','1');
INSERT INTO phpyun_description VALUES('21','1','关于我们','about/index.html','关于我们','关于我们','关于我们888','1','','1','','关于我们888','1','1','1415763002','0','1');
INSERT INTO phpyun_description VALUES('22','4','客服中心','about/kf.html','客服中心','客服中心','客服中心','1','','1','','客服中心888','4','1','1415763116','1','1');
INSERT INTO phpyun_description VALUES('23','2','收费标准','about/charge.html','收费标准','收费标准','收费标准8','1','','1','','收费标准','6','1','1415763084','1','1');
INSERT INTO phpyun_description VALUES('24','4','广告投放','about/gg.html','广告投放','广告投放','广告投放','1','','1','','广告投放','6','1','1415763074','1','1');
INSERT INTO phpyun_description VALUES('28','2','银行帐户','about/yh.html','银行帐户','银行帐户','银行帐户','1','','1','','银行帐户','2','1','1416318522','0','1');
INSERT INTO phpyun_description VALUES('29','3','积分兑换','index.php?m=redeem','','','','1','','1','','','23','1','1418223464','0','0');
INSERT INTO phpyun_description VALUES('31','3','订阅服务','index.php?m=subscribe','','','','1','','1','','','46','1','1418216835','0','0');
INSERT INTO phpyun_description VALUES('32','1','服务流程','about/service.html','服务流程','服务流程','服务流程','1','','1','','服务流程','18','1','1417685687','0','1');
INSERT INTO phpyun_description VALUES('33','4','新手指引','about/newuser.html','新手指引','新手指引','新手指引','1','','1','','新手指引','38','1','1417685773','0','1');
INSERT INTO phpyun_description VALUES('34','5','职场指南','about/new.html','职场指南','','职场指南','1','','1','','职场指南','38','1','1417685815','0','1');
INSERT INTO phpyun_description VALUES('35','5','地图搜索','about/map.html','地图搜索','地图搜索','地图搜索','1','','1','','地图搜索','36','1','1417685863','0','1');
INSERT INTO phpyun_description VALUES('36','2','经营资源','about/indexzy.html','经营资源','经营资源','经营资源','1','','1','','经营资源','28','1','1417685914','0','1');
INSERT INTO phpyun_description VALUES('37','2','品牌推广','about/pinpai.html','品牌推广','品牌推广','品牌推广','1','','1','','品牌推广','5','1','1417685956','0','1');
INSERT INTO phpyun_description VALUES('38','4','常见问题','about/ask.html','常见问题','常见问题','常见问题','1','','1','','常见问题','14','1','1417686018','0','1');


INSERT INTO phpyun_down_resume VALUES('1','2','1','1','1423201574');



INSERT INTO phpyun_finder VALUES('1','2','1','','hy=35','1423191851');



INSERT INTO phpyun_friend_info VALUES('1','wangsircompany','3','','','','','2','0');
INSERT INTO phpyun_friend_info VALUES('2','wangsirperson','3','','','','','1','0');



INSERT INTO phpyun_friend_state VALUES('1','1','发布了新职位 <a href=\"http://localhost/toptophr.com/index.php?m=com&c=comapply&id=1\" target=\"_blank\">设计</a>。','1423191399','1','');
INSERT INTO phpyun_friend_state VALUES('2','2','发布了 <a href=\"http://localhost/toptophr.com/index.php?m=resume&id=1\" target=\"_blank\">新简历</a>。','1423191973','1','');
INSERT INTO phpyun_friend_state VALUES('3','2','关注了<a href=\"http://localhost/toptophr.com/company/index.php?id=1\">才纵企业管理有限公司</a>','1423192149','2','');
INSERT INTO phpyun_friend_state VALUES('4','2','取消了对<a href=\"http://localhost/toptophr.com/company/index.php?id=1\">才纵企业管理有限公司</a>关注','1423192151','2','');
INSERT INTO phpyun_friend_state VALUES('5','2','关注了<a href=\"http://localhost/toptophr.com/company/index.php?id=1\">才纵企业管理有限公司</a>','1423192152','2','');
INSERT INTO phpyun_friend_state VALUES('6','1','够买了企业模板 <a href=\"http://localhost/toptophr.com/company/index.php?id=1\">绿色模板</a>','1423201400','1','');
INSERT INTO phpyun_friend_state VALUES('7','1','够买了企业模板 <a href=\"http://localhost/toptophr.com/company/index.php?id=1\">蓝色模版</a>','1423201432','1','');
INSERT INTO phpyun_friend_state VALUES('8','1','新下载了简历 <a href=\"http://localhost/toptophr.com/index.php?m=resume&id=1\" target=\"_blank\">王工</a> 。','1423201575','1','');
INSERT INTO phpyun_friend_state VALUES('9','1','我刚邀请了人才 <a href=\"http://localhost/toptophr.com/index.php?m=resume\" target=\"_blank\">王工</a> 面试。','1423201612','1','');
INSERT INTO phpyun_friend_state VALUES('10','1','我刚邀请了人才 <a href=\"http://localhost/toptophr.com/index.php?m=resume\" target=\"_blank\"></a> 面试。','1425007150','1','');
INSERT INTO phpyun_friend_state VALUES('11','1','新下载了简历 <a href=\"http://localhost/toptophr.com/index.php?m=resume\" target=\"_blank\"></a> 。','1425180496','1','');



INSERT INTO phpyun_industry VALUES('35','计算机/互联网','6');
INSERT INTO phpyun_industry VALUES('36','销售/客服/技术支持','0');
INSERT INTO phpyun_industry VALUES('37','会计/金融/银行/保险','0');
INSERT INTO phpyun_industry VALUES('38','生产/营运/采购/物流','0');
INSERT INTO phpyun_industry VALUES('39','生物/制药/医疗/护理','0');
INSERT INTO phpyun_industry VALUES('40','广告/市场/媒体/艺术','0');
INSERT INTO phpyun_industry VALUES('41','建筑/房地产','0');
INSERT INTO phpyun_industry VALUES('42','人事/行政/高级管理','0');
INSERT INTO phpyun_industry VALUES('43','咨询/法律/教育/科研','0');
INSERT INTO phpyun_industry VALUES('44','服务业','0');
INSERT INTO phpyun_industry VALUES('45','公务员/翻译/其他','1');
INSERT INTO phpyun_industry VALUES('836','化工/能源','1');
INSERT INTO phpyun_industry VALUES('835','贸易/百货','2');
INSERT INTO phpyun_industry VALUES('837','机械/设备/技工','2');
INSERT INTO phpyun_industry VALUES('839','通信/电子','0');

INSERT INTO phpyun_job_class VALUES('35','0','计算机/互联网','16','');
INSERT INTO phpyun_job_class VALUES('36','0','销售/客服/技术支持','4','');
INSERT INTO phpyun_job_class VALUES('37','0','会计/金融/银行/保险','14','');
INSERT INTO phpyun_job_class VALUES('38','0','生产/营运/采购/物流','4','');
INSERT INTO phpyun_job_class VALUES('39','0','生物/制药/医疗/护理','5','');
INSERT INTO phpyun_job_class VALUES('40','0','广告/市场/媒体/艺术','6','');
INSERT INTO phpyun_job_class VALUES('41','0','建筑/房地产','7','');
INSERT INTO phpyun_job_class VALUES('42','0','人事/行政/高级管理','8','');
INSERT INTO phpyun_job_class VALUES('43','0','咨询/法律/教育/科研','14','');
INSERT INTO phpyun_job_class VALUES('44','0','服务业','15','');
INSERT INTO phpyun_job_class VALUES('45','0','公务员/翻译/其他','1','');
INSERT INTO phpyun_job_class VALUES('46','35','计算机硬件','1','');
INSERT INTO phpyun_job_class VALUES('47','35','计算机软件','2','');
INSERT INTO phpyun_job_class VALUES('48','35','互联网/网游','3','');
INSERT INTO phpyun_job_class VALUES('49','35','IT-管理','4','');
INSERT INTO phpyun_job_class VALUES('50','35','IT-品管、技术支持及其它','5','');
INSERT INTO phpyun_job_class VALUES('51','839','通信技术开发及应用','6','');
INSERT INTO phpyun_job_class VALUES('52','839','电子/电器/半导体/仪器仪表','7','');
INSERT INTO phpyun_job_class VALUES('53','36','销售管理','4','');
INSERT INTO phpyun_job_class VALUES('54','36','销售人员','3','');
INSERT INTO phpyun_job_class VALUES('55','36','销售行政及商务','2','');
INSERT INTO phpyun_job_class VALUES('56','44','客服及技术支持 ','7','');
INSERT INTO phpyun_job_class VALUES('57','37','财务/审计/税务','1','');
INSERT INTO phpyun_job_class VALUES('58','37','金融/证券/期货/投资','2','');
INSERT INTO phpyun_job_class VALUES('59','37','银行','3','');
INSERT INTO phpyun_job_class VALUES('60','37','保险 ','4','');
INSERT INTO phpyun_job_class VALUES('61','38','生产/营运','9','');
INSERT INTO phpyun_job_class VALUES('62','38','质量/安全管理','8','');
INSERT INTO phpyun_job_class VALUES('63','38','工程/机械/能源','7','');
INSERT INTO phpyun_job_class VALUES('64','38','汽车','6','');
INSERT INTO phpyun_job_class VALUES('65','38','技工','5','');
INSERT INTO phpyun_job_class VALUES('66','38','服装/纺织/皮革','4','');
INSERT INTO phpyun_job_class VALUES('67','38','采购','3','');
INSERT INTO phpyun_job_class VALUES('68','38','贸易','2','');
INSERT INTO phpyun_job_class VALUES('69','38','物流/仓储 ','1','');
INSERT INTO phpyun_job_class VALUES('70','39','生物/制药/医疗器械','3','');
INSERT INTO phpyun_job_class VALUES('71','836','化工/环保','2','');
INSERT INTO phpyun_job_class VALUES('72','39','医院/医疗/护理 ','1','');
INSERT INTO phpyun_job_class VALUES('73','40','广告','6','');
INSERT INTO phpyun_job_class VALUES('74','40','公关/媒介','5','');
INSERT INTO phpyun_job_class VALUES('75','40','市场/营销','4','');
INSERT INTO phpyun_job_class VALUES('76','40','影视/媒体','3','');
INSERT INTO phpyun_job_class VALUES('77','40','写作/出版/印刷','2','');
INSERT INTO phpyun_job_class VALUES('78','40','艺术/设计','1','');
INSERT INTO phpyun_job_class VALUES('79','41','建筑装潢/市政建设','1','');
INSERT INTO phpyun_job_class VALUES('80','41','房地产','2','');
INSERT INTO phpyun_job_class VALUES('81','41','物业管理 ','3','');
INSERT INTO phpyun_job_class VALUES('82','42','人力资源','3','');
INSERT INTO phpyun_job_class VALUES('83','42','高级管理','2','');
INSERT INTO phpyun_job_class VALUES('84','42','行政/后勤','1','');
INSERT INTO phpyun_job_class VALUES('85','43','咨询/顾问','1','');
INSERT INTO phpyun_job_class VALUES('86','43','律师/法务/合规','2','');
INSERT INTO phpyun_job_class VALUES('87','43','教师','3','');
INSERT INTO phpyun_job_class VALUES('88','43','培训','4','');
INSERT INTO phpyun_job_class VALUES('89','43','科研人员','5','');
INSERT INTO phpyun_job_class VALUES('90','44','餐饮/娱乐','6','');
INSERT INTO phpyun_job_class VALUES('91','44','酒店/旅游','5','');
INSERT INTO phpyun_job_class VALUES('92','44','美容/健身/体育','4','');
INSERT INTO phpyun_job_class VALUES('93','44','百货/连锁/零售服务','3','');
INSERT INTO phpyun_job_class VALUES('94','44','交通运输服务','2','');
INSERT INTO phpyun_job_class VALUES('95','44','保安/家政/其他服务','1','');
INSERT INTO phpyun_job_class VALUES('96','45','公务员','8','');
INSERT INTO phpyun_job_class VALUES('97','45','翻译','7','');
INSERT INTO phpyun_job_class VALUES('98','45','在校学生','6','');
INSERT INTO phpyun_job_class VALUES('99','45','储备干部/培训生/实习生','5','');
INSERT INTO phpyun_job_class VALUES('100','45','兼职','4','');
INSERT INTO phpyun_job_class VALUES('101','45','其他','3','');
INSERT INTO phpyun_job_class VALUES('102','45','环保','2','');
INSERT INTO phpyun_job_class VALUES('103','45','农/林/牧/渔 ','1','');
INSERT INTO phpyun_job_class VALUES('104','46','高级硬件工程师','3','');
INSERT INTO phpyun_job_class VALUES('105','46','硬件工程师','2','');
INSERT INTO phpyun_job_class VALUES('106','46','其他','1','');
INSERT INTO phpyun_job_class VALUES('121','48','互联网软件开发工程师','14','');
INSERT INTO phpyun_job_class VALUES('122','48','语音/视频开发工程师','15','');
INSERT INTO phpyun_job_class VALUES('108','47','高级软件工程师','12','');
INSERT INTO phpyun_job_class VALUES('109','47','软件工程师','11','');
INSERT INTO phpyun_job_class VALUES('14','47','软件UI设计师/工程师','10','');
INSERT INTO phpyun_job_class VALUES('111','47','仿真应用工程师','9','');
INSERT INTO phpyun_job_class VALUES('112','47','ERP实施顾问','8','');
INSERT INTO phpyun_job_class VALUES('113','47','ERP技术开发','7','');
INSERT INTO phpyun_job_class VALUES('114','47','需求工程师','1','');
INSERT INTO phpyun_job_class VALUES('115','47','系统集成工程师','2','');
INSERT INTO phpyun_job_class VALUES('116','47','系统分析员','3','');
INSERT INTO phpyun_job_class VALUES('117','47','系统工程师','4','');
INSERT INTO phpyun_job_class VALUES('118','47','系统架构设计师','13','');
INSERT INTO phpyun_job_class VALUES('119','47','数据库工程师/管理员','5','');
INSERT INTO phpyun_job_class VALUES('120','47','计算机辅','6','');
INSERT INTO phpyun_job_class VALUES('123','48','多媒体/游戏开发工程师','16','');
INSERT INTO phpyun_job_class VALUES('124','48','网站营运经理/主管','17','');
INSERT INTO phpyun_job_class VALUES('125','48','网站营运专员','18','');
INSERT INTO phpyun_job_class VALUES('126','48','网络工程师','19','');
INSERT INTO phpyun_job_class VALUES('127','48','UI设计师/顾问','20','');
INSERT INTO phpyun_job_class VALUES('128','48','网站架构设计师','21','');
INSERT INTO phpyun_job_class VALUES('129','48','网站维护工程师','22','');
INSERT INTO phpyun_job_class VALUES('130','48','系统管理员/网络管理员','23','');
INSERT INTO phpyun_job_class VALUES('131','48','网站策划','24','');
INSERT INTO phpyun_job_class VALUES('132','48','网站编辑','13','');
INSERT INTO phpyun_job_class VALUES('133','48','网页设计/制作/美工','12','');
INSERT INTO phpyun_job_class VALUES('134','48','脚本开发工程师','4','');
INSERT INTO phpyun_job_class VALUES('135','48','游戏策划师','3','');
INSERT INTO phpyun_job_class VALUES('136','48','游戏界面设计师','2','');
INSERT INTO phpyun_job_class VALUES('137','48','Flash设计/开发','1','');
INSERT INTO phpyun_job_class VALUES('138','48','特效设计师','5','');
INSERT INTO phpyun_job_class VALUES('139','48','视觉设计师','6','');
INSERT INTO phpyun_job_class VALUES('140','48','音效设计师','7','');
INSERT INTO phpyun_job_class VALUES('141','48','SEO搜索引擎优化','8','');
INSERT INTO phpyun_job_class VALUES('142','48','网络信息安全工程师','9','');
INSERT INTO phpyun_job_class VALUES('143','48','智能大厦/综合布线','10','');
INSERT INTO phpyun_job_class VALUES('144','48','其他','11','');
INSERT INTO phpyun_job_class VALUES('145','49','首席技术执行官CTO/首席信息官CIO','1','');
INSERT INTO phpyun_job_class VALUES('146','49','技术总监/经理','2','');
INSERT INTO phpyun_job_class VALUES('147','49','信息技术经理/主管','3','');
INSERT INTO phpyun_job_class VALUES('148','49','信息技术专员','4','');
INSERT INTO phpyun_job_class VALUES('149','49','项目总监','5','');
INSERT INTO phpyun_job_class VALUES('150','49','项目经理','6','');
INSERT INTO phpyun_job_class VALUES('151','49','项目主管','7','');
INSERT INTO phpyun_job_class VALUES('152','49','项目执行/协调人员','8','');
INSERT INTO phpyun_job_class VALUES('153','49','其他','9','');
INSERT INTO phpyun_job_class VALUES('154','50','技术支持/维护经理','10','');
INSERT INTO phpyun_job_class VALUES('155','50','技术支持/维护工程师','11','');
INSERT INTO phpyun_job_class VALUES('156','50','Helpdesk 技术支持','12','');
INSERT INTO phpyun_job_class VALUES('157','50','计量工程师','13','');
INSERT INTO phpyun_job_class VALUES('158','50','标准化工程师','14','');
INSERT INTO phpyun_job_class VALUES('159','50','品质经理','15','');
INSERT INTO phpyun_job_class VALUES('160','50','系统测试','16','');
INSERT INTO phpyun_job_class VALUES('161','50','软件测试','17','');
INSERT INTO phpyun_job_class VALUES('162','50','硬件测试','18','');
INSERT INTO phpyun_job_class VALUES('163','50','测试员','19','');
INSERT INTO phpyun_job_class VALUES('164','50','文档工程师','20','');
INSERT INTO phpyun_job_class VALUES('165','50','技术文员/助理','21','');
INSERT INTO phpyun_job_class VALUES('166','50','其他','22','');
INSERT INTO phpyun_job_class VALUES('167','51','通信技术工程师','1','');
INSERT INTO phpyun_job_class VALUES('168','51','有线传输工程师','2','');
INSERT INTO phpyun_job_class VALUES('169','51','无线通信工程师','3','');
INSERT INTO phpyun_job_class VALUES('170','51','电信交换工程师','4','');
INSERT INTO phpyun_job_class VALUES('171','51','数据通信工程师','5','');
INSERT INTO phpyun_job_class VALUES('172','51','移动通信工程师','6','');
INSERT INTO phpyun_job_class VALUES('173','51','电信网络工程师','7','');
INSERT INTO phpyun_job_class VALUES('174','51','通信电源工程师','8','');
INSERT INTO phpyun_job_class VALUES('175','51','增值产品开发工程师','9','');
INSERT INTO phpyun_job_class VALUES('176','51','手机软件开发工程师','10','');
INSERT INTO phpyun_job_class VALUES('177','51','手机应用开发工程师','11','');
INSERT INTO phpyun_job_class VALUES('178','51','其他','12','');
INSERT INTO phpyun_job_class VALUES('179','52','IC验证工程师','1','');
INSERT INTO phpyun_job_class VALUES('180','52','电气工程师/技术员','2','');
INSERT INTO phpyun_job_class VALUES('181','52','电路工程师/技术员(模拟/数字)','3','');
INSERT INTO phpyun_job_class VALUES('182','52','电声/音响工程师/技术员','4','');
INSERT INTO phpyun_job_class VALUES('183','52','激光/光电子技术','5','');
INSERT INTO phpyun_job_class VALUES('184','52','半导体技术','6','');
INSERT INTO phpyun_job_class VALUES('185','52','自动控制工程师/技术员','7','');
INSERT INTO phpyun_job_class VALUES('186','52','电子软件开发(ARM/MCU...)','8','');
INSERT INTO phpyun_job_class VALUES('187','52','嵌入式软件开发(Linux/单片机/DLC/DSP…)','9','');
INSERT INTO phpyun_job_class VALUES('188','52','嵌入式硬件开发(主板机…)','10','');
INSERT INTO phpyun_job_class VALUES('189','52','电池/电源开发','11','');
INSERT INTO phpyun_job_class VALUES('190','52','FAE 现场应用工程师','12','');
INSERT INTO phpyun_job_class VALUES('191','52','工艺工程师','13','');
INSERT INTO phpyun_job_class VALUES('192','52','家用电器/数码产品研发','14','');
INSERT INTO phpyun_job_class VALUES('193','52','仪器/仪表/计量分析师','15','');
INSERT INTO phpyun_job_class VALUES('194','52','测试工程师','16','');
INSERT INTO phpyun_job_class VALUES('195','52','版图设计工程师','17','');
INSERT INTO phpyun_job_class VALUES('196','53','集成电路IC设计/应用工程师','1','');
INSERT INTO phpyun_job_class VALUES('197','53','IC验证工程师','2','');
INSERT INTO phpyun_job_class VALUES('198','53','电子工程师/技术员','3','');
INSERT INTO phpyun_job_class VALUES('199','53','电子技术研发工程师','4','');
INSERT INTO phpyun_job_class VALUES('200','53','射频工程师','5','');
INSERT INTO phpyun_job_class VALUES('201','53','电子/电器维修工程师/技师','6','');
INSERT INTO phpyun_job_class VALUES('202','53','变压器与磁电工程师','7','');
INSERT INTO phpyun_job_class VALUES('203','53','版图设计工销售总监','8','');
INSERT INTO phpyun_job_class VALUES('204','53','销售经理','9','');
INSERT INTO phpyun_job_class VALUES('205','53','销售主管','10','');
INSERT INTO phpyun_job_class VALUES('206','53','业务拓展主管/经理','11','');
INSERT INTO phpyun_job_class VALUES('207','53','渠道/分销总监','12','');
INSERT INTO phpyun_job_class VALUES('208','53','渠道/分销经理','13','');
INSERT INTO phpyun_job_class VALUES('209','53','渠道/分销主管','14','');
INSERT INTO phpyun_job_class VALUES('210','53','大客户经理','15','');
INSERT INTO phpyun_job_class VALUES('211','53','客户经理/主管','16','');
INSERT INTO phpyun_job_class VALUES('212','53','区域销售总监','17','');
INSERT INTO phpyun_job_class VALUES('213','53','区域销售经理','18','');
INSERT INTO phpyun_job_class VALUES('214','53','团购经理/主管','19','');
INSERT INTO phpyun_job_class VALUES('215','53','其他','20','');
INSERT INTO phpyun_job_class VALUES('216','54','销售代表','1','');
INSERT INTO phpyun_job_class VALUES('217','54','渠道/分销专员','2','');
INSERT INTO phpyun_job_class VALUES('218','54','客户代表','3','');
INSERT INTO phpyun_job_class VALUES('219','54','销售工程师','4','');
INSERT INTO phpyun_job_class VALUES('220','54','电话销售','5','');
INSERT INTO phpyun_job_class VALUES('221','54','团购业务员','6','');
INSERT INTO phpyun_job_class VALUES('222','54','经销商','7','');
INSERT INTO phpyun_job_class VALUES('223','54','其他','8','');
INSERT INTO phpyun_job_class VALUES('224','55','销售行政经理/主管','1','');
INSERT INTO phpyun_job_class VALUES('225','55','销售行政专员/助理','2','');
INSERT INTO phpyun_job_class VALUES('226','55','业务分析经理/主管','3','');
INSERT INTO phpyun_job_class VALUES('227','55','业务分析专员/助理','4','');
INSERT INTO phpyun_job_class VALUES('228','55','商务经理','5','');
INSERT INTO phpyun_job_class VALUES('229','55','商务主管/专员','6','');
INSERT INTO phpyun_job_class VALUES('230','55','商务助理','7','');
INSERT INTO phpyun_job_class VALUES('232','55','其他','0','');
INSERT INTO phpyun_job_class VALUES('233','56','客服总监(非技术)','0','');
INSERT INTO phpyun_job_class VALUES('234','56','客服经理(非技术)','0','');
INSERT INTO phpyun_job_class VALUES('235','56','客服主管(非技术)','0','');
INSERT INTO phpyun_job_class VALUES('236','56','客服专员/助理(非技术)','0','');
INSERT INTO phpyun_job_class VALUES('237','56','客户关系经理/主管','0','');
INSERT INTO phpyun_job_class VALUES('238','56','投诉专员','0','');
INSERT INTO phpyun_job_class VALUES('239','56','售前/售后技术支持经理','6','');
INSERT INTO phpyun_job_class VALUES('240','56','售前/售后技术支持主管','5','');
INSERT INTO phpyun_job_class VALUES('241','56','售前/售后技术支持工程师','4','');
INSERT INTO phpyun_job_class VALUES('242','56','咨询热线/呼叫中心服务人员','3','');
INSERT INTO phpyun_job_class VALUES('243','56','VIP专员','2','');
INSERT INTO phpyun_job_class VALUES('244','56','其他','1','');
INSERT INTO phpyun_job_class VALUES('245','57','首席财务官 CFO','0','');
INSERT INTO phpyun_job_class VALUES('246','57','财务总监','0','');
INSERT INTO phpyun_job_class VALUES('247','57','财务经理','0','');
INSERT INTO phpyun_job_class VALUES('248','57','财务顾问','0','');
INSERT INTO phpyun_job_class VALUES('249','57','财务主管/总帐主管','0','');
INSERT INTO phpyun_job_class VALUES('250','57','会计经理/会计主管','0','');
INSERT INTO phpyun_job_class VALUES('251','57','会计','0','');
INSERT INTO phpyun_job_class VALUES('252','57','出纳员','0','');
INSERT INTO phpyun_job_class VALUES('253','57','财务/会计助理','0','');
INSERT INTO phpyun_job_class VALUES('254','57','会计文员','0','');
INSERT INTO phpyun_job_class VALUES('255','57','固定资产会计','0','');
INSERT INTO phpyun_job_class VALUES('256','57','财务分析经理/主管','0','');
INSERT INTO phpyun_job_class VALUES('257','57','财务分析员','0','');
INSERT INTO phpyun_job_class VALUES('258','57','成本经理/成本主管','0','');
INSERT INTO phpyun_job_class VALUES('259','57','成本管理员','0','');
INSERT INTO phpyun_job_class VALUES('260','57','资金经理/主管','0','');
INSERT INTO phpyun_job_class VALUES('261','57','资金专员','0','');
INSERT INTO phpyun_job_class VALUES('262','57','审计经理/主管','0','');
INSERT INTO phpyun_job_class VALUES('263','57','审计专员/助理','0','');
INSERT INTO phpyun_job_class VALUES('264','57','税务经理/税务主管','0','');
INSERT INTO phpyun_job_class VALUES('265','57','税务专员/助理','0','');
INSERT INTO phpyun_job_class VALUES('266','57','统计员','0','');
INSERT INTO phpyun_job_class VALUES('267','57','其他','0','');
INSERT INTO phpyun_job_class VALUES('268','58','证券/期货/外汇经纪人','0','');
INSERT INTO phpyun_job_class VALUES('269','58','证券分析师','0','');
INSERT INTO phpyun_job_class VALUES('270','58','股票/期货操盘手','0','');
INSERT INTO phpyun_job_class VALUES('271','58','金融/经济研究员','0','');
INSERT INTO phpyun_job_class VALUES('272','58','投资/基金项目经理','0','');
INSERT INTO phpyun_job_class VALUES('273','58','投资/理财顾问','0','');
INSERT INTO phpyun_job_class VALUES('274','58','投资银行业务','0','');
INSERT INTO phpyun_job_class VALUES('275','58','融资经理/融资主管','0','');
INSERT INTO phpyun_job_class VALUES('276','58','融资专员','0','');
INSERT INTO phpyun_job_class VALUES('277','58','拍卖师','0','');
INSERT INTO phpyun_job_class VALUES('278','58','其他','0','');
INSERT INTO phpyun_job_class VALUES('279','59','行长/副行长','0','');
INSERT INTO phpyun_job_class VALUES('280','59','个人业务部门经理/主管','0','');
INSERT INTO phpyun_job_class VALUES('281','59','个人业务客户经理','0','');
INSERT INTO phpyun_job_class VALUES('282','59','公司业务部门经理/主管','0','');
INSERT INTO phpyun_job_class VALUES('283','59','公司业务客户经理','0','');
INSERT INTO phpyun_job_class VALUES('284','59','综合业务经理/主管','0','');
INSERT INTO phpyun_job_class VALUES('285','59','综合业务专员','0','');
INSERT INTO phpyun_job_class VALUES('286','59','资产评估/分析','0','');
INSERT INTO phpyun_job_class VALUES('287','59','风险控制','0','');
INSERT INTO phpyun_job_class VALUES('288','59','信贷管理','0','');
INSERT INTO phpyun_job_class VALUES('289','59','信审核查','0','');
INSERT INTO phpyun_job_class VALUES('290','59','进出口/信用证结算','0','');
INSERT INTO phpyun_job_class VALUES('291','59','外汇交易','0','');
INSERT INTO phpyun_job_class VALUES('292','59','清算人员','0','');
INSERT INTO phpyun_job_class VALUES('293','59','高级客户经理/客户经理','0','');
INSERT INTO phpyun_job_class VALUES('294','59','客户主管/专员','0','');
INSERT INTO phpyun_job_class VALUES('295','59','营业部大堂经理','0','');
INSERT INTO phpyun_job_class VALUES('296','59','银行柜员','0','');
INSERT INTO phpyun_job_class VALUES('297','59','银行卡、电子银行业务推广','0','');
INSERT INTO phpyun_job_class VALUES('298','59','其他','0','');
INSERT INTO phpyun_job_class VALUES('299','60','保险精算师','0','');
INSERT INTO phpyun_job_class VALUES('300','60','保险产品开发/项目策划','0','');
INSERT INTO phpyun_job_class VALUES('301','60','保险业务经理/主管','0','');
INSERT INTO phpyun_job_class VALUES('302','60','保险代理/经纪人/客户经理','0','');
INSERT INTO phpyun_job_class VALUES('303','60','理财顾问/财务规划师','0','');
INSERT INTO phpyun_job_class VALUES('304','60','储备经理人','0','');
INSERT INTO phpyun_job_class VALUES('305','60','保险核保','0','');
INSERT INTO phpyun_job_class VALUES('306','60','保险理赔','0','');
INSERT INTO phpyun_job_class VALUES('307','60','保险客户服务/续期管理','0','');
INSERT INTO phpyun_job_class VALUES('308','60','保险培训师','0','');
INSERT INTO phpyun_job_class VALUES('309','60','保险内勤','0','');
INSERT INTO phpyun_job_class VALUES('310','60','契约管理','0','');
INSERT INTO phpyun_job_class VALUES('311','60','其他','0','');
INSERT INTO phpyun_job_class VALUES('312','61','工厂经理/厂长','0','');
INSERT INTO phpyun_job_class VALUES('313','61','总工程师/副总工程师','0','');
INSERT INTO phpyun_job_class VALUES('314','61','项目总监','0','');
INSERT INTO phpyun_job_class VALUES('315','61','项目经理/主管项目工程师','0','');
INSERT INTO phpyun_job_class VALUES('316','61','营运经理','0','');
INSERT INTO phpyun_job_class VALUES('317','61','营运主管','0','');
INSERT INTO phpyun_job_class VALUES('318','61','生产总监','0','');
INSERT INTO phpyun_job_class VALUES('319','61','生产经理/车间主任','0','');
INSERT INTO phpyun_job_class VALUES('320','61','生产计划/物料管理(PMC)','0','');
INSERT INTO phpyun_job_class VALUES('321','61','生产主管/督导/领班/组长','0','');
INSERT INTO phpyun_job_class VALUES('322','61','生产文员','0','');
INSERT INTO phpyun_job_class VALUES('323','61','化验员','0','');
INSERT INTO phpyun_job_class VALUES('324','61','其他','0','');
INSERT INTO phpyun_job_class VALUES('325','62','质量管理/测试经理(QA/QC经理)','0','');
INSERT INTO phpyun_job_class VALUES('326','62','质量管理/测试主管(QA/QC主管)','0','');
INSERT INTO phpyun_job_class VALUES('327','62','质量管理/测试工程师(QA/QC工程师)','0','');
INSERT INTO phpyun_job_class VALUES('328','62','质量检验员/测试员','0','');
INSERT INTO phpyun_job_class VALUES('329','62','可靠度工程师','0','');
INSERT INTO phpyun_job_class VALUES('330','62','故障分析工程师','0','');
INSERT INTO phpyun_job_class VALUES('331','62','认证工程师/审核员','0','');
INSERT INTO phpyun_job_class VALUES('332','62','体系工程师/审核员','0','');
INSERT INTO phpyun_job_class VALUES('333','62','环境/健康/安全经理/主管（EHS）','0','');
INSERT INTO phpyun_job_class VALUES('334','62','环境/健康/安全工程师（EHS）','0','');
INSERT INTO phpyun_job_class VALUES('335','62','供应商管理','0','');
INSERT INTO phpyun_job_class VALUES('336','62','采购材料、设备质量管理','0','');
INSERT INTO phpyun_job_class VALUES('337','62','其他','0','');
INSERT INTO phpyun_job_class VALUES('338','63','电工程师','0','');
INSERT INTO phpyun_job_class VALUES('339','63','维修经理/主管','0','');
INSERT INTO phpyun_job_class VALUES('340','63','维修工程师','0','');
INSERT INTO phpyun_job_class VALUES('341','63','装配工程师/技师','0','');
INSERT INTO phpyun_job_class VALUES('342','63','铸造/锻造工程师/技师','0','');
INSERT INTO phpyun_job_class VALUES('343','63','注塑工程师/技师','0','');
INSERT INTO phpyun_job_class VALUES('344','63','焊接工程师/技师','0','');
INSERT INTO phpyun_job_class VALUES('345','63','夹具工程师/技师','0','');
INSERT INTO phpyun_job_class VALUES('346','63','CNC工程师','0','');
INSERT INTO phpyun_job_class VALUES('347','63','冲压工程师/技师','0','');
INSERT INTO phpyun_job_class VALUES('348','63','锅炉工程师/技师','0','');
INSERT INTO phpyun_job_class VALUES('349','63','电力工程师/技术员','0','');
INSERT INTO phpyun_job_class VALUES('350','63','光源与照明工程','0','');
INSERT INTO phpyun_job_class VALUES('351','63','汽车/摩托车工程师','0','');
INSERT INTO phpyun_job_class VALUES('352','63','船舶工程师','0','');
INSERT INTO phpyun_job_class VALUES('353','63','轨道交通工程师/技术员','0','');
INSERT INTO phpyun_job_class VALUES('354','63','飞机维修机械师','0','');
INSERT INTO phpyun_job_class VALUES('355','63','飞行器设计与制造','0','');
INSERT INTO phpyun_job_class VALUES('356','63','水利/水电工程师','0','');
INSERT INTO phpyun_job_class VALUES('357','63','石油天然气技术人员','0','');
INSERT INTO phpyun_job_class VALUES('358','63','矿产勘探/地质勘测工程师','0','');
INSERT INTO phpyun_job_class VALUES('359','63','其他','0','');
INSERT INTO phpyun_job_class VALUES('360','64','技术研发经理/主管','0','');
INSERT INTO phpyun_job_class VALUES('361','64','技术研发工程师','0','');
INSERT INTO phpyun_job_class VALUES('362','64','产品工艺/制程工程师','0','');
INSERT INTO phpyun_job_class VALUES('363','64','产品规划工程师','0','');
INSERT INTO phpyun_job_class VALUES('364','64','实验室负责人/工程师','0','');
INSERT INTO phpyun_job_class VALUES('365','64','工程/设备经理','0','');
INSERT INTO phpyun_job_class VALUES('366','64','工程/设备主管','0','');
INSERT INTO phpyun_job_class VALUES('367','64','工程/设备工程师','0','');
INSERT INTO phpyun_job_class VALUES('368','64','工程/机械绘图员','0','');
INSERT INTO phpyun_job_class VALUES('369','64','工业工程师','0','');
INSERT INTO phpyun_job_class VALUES('370','64','材料工程师','0','');
INSERT INTO phpyun_job_class VALUES('371','64','机械工程师','0','');
INSERT INTO phpyun_job_class VALUES('372','64','结构工程师','0','');
INSERT INTO phpyun_job_class VALUES('373','64','模具工程师','0','');
INSERT INTO phpyun_job_class VALUES('374','64','机汽车机构工程师','0','');
INSERT INTO phpyun_job_class VALUES('375','64','汽车设计工程师','0','');
INSERT INTO phpyun_job_class VALUES('376','64','汽车电子工程师','0','');
INSERT INTO phpyun_job_class VALUES('377','64','汽车质量管理','0','');
INSERT INTO phpyun_job_class VALUES('378','64','汽车安全性能工程师','0','');
INSERT INTO phpyun_job_class VALUES('379','64','汽车装配工艺工程师','0','');
INSERT INTO phpyun_job_class VALUES('380','64','汽车修理人员','0','');
INSERT INTO phpyun_job_class VALUES('381','64','4S店经理/维修站经理','0','');
INSERT INTO phpyun_job_class VALUES('382','64','汽车销售/经纪人','0','');
INSERT INTO phpyun_job_class VALUES('383','64','二手车评估师','0','');
INSERT INTO phpyun_job_class VALUES('384','64','其他','0','');
INSERT INTO phpyun_job_class VALUES('385','65','技工','0','');
INSERT INTO phpyun_job_class VALUES('386','65','钳工/机修工/钣金工','0','');
INSERT INTO phpyun_job_class VALUES('387','65','电焊工/铆焊工','0','');
INSERT INTO phpyun_job_class VALUES('388','65','车工/磨工/铣工/冲压工/锣工','0','');
INSERT INTO phpyun_job_class VALUES('389','65','切割技工','0','');
INSERT INTO phpyun_job_class VALUES('390','65','模具工','0','');
INSERT INTO phpyun_job_class VALUES('391','65','电工','0','');
INSERT INTO phpyun_job_class VALUES('392','65','叉车工','0','');
INSERT INTO phpyun_job_class VALUES('393','65','空调工/电梯工/锅炉工','0','');
INSERT INTO phpyun_job_class VALUES('394','65','水工/木工/漆工','0','');
INSERT INTO phpyun_job_class VALUES('395','65','普工/操作工','0','');
INSERT INTO phpyun_job_class VALUES('396','65','裁缝印纺熨烫','0','');
INSERT INTO phpyun_job_class VALUES('397','65','汽车修理工','0','');
INSERT INTO phpyun_job_class VALUES('398','65','其他','0','');
INSERT INTO phpyun_job_class VALUES('399','66','服装/纺织设计总监','0','');
INSERT INTO phpyun_job_class VALUES('400','66','服装/纺织设计','0','');
INSERT INTO phpyun_job_class VALUES('401','66','面料辅料开发','0','');
INSERT INTO phpyun_job_class VALUES('402','66','面料辅料采购','0','');
INSERT INTO phpyun_job_class VALUES('403','66','服装/纺织/皮革跟单','0','');
INSERT INTO phpyun_job_class VALUES('404','66','质量管理/验货员(QA/QC)','0','');
INSERT INTO phpyun_job_class VALUES('405','66','板房/楦头/底格出格师','0','');
INSERT INTO phpyun_job_class VALUES('406','66','打样/制版','0','');
INSERT INTO phpyun_job_class VALUES('407','66','电脑放码员','0','');
INSERT INTO phpyun_job_class VALUES('408','66','纸样师/车板工','0','');
INSERT INTO phpyun_job_class VALUES('409','66','裁床','0','');
INSERT INTO phpyun_job_class VALUES('410','66','其他','0','');
INSERT INTO phpyun_job_class VALUES('411','67','采购总监','0','');
INSERT INTO phpyun_job_class VALUES('412','67','采购经理','0','');
INSERT INTO phpyun_job_class VALUES('413','67','采购主管','0','');
INSERT INTO phpyun_job_class VALUES('414','67','采购员','0','');
INSERT INTO phpyun_job_class VALUES('415','67','采购助理','0','');
INSERT INTO phpyun_job_class VALUES('416','67','买手','0','');
INSERT INTO phpyun_job_class VALUES('417','67','供应商开发','0','');
INSERT INTO phpyun_job_class VALUES('418','67','其他','0','');
INSERT INTO phpyun_job_class VALUES('419','68','贸易/进出口经理/主管','0','');
INSERT INTO phpyun_job_class VALUES('420','68','贸易/进出口专员/助理','0','');
INSERT INTO phpyun_job_class VALUES('421','68','国内贸易人员','0','');
INSERT INTO phpyun_job_class VALUES('422','68','业务跟单经理','0','');
INSERT INTO phpyun_job_class VALUES('423','68','高级业务跟单','0','');
INSERT INTO phpyun_job_class VALUES('424','68','业务跟单','0','');
INSERT INTO phpyun_job_class VALUES('425','68','助理业务跟单','0','');
INSERT INTO phpyun_job_class VALUES('426','68','其他','0','');
INSERT INTO phpyun_job_class VALUES('427','69','物流总监','0','');
INSERT INTO phpyun_job_class VALUES('428','69','物流经理','0','');
INSERT INTO phpyun_job_class VALUES('429','69','物流主管','0','');
INSERT INTO phpyun_job_class VALUES('430','69','物流专员/助理','0','');
INSERT INTO phpyun_job_class VALUES('431','69','供应链总监','0','');
INSERT INTO phpyun_job_class VALUES('432','69','供应链经理','0','');
INSERT INTO phpyun_job_class VALUES('433','69','供应链主管/专员','0','');
INSERT INTO phpyun_job_class VALUES('434','69','物料经理','0','');
INSERT INTO phpyun_job_class VALUES('435','69','物料主管/专员','0','');
INSERT INTO phpyun_job_class VALUES('436','69','仓库经理/主管','0','');
INSERT INTO phpyun_job_class VALUES('437','69','仓库管理员','0','');
INSERT INTO phpyun_job_class VALUES('438','69','运输经理/主管','0','');
INSERT INTO phpyun_job_class VALUES('439','69','项目经理/主管','0','');
INSERT INTO phpyun_job_class VALUES('440','69','货运代理','0','');
INSERT INTO phpyun_job_class VALUES('441','69','集装箱业务','0','');
INSERT INTO phpyun_job_class VALUES('442','69','海关事务管理','0','');
INSERT INTO phpyun_job_class VALUES('443','69','报关员','0','');
INSERT INTO phpyun_job_class VALUES('444','69','单证员','0','');
INSERT INTO phpyun_job_class VALUES('445','69','船务/空运陆运操作','0','');
INSERT INTO phpyun_job_class VALUES('446','69','快递员','0','');
INSERT INTO phpyun_job_class VALUES('447','69','调度员','0','');
INSERT INTO phpyun_job_class VALUES('448','69','理货员','0','');
INSERT INTO phpyun_job_class VALUES('449','69','其他','0','');
INSERT INTO phpyun_job_class VALUES('450','70','生物工程/生物制药','0','');
INSERT INTO phpyun_job_class VALUES('451','70','化学分析测试员','0','');
INSERT INTO phpyun_job_class VALUES('452','70','医药技术研发管理人员','0','');
INSERT INTO phpyun_job_class VALUES('453','70','医药技术研发人员','0','');
INSERT INTO phpyun_job_class VALUES('454','70','临床研究员','0','');
INSERT INTO phpyun_job_class VALUES('455','70','临床协调员','0','');
INSERT INTO phpyun_job_class VALUES('456','70','临床数据分析员','0','');
INSERT INTO phpyun_job_class VALUES('457','70','药品注册','0','');
INSERT INTO phpyun_job_class VALUES('458','70','药品生产/质量管理','0','');
INSERT INTO phpyun_job_class VALUES('459','70','药品市场推广经理','0','');
INSERT INTO phpyun_job_class VALUES('460','70','药品市场推广主管/专员','0','');
INSERT INTO phpyun_job_class VALUES('461','70','医药招商','0','');
INSERT INTO phpyun_job_class VALUES('462','70','政府事务管理','0','');
INSERT INTO phpyun_job_class VALUES('463','70','招投标管理','0','');
INSERT INTO phpyun_job_class VALUES('464','70','医药销售经理/主管','0','');
INSERT INTO phpyun_job_class VALUES('465','70','医药销售代表','0','');
INSERT INTO phpyun_job_class VALUES('466','70','医疗设备注册','0','');
INSERT INTO phpyun_job_class VALUES('467','70','医疗设备生产/质量管理','0','');
INSERT INTO phpyun_job_class VALUES('468','70','医疗器械市场推广','0','');
INSERT INTO phpyun_job_class VALUES('469','70','医疗器械销售','0','');
INSERT INTO phpyun_job_class VALUES('470','70','医疗器械维修人员','0','');
INSERT INTO phpyun_job_class VALUES('471','70','其他','0','');
INSERT INTO phpyun_job_class VALUES('472','71','化工技术应用/化工工程师','0','');
INSERT INTO phpyun_job_class VALUES('473','71','化工实验室研究员/技术员','0','');
INSERT INTO phpyun_job_class VALUES('474','71','涂料研发工程师','0','');
INSERT INTO phpyun_job_class VALUES('475','71','配色技术员','0','');
INSERT INTO phpyun_job_class VALUES('476','71','塑料工程师','0','');
INSERT INTO phpyun_job_class VALUES('477','71','化妆品研发','0','');
INSERT INTO phpyun_job_class VALUES('478','71','食品/饮料研发','0','');
INSERT INTO phpyun_job_class VALUES('479','71','造纸研发','0','');
INSERT INTO phpyun_job_class VALUES('480','71','其他','0','');
INSERT INTO phpyun_job_class VALUES('481','72','医院管理人员','0','');
INSERT INTO phpyun_job_class VALUES('482','72','内科医生','0','');
INSERT INTO phpyun_job_class VALUES('483','72','外科医生','0','');
INSERT INTO phpyun_job_class VALUES('484','72','专科医生','0','');
INSERT INTO phpyun_job_class VALUES('485','72','牙科医生','0','');
INSERT INTO phpyun_job_class VALUES('486','72','麻醉医生','0','');
INSERT INTO phpyun_job_class VALUES('487','72','美容整形师','0','');
INSERT INTO phpyun_job_class VALUES('488','72','理疗师','0','');
INSERT INTO phpyun_job_class VALUES('489','72','中医科医生','0','');
INSERT INTO phpyun_job_class VALUES('490','72','针灸、推拿','0','');
INSERT INTO phpyun_job_class VALUES('491','72','儿科医生','0','');
INSERT INTO phpyun_job_class VALUES('492','72','心理医生','0','');
INSERT INTO phpyun_job_class VALUES('493','72','营养师','0','');
INSERT INTO phpyun_job_class VALUES('494','72','药库主任/药剂师','0','');
INSERT INTO phpyun_job_class VALUES('495','72','医药学检验','0','');
INSERT INTO phpyun_job_class VALUES('496','72','公共卫生/疾病控制','0','');
INSERT INTO phpyun_job_class VALUES('497','72','护理主任/护士长','0','');
INSERT INTO phpyun_job_class VALUES('498','72','护士/护理人员','0','');
INSERT INTO phpyun_job_class VALUES('499','72','兽医','0','');
INSERT INTO phpyun_job_class VALUES('500','72','验光师','0','');
INSERT INTO phpyun_job_class VALUES('501','72','其他','0','');
INSERT INTO phpyun_job_class VALUES('502','73','广告客户总监/副总监','0','');
INSERT INTO phpyun_job_class VALUES('503','73','广告客户经理','0','');
INSERT INTO phpyun_job_class VALUES('504','73','广告客户主管/专员','0','');
INSERT INTO phpyun_job_class VALUES('505','73','广告创意/设计经理','0','');
INSERT INTO phpyun_job_class VALUES('506','73','广告创意总监','0','');
INSERT INTO phpyun_job_class VALUES('507','73','广告创意/设计主管/专员','0','');
INSERT INTO phpyun_job_class VALUES('508','73','美术指导','0','');
INSERT INTO phpyun_job_class VALUES('509','73','文案/策划','0','');
INSERT INTO phpyun_job_class VALUES('510','73','企业/业务发展经理','0','');
INSERT INTO phpyun_job_class VALUES('511','73','企业策划人员','0','');
INSERT INTO phpyun_job_class VALUES('512','73','其他','0','');
INSERT INTO phpyun_job_class VALUES('513','74','公关经理','0','');
INSERT INTO phpyun_job_class VALUES('514','74','公关主管','0','');
INSERT INTO phpyun_job_class VALUES('515','74','公关专员','0','');
INSERT INTO phpyun_job_class VALUES('516','74','会务/会展经理','0','');
INSERT INTO phpyun_job_class VALUES('517','74','会务/会展主管','0','');
INSERT INTO phpyun_job_class VALUES('518','74','会务/会展专员','0','');
INSERT INTO phpyun_job_class VALUES('519','74','媒介经理','0','');
INSERT INTO phpyun_job_class VALUES('520','74','媒介主管','0','');
INSERT INTO phpyun_job_class VALUES('521','74','媒介专员','0','');
INSERT INTO phpyun_job_class VALUES('522','74','公关/媒介助理','0','');
INSERT INTO phpyun_job_class VALUES('523','74','媒介销售','0','');
INSERT INTO phpyun_job_class VALUES('524','74','活动策划','0','');
INSERT INTO phpyun_job_class VALUES('525','74','其他','0','');
INSERT INTO phpyun_job_class VALUES('526','75','市场/营销/拓展总监','0','');
INSERT INTO phpyun_job_class VALUES('527','75','市场/营销/拓展经理','0','');
INSERT INTO phpyun_job_class VALUES('528','75','市场/营销/拓展主管','0','');
INSERT INTO phpyun_job_class VALUES('529','75','市场/营销/拓展专员','0','');
INSERT INTO phpyun_job_class VALUES('530','75','市场助理','0','');
INSERT INTO phpyun_job_class VALUES('531','75','市场分析/调研人员','0','');
INSERT INTO phpyun_job_class VALUES('532','75','产品/品牌经理','0','');
INSERT INTO phpyun_job_class VALUES('533','75','产品/品牌主管','0','');
INSERT INTO phpyun_job_class VALUES('534','75','产品/品牌专员','0','');
INSERT INTO phpyun_job_class VALUES('535','75','市场通路经理/主管','0','');
INSERT INTO phpyun_job_class VALUES('536','75','市场通路专员','0','');
INSERT INTO phpyun_job_class VALUES('537','75','市场企划经理/主管','0','');
INSERT INTO phpyun_job_class VALUES('538','75','市场企划专员','0','');
INSERT INTO phpyun_job_class VALUES('539','75','促销经理','0','');
INSERT INTO phpyun_job_class VALUES('540','75','促销主管/督导','0','');
INSERT INTO phpyun_job_class VALUES('541','75','促销员/导购','0','');
INSERT INTO phpyun_job_class VALUES('542','75','选址拓展/新店开发','0','');
INSERT INTO phpyun_job_class VALUES('543','75','其他','0','');
INSERT INTO phpyun_job_class VALUES('544','76','影视策划/制作人员','0','');
INSERT INTO phpyun_job_class VALUES('545','76','导演/编导','0','');
INSERT INTO phpyun_job_class VALUES('546','76','艺术/设计总监','0','');
INSERT INTO phpyun_job_class VALUES('547','76','经纪人/星探','0','');
INSERT INTO phpyun_job_class VALUES('548','76','演员/模特/主持人','0','');
INSERT INTO phpyun_job_class VALUES('549','76','摄影师/摄像师','0','');
INSERT INTO phpyun_job_class VALUES('550','76','后期制作','0','');
INSERT INTO phpyun_job_class VALUES('551','76','音效师','0','');
INSERT INTO phpyun_job_class VALUES('552','76','配音员','0','');
INSERT INTO phpyun_job_class VALUES('553','76','放映经理/主管','0','');
INSERT INTO phpyun_job_class VALUES('554','76','放映员','0','');
INSERT INTO phpyun_job_class VALUES('555','76','化妆师/造型师','0','');
INSERT INTO phpyun_job_class VALUES('556','76','其他','0','');
INSERT INTO phpyun_job_class VALUES('557','77','总编/副总编','0','');
INSERT INTO phpyun_job_class VALUES('558','77','编辑','0','');
INSERT INTO phpyun_job_class VALUES('559','77','作家/撰稿人','0','');
INSERT INTO phpyun_job_class VALUES('560','77','记者','0','');
INSERT INTO phpyun_job_class VALUES('561','77','电话采编','0','');
INSERT INTO phpyun_job_class VALUES('562','77','美术编辑','0','');
INSERT INTO phpyun_job_class VALUES('563','77','排版设计','0','');
INSERT INTO phpyun_job_class VALUES('564','77','校对/录入','0','');
INSERT INTO phpyun_job_class VALUES('565','77','出版/发行','0','');
INSERT INTO phpyun_job_class VALUES('566','77','电分操作员','0','');
INSERT INTO phpyun_job_class VALUES('567','77','印刷排版/制版','0','');
INSERT INTO phpyun_job_class VALUES('568','77','数码直印/菲林输出','0','');
INSERT INTO phpyun_job_class VALUES('569','77','打稿机操作员','0','');
INSERT INTO phpyun_job_class VALUES('570','77','调墨技师','0','');
INSERT INTO phpyun_job_class VALUES('571','77','印刷机械机长','0','');
INSERT INTO phpyun_job_class VALUES('572','77','晒版/拼版/装订/烫金技工','0','');
INSERT INTO phpyun_job_class VALUES('573','77','其他','0','');
INSERT INTO phpyun_job_class VALUES('574','78','平面设计总监','0','');
INSERT INTO phpyun_job_class VALUES('575','78','平面设计经理/主管','0','');
INSERT INTO phpyun_job_class VALUES('576','78','平面设计师','0','');
INSERT INTO phpyun_job_class VALUES('577','78','绘画','0','');
INSERT INTO phpyun_job_class VALUES('578','78','动画/3D设计','0','');
INSERT INTO phpyun_job_class VALUES('579','78','原画师','0','');
INSERT INTO phpyun_job_class VALUES('580','78','展览/展示/店面设计','0','');
INSERT INTO phpyun_job_class VALUES('581','78','多媒体设计','0','');
INSERT INTO phpyun_job_class VALUES('582','78','包装设计','0','');
INSERT INTO phpyun_job_class VALUES('583','78','工业/产品设计','0','');
INSERT INTO phpyun_job_class VALUES('584','78','工艺品/珠宝设计鉴定','0','');
INSERT INTO phpyun_job_class VALUES('585','78','家具/家居用品设计','0','');
INSERT INTO phpyun_job_class VALUES('586','78','玩具设计','0','');
INSERT INTO phpyun_job_class VALUES('587','78','其他','0','');
INSERT INTO phpyun_job_class VALUES('588','79','高级建筑工程师/总工','0','');
INSERT INTO phpyun_job_class VALUES('589','79','建筑工程师','0','');
INSERT INTO phpyun_job_class VALUES('590','79','建筑设计师','0','');
INSERT INTO phpyun_job_class VALUES('591','79','市政工程师','0','');
INSERT INTO phpyun_job_class VALUES('592','79','结构/土木/土建工程师','0','');
INSERT INTO phpyun_job_class VALUES('593','79','公路/桥梁/港口/隧道工程','0','');
INSERT INTO phpyun_job_class VALUES('594','79','岩土工程','0','');
INSERT INTO phpyun_job_class VALUES('595','79','楼宇自动化','0','');
INSERT INTO phpyun_job_class VALUES('596','79','建筑机电工程师','0','');
INSERT INTO phpyun_job_class VALUES('597','79','安防工程师','0','');
INSERT INTO phpyun_job_class VALUES('598','79','给排水/暖通工程','0','');
INSERT INTO phpyun_job_class VALUES('599','79','幕墙工程师','0','');
INSERT INTO phpyun_job_class VALUES('600','79','规划与设计','0','');
INSERT INTO phpyun_job_class VALUES('601','79','室内外装潢设计','0','');
INSERT INTO phpyun_job_class VALUES('602','79','园艺/园林/景观设计','0','');
INSERT INTO phpyun_job_class VALUES('603','79','测绘/测量','0','');
INSERT INTO phpyun_job_class VALUES('604','79','建筑制图','0','');
INSERT INTO phpyun_job_class VALUES('605','79','开发报建','0','');
INSERT INTO phpyun_job_class VALUES('606','79','工程造价师/预结算经理','0','');
INSERT INTO phpyun_job_class VALUES('607','79','预结算员','0','');
INSERT INTO phpyun_job_class VALUES('608','79','建筑工程管理/项目经理','0','');
INSERT INTO phpyun_job_class VALUES('609','79','建筑工程验收','0','');
INSERT INTO phpyun_job_class VALUES('610','79','工程监理','0','');
INSERT INTO phpyun_job_class VALUES('611','79','合同管理','0','');
INSERT INTO phpyun_job_class VALUES('612','79','安全员','0','');
INSERT INTO phpyun_job_class VALUES('613','79','资料员','0','');
INSERT INTO phpyun_job_class VALUES('614','79','施工员','0','');
INSERT INTO phpyun_job_class VALUES('615','79','其他','0','');
INSERT INTO phpyun_job_class VALUES('616','80','房地产项目/开发/策划经理','0','');
INSERT INTO phpyun_job_class VALUES('617','80','房地产项目/开发/策划主管/专员','0','');
INSERT INTO phpyun_job_class VALUES('618','80','房产项目配套工程师','0','');
INSERT INTO phpyun_job_class VALUES('619','80','房地产项目招投标','0','');
INSERT INTO phpyun_job_class VALUES('620','80','房地产评估','0','');
INSERT INTO phpyun_job_class VALUES('621','80','房地产中介/交易','0','');
INSERT INTO phpyun_job_class VALUES('622','80','房地产销售经理/主管','0','');
INSERT INTO phpyun_job_class VALUES('623','80','房地产销售人员','0','');
INSERT INTO phpyun_job_class VALUES('624','80','其他','0','');
INSERT INTO phpyun_job_class VALUES('625','81','高级物业顾问/物业顾问','0','');
INSERT INTO phpyun_job_class VALUES('626','81','物业管理经理/主管','0','');
INSERT INTO phpyun_job_class VALUES('627','81','物业管理专员/助理','0','');
INSERT INTO phpyun_job_class VALUES('628','81','物业招商/租赁/租售','0','');
INSERT INTO phpyun_job_class VALUES('629','81','物业设施管理人员','0','');
INSERT INTO phpyun_job_class VALUES('630','81','物业机电工程师','0','');
INSERT INTO phpyun_job_class VALUES('631','81','物业维修人员','0','');
INSERT INTO phpyun_job_class VALUES('632','81','其他','0','');
INSERT INTO phpyun_job_class VALUES('633','82','人事总监','0','');
INSERT INTO phpyun_job_class VALUES('634','82','人事经理','0','');
INSERT INTO phpyun_job_class VALUES('635','82','人事主管','0','');
INSERT INTO phpyun_job_class VALUES('636','82','人事专员','0','');
INSERT INTO phpyun_job_class VALUES('637','82','人事助理','0','');
INSERT INTO phpyun_job_class VALUES('638','82','招聘经理/主管','0','');
INSERT INTO phpyun_job_class VALUES('639','82','招聘专员/助理','0','');
INSERT INTO phpyun_job_class VALUES('640','82','薪资福利经理/主管','0','');
INSERT INTO phpyun_job_class VALUES('641','82','薪资福利专员/助理','0','');
INSERT INTO phpyun_job_class VALUES('642','82','绩效考核经理/主管','0','');
INSERT INTO phpyun_job_class VALUES('643','82','绩效考核专员/助理','0','');
INSERT INTO phpyun_job_class VALUES('644','82','培训经理/主管','0','');
INSERT INTO phpyun_job_class VALUES('645','82','培训专员/助理/培训师','0','');
INSERT INTO phpyun_job_class VALUES('646','82','企业文化/员工关系/工会管理','0','');
INSERT INTO phpyun_job_class VALUES('647','82','人力资源信息系统专员','0','');
INSERT INTO phpyun_job_class VALUES('648','82','其他','0','');
INSERT INTO phpyun_job_class VALUES('649','83','首席执行官CEO/总裁/总经理','0','');
INSERT INTO phpyun_job_class VALUES('650','83','首席运营官COO','0','');
INSERT INTO phpyun_job_class VALUES('651','83','副总经理/副总裁','0','');
INSERT INTO phpyun_job_class VALUES('652','83','合伙人','0','');
INSERT INTO phpyun_job_class VALUES('653','83','总监/部门经理','0','');
INSERT INTO phpyun_job_class VALUES('654','83','策略发展总监','0','');
INSERT INTO phpyun_job_class VALUES('655','83','办事处首席代表','0','');
INSERT INTO phpyun_job_class VALUES('656','83','办事处/分公司/分支机构经理','0','');
INSERT INTO phpyun_job_class VALUES('657','83','总裁助理/总经理助理','0','');
INSERT INTO phpyun_job_class VALUES('658','83','其他','0','');
INSERT INTO phpyun_job_class VALUES('659','84','行政总监','0','');
INSERT INTO phpyun_job_class VALUES('660','84','行政经理/主管/办公室主任','0','');
INSERT INTO phpyun_job_class VALUES('661','84','行政专员/助理','0','');
INSERT INTO phpyun_job_class VALUES('662','84','经理助理/秘书','0','');
INSERT INTO phpyun_job_class VALUES('663','84','前台接待/总机/接待生','0','');
INSERT INTO phpyun_job_class VALUES('664','84','后勤','0','');
INSERT INTO phpyun_job_class VALUES('665','84','图书管理员/资料管理员','0','');
INSERT INTO phpyun_job_class VALUES('666','84','电脑操作员/打字员','0','');
INSERT INTO phpyun_job_class VALUES('667','84','其他','0','');
INSERT INTO phpyun_job_class VALUES('668','85','专业顾问','0','');
INSERT INTO phpyun_job_class VALUES('669','85','咨询总监','0','');
INSERT INTO phpyun_job_class VALUES('670','85','咨询经理','0','');
INSERT INTO phpyun_job_class VALUES('671','85','专业培训师','0','');
INSERT INTO phpyun_job_class VALUES('672','85','咨询员','0','');
INSERT INTO phpyun_job_class VALUES('673','85','调研员','0','');
INSERT INTO phpyun_job_class VALUES('674','85','猎头/人才中介','0','');
INSERT INTO phpyun_job_class VALUES('675','85','情报信息分析人员','0','');
INSERT INTO phpyun_job_class VALUES('676','85','其他','0','');
INSERT INTO phpyun_job_class VALUES('677','86','律师/法律顾问','0','');
INSERT INTO phpyun_job_class VALUES('678','86','律师助理','0','');
INSERT INTO phpyun_job_class VALUES('679','86','法务经理','0','');
INSERT INTO phpyun_job_class VALUES('680','86','法务主管/专员','0','');
INSERT INTO phpyun_job_class VALUES('681','86','法务助理','0','');
INSERT INTO phpyun_job_class VALUES('682','86','合规经理','0','');
INSERT INTO phpyun_job_class VALUES('683','86','合规主管/专员','0','');
INSERT INTO phpyun_job_class VALUES('684','86','知识产权/专利顾问/专员','0','');
INSERT INTO phpyun_job_class VALUES('685','86','其他','0','');
INSERT INTO phpyun_job_class VALUES('686','87','校长','0','');
INSERT INTO phpyun_job_class VALUES('687','87','大学教授','0','');
INSERT INTO phpyun_job_class VALUES('688','87','讲师/助教','0','');
INSERT INTO phpyun_job_class VALUES('689','87','中学教师','0','');
INSERT INTO phpyun_job_class VALUES('690','87','小学教师','0','');
INSERT INTO phpyun_job_class VALUES('691','87','幼教','0','');
INSERT INTO phpyun_job_class VALUES('692','87','院校教务管理人员','0','');
INSERT INTO phpyun_job_class VALUES('693','87','兼职教师','0','');
INSERT INTO phpyun_job_class VALUES('694','87','家教','0','');
INSERT INTO phpyun_job_class VALUES('695','87','职业技术教师','0','');
INSERT INTO phpyun_job_class VALUES('696','87','其他','0','');
INSERT INTO phpyun_job_class VALUES('697','88','培训督导','0','');
INSERT INTO phpyun_job_class VALUES('698','88','培训讲师','0','');
INSERT INTO phpyun_job_class VALUES('699','88','培训策划','0','');
INSERT INTO phpyun_job_class VALUES('700','88','培训产品开发','0','');
INSERT INTO phpyun_job_class VALUES('701','88','培训/课程顾问','0','');
INSERT INTO phpyun_job_class VALUES('702','88','培训助理','0','');
INSERT INTO phpyun_job_class VALUES('703','88','其他','0','');
INSERT INTO phpyun_job_class VALUES('704','89','科研管理人员','0','');
INSERT INTO phpyun_job_class VALUES('705','89','科研人员','0','');
INSERT INTO phpyun_job_class VALUES('707','90','餐饮/娱乐管理','0','');
INSERT INTO phpyun_job_class VALUES('708','90','餐饮/娱乐领班/部长','0','');
INSERT INTO phpyun_job_class VALUES('709','90','餐饮/娱乐服务员','0','');
INSERT INTO phpyun_job_class VALUES('710','90','传菜主管/传菜员','0','');
INSERT INTO phpyun_job_class VALUES('711','90','礼仪/迎宾','0','');
INSERT INTO phpyun_job_class VALUES('712','90','司仪','0','');
INSERT INTO phpyun_job_class VALUES('713','90','行政主厨/厨师长','0','');
INSERT INTO phpyun_job_class VALUES('714','90','厨师/面点师','0','');
INSERT INTO phpyun_job_class VALUES('715','90','调酒师/吧台员','0','');
INSERT INTO phpyun_job_class VALUES('716','90','茶艺师','0','');
INSERT INTO phpyun_job_class VALUES('717','90','其他','0','');
INSERT INTO phpyun_job_class VALUES('718','91','酒店/宾馆经理','0','');
INSERT INTO phpyun_job_class VALUES('719','91','酒店/宾馆营销','0','');
INSERT INTO phpyun_job_class VALUES('720','91','宴会管理','0','');
INSERT INTO phpyun_job_class VALUES('721','91','大堂经理','0','');
INSERT INTO phpyun_job_class VALUES('722','91','宾客服务经理','0','');
INSERT INTO phpyun_job_class VALUES('723','91','楼面经理','0','');
INSERT INTO phpyun_job_class VALUES('724','91','前厅接待','0','');
INSERT INTO phpyun_job_class VALUES('725','91','预定部主管','0','');
INSERT INTO phpyun_job_class VALUES('726','91','预定员','0','');
INSERT INTO phpyun_job_class VALUES('727','91','客房服务员/楼面服务员','0','');
INSERT INTO phpyun_job_class VALUES('728','91','机场代表','0','');
INSERT INTO phpyun_job_class VALUES('729','91','行李员','0','');
INSERT INTO phpyun_job_class VALUES('730','91','管家部经理/主管','0','');
INSERT INTO phpyun_job_class VALUES('731','91','清洁服务人员','0','');
INSERT INTO phpyun_job_class VALUES('732','91','健身房服务','0','');
INSERT INTO phpyun_job_class VALUES('733','91','旅游产品销售','0','');
INSERT INTO phpyun_job_class VALUES('734','91','导游/旅行顾问','0','');
INSERT INTO phpyun_job_class VALUES('735','91','行程管理/操作','0','');
INSERT INTO phpyun_job_class VALUES('736','91','票务/订房服务','0','');
INSERT INTO phpyun_job_class VALUES('737','91','签证专员','0','');
INSERT INTO phpyun_job_class VALUES('738','91','其他','0','');
INSERT INTO phpyun_job_class VALUES('739','92','美容顾问/化妆','0','');
INSERT INTO phpyun_job_class VALUES('740','92','彩妆培训师','0','');
INSERT INTO phpyun_job_class VALUES('741','92','专柜彩妆顾问(BA)','0','');
INSERT INTO phpyun_job_class VALUES('742','92','美容助理/见席美容师','0','');
INSERT INTO phpyun_job_class VALUES('743','92','瘦身顾问','0','');
INSERT INTO phpyun_job_class VALUES('744','92','发型师','0','');
INSERT INTO phpyun_job_class VALUES('745','92','发型助理/学徒','0','');
INSERT INTO phpyun_job_class VALUES('746','92','美甲师','0','');
INSERT INTO phpyun_job_class VALUES('747','92','按摩/足疗','0','');
INSERT INTO phpyun_job_class VALUES('748','92','健身顾问/教练','0','');
INSERT INTO phpyun_job_class VALUES('749','92','体育运动教练','0','');
INSERT INTO phpyun_job_class VALUES('750','92','救生员','0','');
INSERT INTO phpyun_job_class VALUES('751','92','瑜伽/舞蹈老师','0','');
INSERT INTO phpyun_job_class VALUES('752','92','宠物护理/美容','0','');
INSERT INTO phpyun_job_class VALUES('753','92','其他','0','');
INSERT INTO phpyun_job_class VALUES('754','93','店长/卖场经理/楼面管理','0','');
INSERT INTO phpyun_job_class VALUES('755','93','品类经理','0','');
INSERT INTO phpyun_job_class VALUES('756','93','店员/营业员','0','');
INSERT INTO phpyun_job_class VALUES('757','93','安防主管','0','');
INSERT INTO phpyun_job_class VALUES('758','93','防损员/内保','0','');
INSERT INTO phpyun_job_class VALUES('759','93','收银主管/收银员','0','');
INSERT INTO phpyun_job_class VALUES('760','93','理货员/陈列员/收货员','0','');
INSERT INTO phpyun_job_class VALUES('761','93','导购员','0','');
INSERT INTO phpyun_job_class VALUES('762','93','西点师/面包糕点加工','0','');
INSERT INTO phpyun_job_class VALUES('763','93','生鲜食品加工/处理','0','');
INSERT INTO phpyun_job_class VALUES('764','93','熟食加工','0','');
INSERT INTO phpyun_job_class VALUES('765','93','兼职店员','0','');
INSERT INTO phpyun_job_class VALUES('766','93','其他','0','');
INSERT INTO phpyun_job_class VALUES('767','94','飞机机长/副机长','0','');
INSERT INTO phpyun_job_class VALUES('768','94','空乘人员','0','');
INSERT INTO phpyun_job_class VALUES('769','94','地勤人员','0','');
INSERT INTO phpyun_job_class VALUES('770','94','列车/地铁车长','0','');
INSERT INTO phpyun_job_class VALUES('771','94','列车/地铁司机','0','');
INSERT INTO phpyun_job_class VALUES('772','94','船长/副船长','0','');
INSERT INTO phpyun_job_class VALUES('773','94','船员','0','');
INSERT INTO phpyun_job_class VALUES('774','94','乘务员','0','');
INSERT INTO phpyun_job_class VALUES('775','94','司机','0','');
INSERT INTO phpyun_job_class VALUES('776','94','其他','0','');
INSERT INTO phpyun_job_class VALUES('777','95','保安经理','0','');
INSERT INTO phpyun_job_class VALUES('778','95','保安人员','0','');
INSERT INTO phpyun_job_class VALUES('779','95','保镖','0','');
INSERT INTO phpyun_job_class VALUES('780','95','寻呼员/话务员','0','');
INSERT INTO phpyun_job_class VALUES('781','95','搬运工','0','');
INSERT INTO phpyun_job_class VALUES('782','95','清洁工','0','');
INSERT INTO phpyun_job_class VALUES('783','95','家政服务/保姆','0','');
INSERT INTO phpyun_job_class VALUES('784','95','其他','0','');
INSERT INTO phpyun_job_class VALUES('785','96','公务员','0','');
INSERT INTO phpyun_job_class VALUES('786','97','英语翻译','0','');
INSERT INTO phpyun_job_class VALUES('787','97','日语翻译','0','');
INSERT INTO phpyun_job_class VALUES('788','97','德语翻译','0','');
INSERT INTO phpyun_job_class VALUES('789','97','法语翻译','0','');
INSERT INTO phpyun_job_class VALUES('790','97','俄语翻译','0','');
INSERT INTO phpyun_job_class VALUES('791','97','意大利语翻译','0','');
INSERT INTO phpyun_job_class VALUES('792','97','西班牙语翻译','0','');
INSERT INTO phpyun_job_class VALUES('793','97','葡萄牙语翻译','0','');
INSERT INTO phpyun_job_class VALUES('794','97','阿拉伯语翻译','0','');
INSERT INTO phpyun_job_class VALUES('795','97','韩语/朝鲜语翻译','0','');
INSERT INTO phpyun_job_class VALUES('796','97','泰语翻译','0','');
INSERT INTO phpyun_job_class VALUES('797','97','中国方言翻译','0','');
INSERT INTO phpyun_job_class VALUES('798','97','其他语种翻译','0','');
INSERT INTO phpyun_job_class VALUES('821','98','研究生','0','');
INSERT INTO phpyun_job_class VALUES('800','99','储备干部','0','');
INSERT INTO phpyun_job_class VALUES('801','99','培训生','0','');
INSERT INTO phpyun_job_class VALUES('802','99','实习生','0','');
INSERT INTO phpyun_job_class VALUES('803','100','兼职','0','');
INSERT INTO phpyun_job_class VALUES('804','101','驯兽师/助理驯兽师','0','');
INSERT INTO phpyun_job_class VALUES('805','101','志愿者','0','');
INSERT INTO phpyun_job_class VALUES('806','101','其他 ','0','');
INSERT INTO phpyun_job_class VALUES('807','102','环保工程师','0','');
INSERT INTO phpyun_job_class VALUES('808','102','环境影响评价工程师','0','');
INSERT INTO phpyun_job_class VALUES('809','102','环保检测','0','');
INSERT INTO phpyun_job_class VALUES('810','102','水质检测员','0','');
INSERT INTO phpyun_job_class VALUES('811','102','污水处理工程师','0','');
INSERT INTO phpyun_job_class VALUES('812','102','固废工程师','0','');
INSERT INTO phpyun_job_class VALUES('813','102','其它','0','');
INSERT INTO phpyun_job_class VALUES('814','103','养殖部主管','0','');
INSERT INTO phpyun_job_class VALUES('815','103','场长(农/林/牧/渔业)','0','');
INSERT INTO phpyun_job_class VALUES('816','103','农艺师','0','');
INSERT INTO phpyun_job_class VALUES('817','103','畜牧师','0','');
INSERT INTO phpyun_job_class VALUES('818','103','饲养员','0','');
INSERT INTO phpyun_job_class VALUES('819','103','动物营养/饲料研发','0','');
INSERT INTO phpyun_job_class VALUES('820','103','其他','0','');
INSERT INTO phpyun_job_class VALUES('822','98','大学/大专应届毕业生','0','');
INSERT INTO phpyun_job_class VALUES('823','98','中专/职校生','0','');
INSERT INTO phpyun_job_class VALUES('824','98','其他','0','');
INSERT INTO phpyun_job_class VALUES('826','52','集成电路IC设计/应用工程师','0','');
INSERT INTO phpyun_job_class VALUES('827','52','电子技术研发工程师','0','');
INSERT INTO phpyun_job_class VALUES('828','52','射频工程师','0','');
INSERT INTO phpyun_job_class VALUES('829','52','电子/电器维修工程师/技师','0','');
INSERT INTO phpyun_job_class VALUES('830','52','变压器与磁电工程师','0','');
INSERT INTO phpyun_job_class VALUES('831','52','其他','0','');
INSERT INTO phpyun_job_class VALUES('836','0','化工/能源','3','');
INSERT INTO phpyun_job_class VALUES('835','0','贸易/百货','1','');
INSERT INTO phpyun_job_class VALUES('850','847','电路工程师','0','');
INSERT INTO phpyun_job_class VALUES('837','0','机械/设备/技工','2','');
INSERT INTO phpyun_job_class VALUES('839','0','通信/电子','2','');
INSERT INTO phpyun_job_class VALUES('847','836','电气/能源/动力/矿产','0','');
INSERT INTO phpyun_job_class VALUES('848','847','核力/火力工程师','0','');
INSERT INTO phpyun_job_class VALUES('849','847','空调/热能工程师','0','');
INSERT INTO phpyun_job_class VALUES('844','835','服装/纺织/皮革','0','');
INSERT INTO phpyun_job_class VALUES('845','835','百货/连锁/零售','0','');
INSERT INTO phpyun_job_class VALUES('851','847','电力工程师','0','');
INSERT INTO phpyun_job_class VALUES('852','847','电气维修技术员','0','');
INSERT INTO phpyun_job_class VALUES('853','847','制冷/暖通工程师','0','');
INSERT INTO phpyun_job_class VALUES('854','847','强电维修技工','0','');
INSERT INTO phpyun_job_class VALUES('856','847','变压/变频/磁电','0','');
INSERT INTO phpyun_job_class VALUES('857','847','矿产勘探/地质勘测工程师','0','');
INSERT INTO phpyun_job_class VALUES('858','847','煤矿/煤炭/煤化','0','');
INSERT INTO phpyun_job_class VALUES('859','847','电气工程师','0','');
INSERT INTO phpyun_job_class VALUES('860','847','光源与照明工程','0','');
INSERT INTO phpyun_job_class VALUES('861','847','水利/水电工程师','0','');
INSERT INTO phpyun_job_class VALUES('862','847','风电工程师','0','');
INSERT INTO phpyun_job_class VALUES('863','847','光伏系统工程师','0','');
INSERT INTO phpyun_job_class VALUES('864','847','燃气轮机工程师','0','');
INSERT INTO phpyun_job_class VALUES('865','71','环保工程师','0','');
INSERT INTO phpyun_job_class VALUES('866','71','污水处理工程师','0','');
INSERT INTO phpyun_job_class VALUES('867','71','环境影响评价工程师','0','');
INSERT INTO phpyun_job_class VALUES('868','71','环保检测','0','');
INSERT INTO phpyun_job_class VALUES('869','71','水质检测员','0','');
INSERT INTO phpyun_job_class VALUES('870','71','固废工程师','0','');
INSERT INTO phpyun_job_class VALUES('871','835','贸易','0','');
INSERT INTO phpyun_job_class VALUES('872','871','外贸/进出口经理/主管','0','');
INSERT INTO phpyun_job_class VALUES('873','871','外贸/进出口专员/助理','0','');
INSERT INTO phpyun_job_class VALUES('874','871','外贸/进出口专员/助理','0','');
INSERT INTO phpyun_job_class VALUES('875','871','国内贸易经理/主管','0','');
INSERT INTO phpyun_job_class VALUES('876','871','国内贸易专员/助理','0','');
INSERT INTO phpyun_job_class VALUES('877','871','业务跟单经理/主管','0','');
INSERT INTO phpyun_job_class VALUES('878','871','业务跟单专员/助理','0','');
INSERT INTO phpyun_job_class VALUES('879','871','单证员','0','');
INSERT INTO phpyun_job_class VALUES('880','871','报关/报检员','0','');
INSERT INTO phpyun_job_class VALUES('881','844','服装/纺织设计总监','0','');
INSERT INTO phpyun_job_class VALUES('882','844','服装/纺织设计','0','');
INSERT INTO phpyun_job_class VALUES('883','844','服装/纺织/皮革工艺师','0','');
INSERT INTO phpyun_job_class VALUES('884','844','面料辅料开发/采购','0','');
INSERT INTO phpyun_job_class VALUES('885','844','服装/纺织/皮革跟单','0','');
INSERT INTO phpyun_job_class VALUES('886','844','质量管理/验货员(QA/QC)','0','');
INSERT INTO phpyun_job_class VALUES('887','844','板房/楦头/底格出格师','0','');
INSERT INTO phpyun_job_class VALUES('888','844','打样/制版','0','');
INSERT INTO phpyun_job_class VALUES('889','844','电脑放码员','4','');
INSERT INTO phpyun_job_class VALUES('890','844','纸样师/车板工4','4','');
INSERT INTO phpyun_job_class VALUES('891','844','裁床','0','');
INSERT INTO phpyun_job_class VALUES('892','845','店长/卖场经理/楼面管理','0','');
INSERT INTO phpyun_job_class VALUES('893','845','品类经理','0','');
INSERT INTO phpyun_job_class VALUES('894','845','店员/营业员','0','');
INSERT INTO phpyun_job_class VALUES('895','845','防损员/内保','0','');
INSERT INTO phpyun_job_class VALUES('896','845','收银主管/收银员','0','');
INSERT INTO phpyun_job_class VALUES('897','845','理货员/陈列员/收货员','0','');
INSERT INTO phpyun_job_class VALUES('898','845','导购员','0','');
INSERT INTO phpyun_job_class VALUES('899','845','西点师/面包糕点加工','0','');
INSERT INTO phpyun_job_class VALUES('900','845','生鲜食品加工/处理','0','');
INSERT INTO phpyun_job_class VALUES('901','845','熟食加工','0','');
INSERT INTO phpyun_job_class VALUES('902','845','兼职店员','0','');
INSERT INTO phpyun_job_class VALUES('903','845','店长助理','0','');
INSERT INTO phpyun_job_class VALUES('904','845','防损经理/主管','0','');
INSERT INTO phpyun_job_class VALUES('905','845','安防主管','0','');
INSERT INTO phpyun_job_class VALUES('906','837','机械/设备','0','');
INSERT INTO phpyun_job_class VALUES('907','837','技工','0','');
INSERT INTO phpyun_job_class VALUES('908','906','模具工程师','0','');
INSERT INTO phpyun_job_class VALUES('909','906','机械工程师','0','');
INSERT INTO phpyun_job_class VALUES('910','906','机电工程师','0','');
INSERT INTO phpyun_job_class VALUES('911','906','铸造/锻造','0','');
INSERT INTO phpyun_job_class VALUES('912','906','冲压工程师/技师','0','');
INSERT INTO phpyun_job_class VALUES('913','906','注塑工程师/技师','0','');
INSERT INTO phpyun_job_class VALUES('914','906','CNC工程师','0','');
INSERT INTO phpyun_job_class VALUES('915','906','轨道交通工程师/技术员','0','');
INSERT INTO phpyun_job_class VALUES('916','906','锅炉工程师/技师','0','');
INSERT INTO phpyun_job_class VALUES('917','906','船舶工程师','0','');
INSERT INTO phpyun_job_class VALUES('918','906','飞行器设计与制造','0','');
INSERT INTO phpyun_job_class VALUES('919','906','夹具','0','');
INSERT INTO phpyun_job_class VALUES('920','906','工程/机械绘图员','0','');
INSERT INTO phpyun_job_class VALUES('921','906','结构工程师','0','');
INSERT INTO phpyun_job_class VALUES('922','906','设备工程师','0','');
INSERT INTO phpyun_job_class VALUES('923','906','焊接','0','');
INSERT INTO phpyun_job_class VALUES('924','906','机械/设备维修','0','');
INSERT INTO phpyun_job_class VALUES('925','906','机床/车床','0','');
INSERT INTO phpyun_job_class VALUES('926','906','技术研发经理/主管 ','0','');
INSERT INTO phpyun_job_class VALUES('927','906','技术研发工程师','0','');
INSERT INTO phpyun_job_class VALUES('928','906','产品工艺/制程工程师','0','');
INSERT INTO phpyun_job_class VALUES('929','906','产品规划工程师 ','0','');
INSERT INTO phpyun_job_class VALUES('930','906','实验室负责人/工程师','0','');
INSERT INTO phpyun_job_class VALUES('931','906','工程/设备经理/主管','0','');
INSERT INTO phpyun_job_class VALUES('932','906','工业工程师','0','');
INSERT INTO phpyun_job_class VALUES('933','906','材料工程师','0','');
INSERT INTO phpyun_job_class VALUES('934','906','维修经理/主管','0','');
INSERT INTO phpyun_job_class VALUES('935','906','维修工程师','0','');
INSERT INTO phpyun_job_class VALUES('936','906','装配工程师/技师','0','');
INSERT INTO phpyun_job_class VALUES('937','907','普工','0','');
INSERT INTO phpyun_job_class VALUES('938','907','钣金工/机修工/冲压工','0','');
INSERT INTO phpyun_job_class VALUES('939','907','电焊工/铆焊工/钳工','0','');
INSERT INTO phpyun_job_class VALUES('940','907','车工/磨工/铣工锣工','0','');
INSERT INTO phpyun_job_class VALUES('941','907','切割技工','0','');
INSERT INTO phpyun_job_class VALUES('942','907','模具工','0','');
INSERT INTO phpyun_job_class VALUES('943','907','铲车/叉车工','0','');
INSERT INTO phpyun_job_class VALUES('944','907','空调工/电梯工/锅炉工','0','');
INSERT INTO phpyun_job_class VALUES('945','907','电工/水工/木工/油漆工','0','');
INSERT INTO phpyun_job_class VALUES('946','907','片皮工/铲皮工','0','');
INSERT INTO phpyun_job_class VALUES('947','907','裁缝印纺熨烫','0','');
INSERT INTO phpyun_job_class VALUES('948','907','万能工','0','');
INSERT INTO phpyun_job_class VALUES('949','907','油边工/台面工','0','');
INSERT INTO phpyun_job_class VALUES('950','907','技工','0','');
INSERT INTO phpyun_job_class VALUES('951','907','汽车修理工','0','');
INSERT INTO phpyun_job_class VALUES('952','907','操作工','3','');

INSERT INTO phpyun_look_job VALUES('1','2','1','1','1423202453','0','0');

INSERT INTO phpyun_look_resume VALUES('1','2','1','1','1425185929','0','0');
INSERT INTO phpyun_look_resume VALUES('2','0','1','0','1425182932','0','1');
INSERT INTO phpyun_look_resume VALUES('3','0','1','2','1425038412','0','1');

INSERT INTO phpyun_member VALUES('1','wangsircompany','1052b70297be09094c7c1faa8fe1aa6b','820591677@qq.com','15920258490','127.0.0.1','1423041056','127.0.0.1','1425442425','2','12','098969','','0','','1','0','0','','','','','','','0','','1','0');
INSERT INTO phpyun_member VALUES('2','wangsirperson','a6eddf9d85e774b625dfbe7b2d56a1c8','820591677@qq.com','15920258490','127.0.0.1','1423041139','127.0.0.1','1423294581','1','4','38583d','','0','','1','0','0','','','','','','','0','','1','0');

INSERT INTO phpyun_member_log VALUES('1','2','7','0','1','修改基本信息','127.0.0.1','1423041191');
INSERT INTO phpyun_member_log VALUES('2','1','0','0','2','下单成功,订单ID142319101842772','127.0.0.1','1423191018');
INSERT INTO phpyun_member_log VALUES('3','1','0','0','2','修改订单付款类型','127.0.0.1','1423191024');
INSERT INTO phpyun_member_log VALUES('4','1','7','0','2','修改企业信息','127.0.0.1','1423191134');
INSERT INTO phpyun_member_log VALUES('5','1','0','0','2','设置企业地图','127.0.0.1','1423191170');
INSERT INTO phpyun_member_log VALUES('6','1','0','0','2','添加企业新闻','127.0.0.1','1423191185');
INSERT INTO phpyun_member_log VALUES('7','1','0','0','2','添加企业产品','127.0.0.1','1423191225');
INSERT INTO phpyun_member_log VALUES('8','1','0','0','2','添加环境展示','127.0.0.1','1423191241');
INSERT INTO phpyun_member_log VALUES('9','1','0','0','2','上传企业横幅','127.0.0.1','1423191266');
INSERT INTO phpyun_member_log VALUES('10','1','1','1','2','添加职位《设计》','127.0.0.1','1423191399');
INSERT INTO phpyun_member_log VALUES('11','1','0','0','2','修改职位发布状态','127.0.0.1','1423191406');
INSERT INTO phpyun_member_log VALUES('12','2','0','0','1','添加搜索器','127.0.0.1','1423191851');
INSERT INTO phpyun_member_log VALUES('13','2','2','1','1','创建一份简历','127.0.0.1','1423191973');
INSERT INTO phpyun_member_log VALUES('14','2','0','0','1','关注了才纵企业管理有限公司','127.0.0.1','1423192149');
INSERT INTO phpyun_member_log VALUES('15','2','0','0','1','取消了对才纵企业管理有限公司关注','127.0.0.1','1423192152');
INSERT INTO phpyun_member_log VALUES('16','2','0','0','1','关注了才纵企业管理有限公司','127.0.0.1','1423192153');
INSERT INTO phpyun_member_log VALUES('17','1','0','0','2','设置企业模版','127.0.0.1','1423201401');
INSERT INTO phpyun_member_log VALUES('18','1','0','0','2','设置企业模版','127.0.0.1','1423201432');
INSERT INTO phpyun_member_log VALUES('19','1','3','0','2','下载了简历：王工','127.0.0.1','1423201575');
INSERT INTO phpyun_member_log VALUES('20','1','4','0','2','邀请了人才：王工','127.0.0.1','1423201612');
INSERT INTO phpyun_member_log VALUES('21','1','0','0','2','备注人才','127.0.0.1','1423201629');
INSERT INTO phpyun_member_log VALUES('22','1','0','0','2','购买职位自动刷新功能','127.0.0.1','1423201842');
INSERT INTO phpyun_member_log VALUES('23','1','0','0','2','设置刷新职位功能','127.0.0.1','1423201849');
INSERT INTO phpyun_member_log VALUES('24','1','0','0','2','修改职位发布状态','127.0.0.1','1423201873');
INSERT INTO phpyun_member_log VALUES('25','1','0','0','2','批量阅读申请职位的人才','127.0.0.1','1423292579');
INSERT INTO phpyun_member_log VALUES('26','1','4','0','2','邀请了人才：','127.0.0.1','1425007150');
INSERT INTO phpyun_member_log VALUES('27','1','0','0','2','添加环境展示','127.0.0.1','1425021563');
INSERT INTO phpyun_member_log VALUES('28','1','0','0','2','删除企业环境展示','127.0.0.1','1425021580');
INSERT INTO phpyun_member_log VALUES('29','1','0','0','2','添加环境展示','127.0.0.1','1425021614');
INSERT INTO phpyun_member_log VALUES('30','1','0','0','2','添加环境展示','127.0.0.1','1425021767');
INSERT INTO phpyun_member_log VALUES('31','1','0','0','2','删除企业环境展示','127.0.0.1','1425021780');
INSERT INTO phpyun_member_log VALUES('32','1','0','0','2','添加环境展示','127.0.0.1','1425022006');
INSERT INTO phpyun_member_log VALUES('33','1','0','0','2','添加环境展示','127.0.0.1','1425030787');
INSERT INTO phpyun_member_log VALUES('34','1','0','0','2','添加环境展示','127.0.0.1','1425032603');
INSERT INTO phpyun_member_log VALUES('35','1','0','0','2','添加环境展示','127.0.0.1','1425032778');
INSERT INTO phpyun_member_log VALUES('36','1','0','0','2','添加环境展示','127.0.0.1','1425033040');
INSERT INTO phpyun_member_log VALUES('37','1','0','0','2','添加环境展示','127.0.0.1','1425033175');
INSERT INTO phpyun_member_log VALUES('38','1','0','0','2','添加环境展示','127.0.0.1','1425033775');
INSERT INTO phpyun_member_log VALUES('39','1','0','0','2','添加环境展示','127.0.0.1','1425034081');
INSERT INTO phpyun_member_log VALUES('40','1','0','0','2','添加环境展示','127.0.0.1','1425038406');
INSERT INTO phpyun_member_log VALUES('41','1','0','0','2','添加环境展示','127.0.0.1','1425042637');
INSERT INTO phpyun_member_log VALUES('42','1','0','0','2','添加环境展示','127.0.0.1','1425042773');
INSERT INTO phpyun_member_log VALUES('43','1','0','0','2','添加环境展示','127.0.0.1','1425043058');
INSERT INTO phpyun_member_log VALUES('44','1','0','0','2','添加环境展示','127.0.0.1','1425043156');
INSERT INTO phpyun_member_log VALUES('45','1','0','0','2','上传简历','127.0.0.1','1425043564');
INSERT INTO phpyun_member_log VALUES('46','1','0','0','2','上传简历','127.0.0.1','1425043684');
INSERT INTO phpyun_member_log VALUES('47','1','0','0','2','上传简历','127.0.0.1','1425043852');
INSERT INTO phpyun_member_log VALUES('48','1','0','0','2','上传简历','127.0.0.1','1425043933');
INSERT INTO phpyun_member_log VALUES('49','1','0','0','2','上传简历','127.0.0.1','1425043986');
INSERT INTO phpyun_member_log VALUES('50','1','3','3','2','删除收藏简历人才','127.0.0.1','1425179437');
INSERT INTO phpyun_member_log VALUES('51','1','0','0','2','删除已浏览简历记录(ID:3)','127.0.0.1','1425179456');
INSERT INTO phpyun_member_log VALUES('52','1','0','0','2','删除已浏览简历记录(ID:2)','127.0.0.1','1425179460');
INSERT INTO phpyun_member_log VALUES('53','1','3','3','2','删除收藏简历人才','127.0.0.1','1425179870');
INSERT INTO phpyun_member_log VALUES('54','1','3','0','2','下载了简历：','127.0.0.1','1425180497');
INSERT INTO phpyun_member_log VALUES('55','1','0','0','2','上传简历','127.0.0.1','1425180745');
INSERT INTO phpyun_member_log VALUES('56','1','3','3','2','删除已下载简历人才','127.0.0.1','1425182023');
INSERT INTO phpyun_member_log VALUES('57','1','0','0','2','删除企业环境展示','127.0.0.1','1425182442');
INSERT INTO phpyun_member_log VALUES('58','1','0','0','2','删除企业环境展示','127.0.0.1','1425182467');
INSERT INTO phpyun_member_log VALUES('59','1','0','0','2','删除企业环境展示','127.0.0.1','1425183043');
INSERT INTO phpyun_member_log VALUES('60','1','0','0','2','删除上传的简历','127.0.0.1','1425183075');
INSERT INTO phpyun_member_log VALUES('61','1','0','0','2','删除企业环境展示','127.0.0.1','1425183164');
INSERT INTO phpyun_member_log VALUES('62','1','0','0','2','删除企业环境展示','127.0.0.1','1425183171');
INSERT INTO phpyun_member_log VALUES('63','1','0','0','2','删除企业环境展示','127.0.0.1','1425183175');
INSERT INTO phpyun_member_log VALUES('64','1','0','0','2','删除企业环境展示','127.0.0.1','1425183180');

INSERT INTO phpyun_member_statis VALUES('2','120','0.00','1','0','0','0','0');




INSERT INTO phpyun_navigation VALUES('1','1','首页','index.php','1','1','0','1','index.php','','','1','','');
INSERT INTO phpyun_navigation VALUES('2','1','找工作','index.php?m=com','2','1','0','1','m_com.html','','','1','','');
INSERT INTO phpyun_navigation VALUES('3','1','招人才','index.php?m=user','3','1','0','1','m_user.html','','','','','');
INSERT INTO phpyun_navigation VALUES('4','1','职场资讯','index.php?m=news','7','1','0','1','m_news.html','','','0','','');
INSERT INTO phpyun_navigation VALUES('5','1','微招聘','index.php?m=once','6','1','0','1','m_once.html','','','','','');
INSERT INTO phpyun_navigation VALUES('6','2','注册协议','about/service.html','98','1','1','1','','','','','','');
INSERT INTO phpyun_navigation VALUES('7','2','关于我们','about/about.html','54','1','1','1','','','','','','');
INSERT INTO phpyun_navigation VALUES('8','3','关于我们','about/about.html','99','1','0','1','','','','0','','');
INSERT INTO phpyun_navigation VALUES('9','3','首页','index.html','55','1','0','1','','','','','','');
INSERT INTO phpyun_navigation VALUES('17','5','地图','index.php?m=map','10','1','1','1','m_map.html','','','0','','');
INSERT INTO phpyun_navigation VALUES('11','1','积分商城','index.php?m=redeem','9','1','0','1','m_redeem.html','','new','0','','');
INSERT INTO phpyun_navigation VALUES('15','1','招聘会','index.php?m=zph','7','1','0','1','m_zph.html','','','0','','');
INSERT INTO phpyun_navigation VALUES('53','2','网站地图','sitemap.html','10','1','0','1','sitemap.html','#E53333','','0','','');
INSERT INTO phpyun_navigation VALUES('23','4','职场问答','ask/index.php','15','1','0','1','','','','','','');
INSERT INTO phpyun_navigation VALUES('24','4','人才网首页','index.php','16','1','0','1','','','','','','');
INSERT INTO phpyun_navigation VALUES('32','5','问答','ask/index.php','0','1','1','1','','','','0','','');
INSERT INTO phpyun_navigation VALUES('26','1','微简历','index.php?m=tiny','6','1','0','1','m_tiny.html','','','','','');
INSERT INTO phpyun_navigation VALUES('34','2','法律声明','about/phpyun.html','3','1','0','1','','','','','','');
INSERT INTO phpyun_navigation VALUES('52','2','广告投放','about/gg.html','5','1','1','1','about/gg.html','','','0','24','');
INSERT INTO phpyun_navigation VALUES('54','2','收费标准','about/charge.html','5','1','0','1','about/charge.html','','','0','23','');
INSERT INTO phpyun_navigation VALUES('55','2','客服中心','about/kf.html','5','1','0','1','about/kf.html','','','0','22','');
INSERT INTO phpyun_navigation VALUES('56','1','工具箱','index.php?m=hr','8','1','0','1','','','new','0','','');
INSERT INTO phpyun_navigation VALUES('60','12','触屏版','index.php?c=wap','1','1','0','2','c_wap.html','','','0','','');
INSERT INTO phpyun_navigation VALUES('63','12','微信','index.php?c=weixin','3','1','0','2','c_weixin.html','','','0','','');
INSERT INTO phpyun_navigation VALUES('64','1','企业黄页','index.php?m=firm','7','1','0','1','m_firm.html','','','0','','');

INSERT INTO phpyun_navigation_type VALUES('1','头部导航');
INSERT INTO phpyun_navigation_type VALUES('2','底部导航');
INSERT INTO phpyun_navigation_type VALUES('3','企业底部导航');
INSERT INTO phpyun_navigation_type VALUES('5','头部导航（右侧）');
INSERT INTO phpyun_navigation_type VALUES('12','底部客户端导航');

INSERT INTO phpyun_navmap VALUES('1','0','找工作','index.php?m=com','99','1','0','1','m_com.html');
INSERT INTO phpyun_navmap VALUES('2','0','找人才','index.php?m=user','98','1','0','1','m_user.html');
INSERT INTO phpyun_navmap VALUES('3','0','资讯','new.html','97','1','0','1','m_news.html ');
INSERT INTO phpyun_navmap VALUES('4','1','地图招聘','index.php?m=map','91','1','0','1','m_map.html');
INSERT INTO phpyun_navmap VALUES('5','1','微招聘','index.php?m=once','92','1','0','1','m_once.html');
INSERT INTO phpyun_navmap VALUES('6','1','企业黄页','index.php?m=firm','93','1','0','1','m_firm.html');
INSERT INTO phpyun_navmap VALUES('7','2','微简历','index.php?m=tiny','81','1','0','1','m_tiny.html');
INSERT INTO phpyun_navmap VALUES('8','2','工具箱','index.php?m=hr','82','1','0','1','m_hr.html');
INSERT INTO phpyun_navmap VALUES('9','3','问答','ask/index.php','71','1','0','1','');
INSERT INTO phpyun_navmap VALUES('10','0','本站特色','','9','1','1','2','');
INSERT INTO phpyun_navmap VALUES('12','10','积分兑换','index.php?m=redeem','11','1','0','1','m_redeem.html');



INSERT INTO phpyun_news_group VALUES('1','0','职业指导','20','0','0','1');
INSERT INTO phpyun_news_group VALUES('2','0','案例解析','0','1','0','1');
INSERT INTO phpyun_news_group VALUES('3','0','管理百科','10','1','0','1');
INSERT INTO phpyun_news_group VALUES('4','0','高端访谈','0','1','0','1');
INSERT INTO phpyun_news_group VALUES('5','0','劳动法规','0','0','0','1');
INSERT INTO phpyun_news_group VALUES('6','0','简历指导','0','0','0','1');
INSERT INTO phpyun_news_group VALUES('7','0','现场招聘会','1','0','0','1');
INSERT INTO phpyun_news_group VALUES('8','0','求职新闻','3','0','0','1');
INSERT INTO phpyun_news_group VALUES('9','0','面试秘籍','3','0','0','0');
INSERT INTO phpyun_news_group VALUES('10','0','薪酬行情','2','0','0','0');
INSERT INTO phpyun_news_group VALUES('17','0','娱乐节目','0','0','0','0');


INSERT INTO phpyun_outside VALUES('5','最新企业','company','10','10','uid desc','5','&lt;ul&gt;\r\n    &lt;!--循环开始--&gt;\r\n    &lt;loop&gt;\r\n        &lt;li&gt;\r\n公司名称 代码：{companyname} &lt;br/&gt; \r\n链接 代码：{url} \r\n&lt;br/&gt;行业 代码：{hy} \r\n&lt;br/&gt;行业链接 代码：{hy_url} \r\n&lt;br/&gt;公司性质 代码：{pr}&lt;br/&gt;\r\n 企业地址 代码：{city} \r\n&lt;br/&gt;企业规模 代码：{mun} \r\n&lt;br/&gt;企业地址 代码：{address} \r\n&lt;br/&gt;固定电话 代码：{linkphone}&lt;br/&gt;\r\n 联系邮箱 代码：{linkmail} \r\n&lt;br/&gt;创办时间 代码：{sdate} \r\n&lt;br/&gt;注册资金 代码：{money}&lt;br/&gt;\r\n 邮政编码 代码：{zip} \r\n&lt;br/&gt;联系人 代码：{linkman} \r\n&lt;br/&gt;职位数 代码：{job_num} \r\n&lt;br/&gt;联系QQ 代码：{linkqq} \r\n&lt;br/&gt;联系电话 代码：{linktel}&lt;br/&gt;\r\n 企业网址 代码：{website} &lt;br/&gt;\r\n企业LOGO 代码：{logo}&lt;br/&gt;\r\n&lt;/li&gt;\r\n    &lt;/loop&gt;\r\n    &lt;!--循环结束--&gt;\r\n&lt;/ul&gt;','0','1414208771','2','Y-m-d','');
INSERT INTO phpyun_outside VALUES('4','最新简历','resume','20','4','hits desc','5','&lt;ul&gt;\r\n    &lt;!- -循环开始- -&gt;\r\n    &lt;loop&gt;\r\n        &lt;li&gt;\r\n\r\n简历名称 代码：{resumename} &lt;br/&gt;\r\n姓名 代码：{name} \r\n&lt;br/&gt;链接 代码：{url} \r\n&lt;br/&gt;年龄 代码：{birthday}\r\n&lt;br/&gt; 学历 代码：{edu}\r\n&lt;br/&gt; 更新时间 代码：{lastedit} \r\n&lt;br/&gt;浏览次数 代码：{hits} \r\n&lt;br/&gt;大头像 代码：{big_pic} \r\n&lt;br/&gt;小头像 代码：{small_pic} \r\n&lt;br/&gt;EMAIL 代码：{email} \r\n&lt;br/&gt;电话 代码：{tel} \r\n&lt;br/&gt;手机 代码：{moblie}\r\n&lt;br/&gt; 期望从事行业 代码：{hy} \r\n&lt;br/&gt;期望从事行业链接 代码：{hyurl} \r\n&lt;br/&gt;期望从事职位 代码：{job_classid} \r\n&lt;br/&gt;到岗时间 代码：{report} \r\n&lt;br/&gt;期望薪水 代码：{salary} \r\n&lt;br/&gt;期望工作性质 代码：{type} \r\n&lt;br/&gt;期望工作地点(江苏-南京) 代码：{gz_city} \r\n&lt;br/&gt;户籍所在地(江苏-南京) 代码：{domicile} \r\n&lt;br/&gt;现居住地(江苏-南京) 代码：{living} \r\n&lt;br/&gt;工作经验 代码：{exp} \r\n&lt;br/&gt;详细地址 代码：{address} \r\n&lt;br/&gt;个人简介 代码：{description} \r\n&lt;br/&gt;身份证号码 代码：{idcard} \r\n&lt;br/&gt;个人主页/博客 代码：{homepage}\r\n&lt;/li&gt;\r\n    &lt;/loop&gt;\r\n    &lt;!- -循环结束- -&gt;\r\n&lt;/ul&gt;','0','1411361573','1','Y-m-d','');
INSERT INTO phpyun_outside VALUES('6','职位调用','job','10','10','id desc','5','&lt;ul&gt;\r\n    &lt;!--循环开始--&gt;\r\n    &lt;loop&gt;\r\n        &lt;li&gt;\r\n职位名称 代码：{jobname} &lt;br/&gt;\r\n公司名称 代码：{companyname}  &lt;br/&gt;\r\n职位链接 代码：{url}  &lt;br/&gt;\r\n公司链接 代码：{com_url}  &lt;br/&gt;\r\n从事行业 代码：{hy}  &lt;br/&gt;\r\n行业链接 代码：{hy_url}  &lt;br/&gt;\r\n招聘人数 代码：{num}  &lt;br/&gt;\r\n职位类型 代码：{jobtype}  &lt;br/&gt;\r\n学历要求 代码：{edu}  &lt;br/&gt;\r\n年龄要求 代码：{age}  &lt;br/&gt;\r\n到岗时间 代码：{report}  &lt;br/&gt;\r\n工作经验 代码：{exp}  &lt;br/&gt;\r\n语言要求 代码：{lang}  &lt;br/&gt;\r\n提供月薪 代码：{salary}  &lt;br/&gt;\r\n福利待遇 代码：{welfare}  &lt;br/&gt;\r\n有效日期 代码：{time}  &lt;br/&gt;\r\n工作地点 代码：{city} &lt;br/&gt;\r\n&lt;/li&gt;\r\n    &lt;/loop&gt;\r\n    &lt;!--循环结束--&gt;\r\n&lt;/ul&gt;','0','1398735558','1','Y-m-d H:i','');
INSERT INTO phpyun_outside VALUES('7','招聘会测试','zph','10','10','id desc','5','&lt;ul&gt;\r\n    &lt;!--循环开始--&gt;\r\n    &lt;loop&gt;\r\n        &lt;li&gt;\r\n&lt;a href=&quot;{url}&quot; {target}&gt;招聘会标题&lt;/a&gt; 代码：{title} &lt;br/&gt;\r\n链接 代码：{url} &lt;br/&gt;\r\n主办方 代码：{organizers} &lt;br/&gt;\r\n举办时间 代码：{time} &lt;br/&gt;\r\n举办会场 代码：{address} &lt;br/&gt;\r\n咨询电话 代码：{phone} &lt;br/&gt;\r\n联系人 代码：{linkman} &lt;br/&gt;\r\n网址 代码：{website} &lt;br/&gt;\r\n招聘会LOGO 代码：{logo} &lt;br/&gt;\r\n参与企业数 代码：{com_num}\r\n&lt;/li&gt;\r\n    &lt;/loop&gt;\r\n    &lt;!--循环结束--&gt;\r\n&lt;/ul&gt;','0','1398735559','1','Y-m-d','');
INSERT INTO phpyun_outside VALUES('8','新闻测试','news','10','10','a.hits desc','5','&lt;ul&gt;\r\n    &lt;!--循环开始--&gt;\r\n    &lt;loop&gt;\r\n        &lt;li&gt;\r\n新闻标题 代码：{title} &lt;br/&gt;\r\n链接 代码：{url} &lt;br/&gt;\r\n关键字 代码：{keyword} &lt;br/&gt;\r\n作者 代码：{author} &lt;br/&gt;\r\n发布时间 代码：{time} &lt;br/&gt;\r\n点击率 代码：{hits} &lt;br/&gt;\r\n描述 代码：{description} &lt;br/&gt;\r\n缩略图 代码：{thumb} &lt;br/&gt;\r\n来源 代码：{source}&lt;br/&gt;&lt;/li&gt;\r\n    &lt;/loop&gt;\r\n    &lt;!--循环结束--&gt;\r\n&lt;/ul&gt;','0','1398735559','1','Y-m-d H:i','');
INSERT INTO phpyun_outside VALUES('9','问答测试','ask','10','10','answer_num desc','5','&lt;ul&gt;\r\n    &lt;!--循环开始--&gt;\r\n    &lt;loop&gt;\r\n        &lt;li&gt;问答标题 代码：{title} &lt;br/&gt;\r\n问答链接 代码：{url} \r\n&lt;br/&gt;\r\n问答内容 代码：{content} \r\n&lt;br/&gt;\r\n发布人 代码：{name} \r\n&lt;br/&gt;\r\n发布时间 代码：{time} \r\n&lt;br/&gt;\r\n回答人数 代码：{answer_num} \r\n&lt;br/&gt;\r\n发布人头像 代码：{img} \r\n&lt;br/&gt;\r\n发布人链接 代码：{user_url}&lt;/li&gt;\r\n    &lt;/loop&gt;\r\n    &lt;!--循环结束--&gt;\r\n&lt;/ul&gt;','0','1398735559','1','Y-m-d H:i','');
INSERT INTO phpyun_outside VALUES('10','猎头职位','lt_job','10','10','a.hits desc','5','&lt;ul&gt;\r\n    &lt;!--循环开始--&gt;\r\n    &lt;loop&gt;\r\n        &lt;li&gt;\r\n职位名称 代码：{jobname} &lt;br/&gt;\r\n职位链接 代码：{url}&lt;br/&gt;\r\n招聘企业 代码：{companyname}  &lt;br/&gt;\r\n企业链接 代码：{com_url}  &lt;br/&gt;\r\n工作地点(江苏-南京) 代码：{address}  &lt;br/&gt;\r\n所属部门 代码：{department}  &lt;br/&gt;\r\n所属行业 代码：{hy}  &lt;br/&gt;\r\n企业规模 代码：{mun}  &lt;br/&gt;\r\n企业性质 代码：{pr}  &lt;br/&gt;\r\n汇报对象 代码：{report}  &lt;br/&gt;\r\n职位类别 代码：{jobtype}  &lt;br/&gt;\r\n薪资构成 代码：{constitute}  &lt;br/&gt;\r\n年假福利 代码：{years}  &lt;br/&gt;\r\n社保福利 代码：{social}  &lt;br/&gt;\r\n居住福利 代码：{live}  &lt;br/&gt;\r\n发布时间 代码：{sdate}  &lt;br/&gt;\r\n截止日期 代码：{edate}  &lt;br/&gt;\r\n职位描述 代码：{job_desc}  &lt;br/&gt;\r\n年薪 代码：{salary}  &lt;br/&gt;\r\n学历要求 代码：{edu}  &lt;br/&gt;\r\n性别要求 代码：{sex}  &lt;br/&gt;\r\n语言要求 代码：{language}  &lt;br/&gt;\r\n是否统招全体制 代码：{full}  &lt;br/&gt;\r\n年龄要求 代码：{age}  &lt;br/&gt;\r\n总工资年限 代码：{exp}  &lt;br/&gt;\r\n期望行业 代码：{qw_hy}  &lt;br/&gt;\r\n任职资格 代码：{eligible}  &lt;br/&gt;\r\n企业介绍 代码：{desc}  &lt;br/&gt;\r\n职位发布人 代码：{name} &lt;br/&gt;\r\n&lt;/li&gt;\r\n    &lt;/loop&gt;\r\n    &lt;!--循环结束--&gt;\r\n&lt;/ul&gt;','0','1398735559','1','Y-m-d','');
INSERT INTO phpyun_outside VALUES('11','友情链接测试','link','10','10','link_sorting asc','5','&lt;ul&gt;\r\n    &lt;!--循环开始--&gt;\r\n    &lt;loop&gt;\r\n        &lt;li&gt;\r\n名称 代码：{link_name}&lt;br/&gt;\r\n链接 代码：{link_url} &lt;br/&gt;\r\n图片地址(图片链接使用) 代码：{link_src}&lt;br/&gt;\r\n&lt;/li&gt;\r\n    &lt;/loop&gt;\r\n    &lt;!--循环结束--&gt;\r\n&lt;/ul&gt;','0','1414217981','1','Y-m-d','img_type_1');
INSERT INTO phpyun_outside VALUES('12','一句话招聘测试','once','10','10','id desc','5','&lt;ul&gt;\r\n    &lt;!--循环开始--&gt;\r\n    &lt;loop&gt;\r\n        &lt;li&gt;职位名称 代码：{jobname} &lt;br/&gt;\r\n公司名称 代码：{companyname} &lt;br/&gt;\r\n链接 代码：{url} &lt;br/&gt;\r\n招聘人数 代码：{mans} &lt;br/&gt;\r\n招聘要求 代码：{require} &lt;br/&gt;\r\n联系电话 代码：{phone} &lt;br/&gt;\r\n联系人 代码：{linkman} &lt;br/&gt;\r\n联系地址 代码：{address} &lt;br/&gt;\r\n更新时间 代码：{time}&lt;br/&gt;&lt;/li&gt;\r\n    &lt;/loop&gt;\r\n    &lt;!--循环结束--&gt;\r\n&lt;/ul&gt;','0','1398735559','1','Y-m-d','');
INSERT INTO phpyun_outside VALUES('13','微简历测试','tiny','10','10','id desc','5','&lt;ul&gt;\r\n    &lt;!--循环开始--&gt;\r\n    &lt;loop&gt;\r\n        &lt;li&gt;姓名 代码：{name} &lt;br/&gt;\r\n链接 代码：{url}&lt;br/&gt;\r\n性别 代码：{sex} &lt;br/&gt;\r\n工作经验 代码：{exp} &lt;br/&gt;\r\n应聘职位 代码：{job} &lt;br/&gt;\r\n联系电话 代码：{mobile} &lt;br/&gt;\r\n个人说明 代码：{describe} &lt;br/&gt;\r\n更新时间 代码：{time}&lt;br/&gt;&lt;/li&gt;\r\n    &lt;/loop&gt;\r\n    &lt;!--循环结束--&gt;\r\n&lt;/ul&gt;','0','1398735559','1','Y-m-d','');
INSERT INTO phpyun_outside VALUES('17','关链字测试','keyword','10','10','num desc','5','&lt;ul&gt;\r\n    &lt;!--循环开始--&gt;\r\n    &lt;loop&gt;\r\n        &lt;li&gt;关键字名称 代码：{name} 链接 代码：{url} 搜索次数 代码：{num}&lt;/li&gt;\r\n    &lt;/loop&gt;\r\n    &lt;!--循环结束--&gt;\r\n&lt;/ul&gt;','0','1398735559','1','Y-m-d','keytype_3');
INSERT INTO phpyun_outside VALUES('18','用户测试','member','10','10','login_hits desc','5','<ul>\r\n    <!--循环开始-->\r\n    <loop>\r\n        <li>\r\n用户名 代码：{name} <br>\r\n链接 代码：{url}<br>\r\n EMAIL 代码：{email} <br>\r\n 手机 代码：{moblie} <br>\r\n 用户类型 代码：{usertype} <br>\r\n 登录次数 代码：{hits} <br>\r\n 注册时间 代码：{reg_date} <br>\r\n 登录时间 代码：{login_date}<br>\r\n</li>\r\n    </loop>\r\n    <!--循环结束-->\r\n</ul>','0','1423192456','1','Y-m-d','usertype_1');

INSERT INTO phpyun_property VALUES('29','首页推荐','indextj');
INSERT INTO phpyun_property VALUES('16','头条','t');
INSERT INTO phpyun_property VALUES('28','推荐','tj');

INSERT INTO phpyun_q_class VALUES('30','体育','0','upload/question_class/20131127/13917454237.PNG','0','','1374638563');
INSERT INTO phpyun_q_class VALUES('31','篮球','30','upload/question_class/20130808/13834858827.JPG','0','篮球是一个由两队参与的球类运动，每队出场5名队员。目的是将球进入对方球篮得分，并阻止对方获得球或得分。可将球向任何方向传、投、拍、滚或运，但要受\r\n规则的限制。篮球比赛的形式多种多样，也有最流行的街头三人篮球赛，是三对三的比赛，更讲究个人技术。当今世界篮球水平最高的联赛是美国的国家篮球协会\r\n（NBA）。','1374638676');
INSERT INTO phpyun_q_class VALUES('32','互联网','0','','0','&lt;b&gt;互联网&lt;/b&gt;（英语：&lt;b&gt;Internet&lt;/b&gt;）（首字母小写的internet代表网络而不是互联网），又称&lt;b&gt;网际网路&lt;/b&gt;或音译&lt;b&gt;因特网&lt;/b&gt;、&lt;b&gt;英特网&lt;/b&gt;，是网络与网络之间所串连成的庞大网络，网络以一组通用的协定相连，形成逻辑上的单一巨大国际网络。','1374652186');
INSERT INTO phpyun_q_class VALUES('33','物理学','0','upload/question_class/20130725/13820777424.JPG','0','物理学（英语：Physics）是一种自然科学，主要研究的是时空中的物质及其运动，包括能量和作用力等所有相关概念。更广义地说，物理学探索分析大自然\r\n所发生的现象，目的是要了解其规则。物理学是最古老的学术之一，在过去两千年里，曾经归属于自然哲学。直到十七世纪科学革命之后，物理学才单独成为一门自\r\n然科学。&lt;br /&gt;\r\n____&lt;br /&gt;\r\n以上内容引自维基百科（&lt;a href=&quot;http://t.cn/a3CbeJ&quot; class=&quot; wrap external&quot; target=&quot;_blank&quot; rel=&quot;nofollow&quot;&gt;物理学&lt;/a&gt;），有少许删减。','1374652195');
INSERT INTO phpyun_q_class VALUES('34','宇宙学','33','','22','越过社会，偷看宇宙','1374652302');
INSERT INTO phpyun_q_class VALUES('35','微信','32','upload/question_class/20130808/13853427866.JPG','0','全球领先的移动即时通讯工具，截止 2013年 1 月注册用户数超过 3亿。','1374652316');
INSERT INTO phpyun_q_class VALUES('36','新浪微博','32','upload/question_class/20130808/13816011729.JPG','1','新浪微博是一个由新浪网推出的提供微型博客服务网站，是一个提供自由发布言论、图片、视频的第三方平台。','1374652327');
INSERT INTO phpyun_q_class VALUES('37','移动互联网','32','upload/question_class/20130808/13808971357.JPG','0','移动互联网，就是将移动通信和互联网二者结合起来，成为一体。在最近几年里，移动通信和互联网成为当今世界发展最快、市场潜力最大、前景最诱人的两大业务，它们的增长速度都是任何预测家未曾预料到的，所以移动互联网可以预见将会创造怎样的经济神话。','1374652340');
INSERT INTO phpyun_q_class VALUES('38','羽毛球','30','upload/question_class/20130808/13789559602.JPG','0','羽毛球是一项隔着球网，使用长柄网状球拍击打平口端扎有一圈羽毛的半球状软木的室内运动。自1992年起，羽毛球成为奥运会的正式比赛项目。','1374652366');
INSERT INTO phpyun_q_class VALUES('39','天体物理学','33','upload/question_class/20130808/13769078738.JPG','0','<b>天体物理学</b>是研究宇宙的物理学，这包括星体的物理性质（光度，密度，温度，化学成分等等）和星体与星体彼此之间的相互作用。应用物理理论与方法，天体物理学探讨恒星结构、恒星演化、太阳系的起源和许多跟宇宙学相关的问题。','1374652389');
INSERT INTO phpyun_q_class VALUES('40','量子物理','33','upload/question_class/20130808/13807214153.JPG','0','<b>量子力学</b>是描写微观物质的一个物理学理论，与相对论一起被认为是现代物理学的两大基本支柱，许多物理学理论和科学如原子物理学、固体物理学、核物理学和粒子物理学以及其它相关的学科都是以量子力学为基础。','1374652399');
INSERT INTO phpyun_q_class VALUES('42','电影','0','upload/question_class/20130725/13820768107.PNG','0','电影是一种表演艺术，视觉艺术及听觉艺术，利用胶卷、录像带或数位媒体将影像和声音捕捉。','1374733040');
INSERT INTO phpyun_q_class VALUES('43','美国电影','42','upload/question_class/20130808/13834787833.JPG','0','19世纪末20世纪初，美国的城市工业经济和中下层居民数量迅速增长，美国电影成为适应城市平民需要的一种大众娱乐。','1374733117');
INSERT INTO phpyun_q_class VALUES('44','科幻电影','42','upload/question_class/20130808/13814439425.JPG','0','科幻片是电影类型的一种，其特色的情节包含了科学奇想。 乔治·梅里爱的《月球之旅》是电影史上最早的一部科幻片。','1374733167');
INSERT INTO phpyun_q_class VALUES('45','iOS应用','0','upload/question_class/20131118/13883581262.JPG','0','iPhone, iPod Touch, iPad apps.','1374733246');
INSERT INTO phpyun_q_class VALUES('46','iPhone 应用','45','upload/question_class/20130808/13824121725.JPG','0','Apps for iPhone / iPod touch, can be used on iPad as well.','1374733285');
INSERT INTO phpyun_q_class VALUES('47','iPad 应用','45','','0','Apps for iPad, but not for iPhone/iPod touch.','1374733338');
INSERT INTO phpyun_q_class VALUES('48','iOS 游戏开发','45','','0','iOS 游戏开发，是机遇也是挑战，希望大家一同进步。','1374733405');
INSERT INTO phpyun_q_class VALUES('49','电子商务','32','upload/question_class/20130808/13810276938.JPG','0','电子商务（Electronic Commerce）的定义：电子商务是利用计算机技术、网络技术和远程通信技术等，实现电子化、数字化和网络化的整个商务过程。','1374733489');
INSERT INTO phpyun_q_class VALUES('50','巴塞罗那（FC Barcelona）','30','upload/question_class/20130807/13857552261.JPG','0','巴塞罗那足球俱乐部，简称巴萨，成立于1899年11月29日，是位于西班牙巴塞罗那市的大球会，西甲传统豪门之一，也是现今欧洲乃至世界足坛最成功的俱乐部之一。','1375864816');
INSERT INTO phpyun_q_class VALUES('51','洛杉矶湖人（Los Angeles Lakers）','30','upload/question_class/20130807/13816861607.JPG','0','湖人队于1948年加盟NBA，原来属于明尼阿波利斯，于1960年搬迁到了洛杉矶。洛杉矶湖人队是NBA历史上为数不多的常青树之一，该队的夺冠次数仅次于凯尔特人队，共获得16次总冠军。','1375864850');
INSERT INTO phpyun_q_class VALUES('52','世界杯','30','upload/question_class/20130807/13802840119.JPG','0','世界杯（World Cup,FIFA World Cup），国际足联世界杯，世界足球锦标赛是世界上最高荣誉、最高规格、最高水平的足球比赛，与奥运会并称为全球体育两大顶级赛事。','1375864891');
INSERT INTO phpyun_q_class VALUES('53','逛街','0','upload/question_class/20140421/13996007059.JPG','34','','1385621221');
INSERT INTO phpyun_q_class VALUES('54','网购','53','','1','','1388382934');
INSERT INTO phpyun_q_class VALUES('55','手机酷站','0','','1','手机','1398821512');
INSERT INTO phpyun_q_class VALUES('65','aphone6','55','','1','','1416281233');


INSERT INTO phpyun_reason VALUES('1','非建设性提问');
INSERT INTO phpyun_reason VALUES('2','不友善言论、垃圾内容与不适宜讨论的内容');
INSERT INTO phpyun_reason VALUES('3','不构成提问或问题表意不明确');
INSERT INTO phpyun_reason VALUES('4','问题已失效或过期');
INSERT INTO phpyun_reason VALUES('5','广告等垃圾信息');
INSERT INTO phpyun_reason VALUES('6','违法违规内容');
INSERT INTO phpyun_reason VALUES('7','不宜公开讨论的政治内容');


INSERT INTO phpyun_resume VALUES('2','王工','6','1988-08-08','','','','','','15920258490','','820591677@qq.com','14','','','老实','','','0','1','24','1','','0','0','0','','','0','0','0','0','东莞市东城区文华路文华花园','','1','','1');



INSERT INTO phpyun_resume_edu VALUES('1','2','1','农工商学院','1013097600','1107964800','电子信息工程','','电子信息工程');

INSERT INTO phpyun_resume_expect VALUES('1','2','求设计工作，10年工作经验','35','158','20','239','786','30','58','45','0','1','0','0','0','32','1423191972','','','','69','0','','','0','','0','','m0,m1,m2,m3,m4,m5,m6','','1','2','1423191972','1');

INSERT INTO phpyun_resume_file VALUES('5','5','./upload/show/20150206/14247537483.JPG','','1423191238','1','0');
INSERT INTO phpyun_resume_file VALUES('6','6','./upload/show/20150206/14281912483.JPG','','1423191238','1','0');
INSERT INTO phpyun_resume_file VALUES('82','ss1','./uploads_resume_file/ss1.doc','\r\n\r\n\r\n\r\n\r\n\r\n\r\nPrint\r\n\r\n\r\n简历\r\n\r\n\r\ntable{border-collapse:collapse;line-height:20px; background:#ffffff; margin:0 auto}\r\ntable td{ white-space:normal;word-break:break-all}\r\ntable tr{ background:#ffffff}\r\n\r\n\r\n  \r\n    \r\n      王工 个人简历 (简历编号：NO.1)\r\n    \r\n    \r\n      个人基本信息\r\n    \r\n    \r\n      姓名\r\n      王工\r\n      性别\r\n      男\r\n      出生日期\r\n      1988年08月08日\r\n    \r\n    \r\n       身份证号\r\n    \r\n      \r\n    籍贯\r\n    \r\n     \r\n  \r\n    身高\r\n    cm\r\n    体重\r\n    kg\r\n    民族\r\n    \r\n   \r\n   \r\n  \r\n    婚姻状况\r\n    \r\n  \r\n    \r\n    学历\r\n    大专\r\n    工作经验\r\n    10年以上\r\n   \r\n  \r\n  \r\n    详细地址\r\n    \r\n  \r\n    \r\n    现所在地\r\n    东莞市东城区文华路文华花园\r\n  \r\n  \r\n    个人主页\r\n    \r\n  \r\n    \r\n    自我评价\r\n    老实\r\n  \r\n  \r\n     求职意向\r\n  \r\n  \r\n    期望行业\r\n    计算机/互联网\r\n    工作地区\r\n    广东 东莞 南城区\r\n  \r\n  \r\n    职位性质\r\n    全职\r\n    待遇要求\r\n     面议 \r\n  \r\n  \r\n    期望职位\r\n    标准化工程师\r\n    到岗时间\r\n    随时到岗\r\n  \r\n    \r\n  \r\n    \r\n     教育经历\r\n  \r\n    \r\n    毕业时间\r\n    2002年02月 - 2005年02月\r\n    专业\r\n    电子信息工程\r\n  \r\n  \r\n    学校名称\r\n    农工商学院\r\n    担任职位\r\n    \r\n  \r\n  \r\n    专业描述\r\n    电子信息工程\r\n  \r\n            \r\n      \r\n     工作经历\r\n  \r\n    \r\n    单位名称\r\n    一通网络\r\n    担任职位\r\n    设计主管\r\n  \r\n  \r\n    所属部门\r\n    设计\r\n    工作时间\r\n    2005年02月 -2010年02月\r\n  \r\n  \r\n    工作描述\r\n    设计\r\n  \r\n      \r\n  \r\n  \r\n  \r\n      \r\n    联系方式\r\n  \r\n  \r\n    手机\r\n    15920258490\r\n  \r\n    \r\n    座机\r\n    \r\n  \r\n    \r\n    电子邮件\r\n    820591677@qq.com\r\n  \r\n    \r\n  \r\n\r\n\r\n\r','1425043985','1','0');
INSERT INTO phpyun_resume_file VALUES('83','求设计工作，10年工作经验','./uploads_resume_file/求设计工作，10年工作经验.doc','\r\n\r\n\r\n\r\n\r\n\r\n\r\nPrint\r\n\r\n\r\n简历\r\n\r\n\r\ntable{border-collapse:collapse;line-height:20px; background:#ffffff; margin:0 auto}\r\ntable td{ white-space:normal;word-break:break-all}\r\ntable tr{ background:#ffffff}\r\n\r\n\r\n  \r\n    \r\n      王工 个人简历 (简历编号：NO.1)\r\n    \r\n    \r\n      个人基本信息\r\n    \r\n    \r\n      姓名\r\n      王工\r\n      性别\r\n      男\r\n      出生日期\r\n      1988年08月08日\r\n    \r\n    \r\n       身份证号\r\n    \r\n      \r\n    籍贯\r\n    \r\n     \r\n  \r\n    身高\r\n    cm\r\n    体重\r\n    kg\r\n    民族\r\n    \r\n   \r\n   \r\n  \r\n    婚姻状况\r\n    \r\n  \r\n    \r\n    学历\r\n    大专\r\n    工作经验\r\n    10年以上\r\n   \r\n  \r\n  \r\n    详细地址\r\n    \r\n  \r\n    \r\n    现所在地\r\n    东莞市东城区文华路文华花园\r\n  \r\n  \r\n    个人主页\r\n    \r\n  \r\n    \r\n    自我评价\r\n    老实\r\n  \r\n  \r\n     求职意向\r\n  \r\n  \r\n    期望行业\r\n    计算机/互联网\r\n    工作地区\r\n    广东 东莞 南城区\r\n  \r\n  \r\n    职位性质\r\n    全职\r\n    待遇要求\r\n     面议 \r\n  \r\n  \r\n    期望职位\r\n    标准化工程师\r\n    到岗时间\r\n    随时到岗\r\n  \r\n    \r\n  \r\n    \r\n     教育经历\r\n  \r\n    \r\n    毕业时间\r\n    2002年02月 - 2005年02月\r\n    专业\r\n    电子信息工程\r\n  \r\n  \r\n    学校名称\r\n    农工商学院\r\n    担任职位\r\n    \r\n  \r\n  \r\n    专业描述\r\n    电子信息工程\r\n  \r\n            \r\n      \r\n     工作经历\r\n  \r\n    \r\n    单位名称\r\n    一通网络\r\n    担任职位\r\n    设计主管\r\n  \r\n  \r\n    所属部门\r\n    设计\r\n    工作时间\r\n    2005年02月 -2010年02月\r\n  \r\n  \r\n    工作描述\r\n    设计\r\n  \r\n      \r\n  \r\n  \r\n  \r\n      \r\n    联系方式\r\n  \r\n  \r\n    手机\r\n    15920258490\r\n  \r\n    \r\n    座机\r\n    \r\n  \r\n    \r\n    电子邮件\r\n    820591677@qq.com\r\n  \r\n    \r\n  \r\n\r\n\r\n\r','1425180743','1','0');





INSERT INTO phpyun_resume_tiny VALUES('1','王工','e80b5017098950fc58aad83c8c14978e','7','24','1','设计','15920258490','820591677','自我介绍','1423191549','1','127.0.0.1');


INSERT INTO phpyun_resume_work VALUES('1','2','1','一通网络','1108483200','1266249600','设计','设计主管','设计');


INSERT INTO phpyun_reward_class VALUES('1','数码充值');
INSERT INTO phpyun_reward_class VALUES('4','购物卡劵');
INSERT INTO phpyun_reward_class VALUES('5','办公用品');
INSERT INTO phpyun_reward_class VALUES('7','车载玩具');

INSERT INTO phpyun_seo VALUES('1','首页','index','{webname}_最新招聘信息_找工作','{webname}，招聘，招聘网，找工作','{webname}（{weburl}）大品牌的招聘网站，找工作的理想选择，规模大信息真实的专业招聘网站，查询人才网最新招聘信息，找工作，上{webname}!','1418728718','0,13','','');
INSERT INTO phpyun_seo VALUES('106','触屏版','wap','触屏版','找工作,人才,工作,求职,招聘,简历,跳槽,高薪,面试,应聘,兼职','hr135人才网为个人提供最全最新最准确的企业职位招聘信息，为企业提供全方位的人力资源服务，帮助个人求职者快速的找到工作。','1418607884','0','','');
INSERT INTO phpyun_seo VALUES('2','企业招聘','com','{webname}最新招聘信息|招聘 - {webname}','{webname},招聘,招聘最新信息','{webname}- {webname}招聘频道，为求职者提供最新最全的招聘信息。招聘，找工作，就上{webname}','1418729213','0','','');
INSERT INTO phpyun_seo VALUES('5','人才展示','user','【求职|找工作|求职信息网】-{webname}','求职,找工作,求职信息网,人才求职','{webname}求职频道是免费的求职信息人才求职信息发布平台。每天有数十万求职者发布销售、客服、餐饮、房地产、美容美发等数百种行业求职信息。找工作首选{webname}求职频道。','1418731921','0','','');
INSERT INTO phpyun_seo VALUES('6','新闻首页','news','职场资讯_{webname}','人才，招聘，简历，工作，求职，应聘，高薪，兼职，猎头，薪酬，薪资，培训，测评，人事','{webname}职场指南频道为您提供最新鲜的职场资讯、最实用的职场技巧、最前沿的职场动态、最强大的职场攻略全力为金融人士打造职场百宝箱','1418729537','0','','');
INSERT INTO phpyun_seo VALUES('7','新闻列表','newslist','{news_class} - 职场资讯- 	{webname}','{news_class} ，跳槽，人才，招聘，简历，工作，求职，应聘，高薪，兼职，猎头，薪酬，薪资，培训，测评，人事','{news_class} - 职场资讯- 	{webname}','1418729697','0','','');
INSERT INTO phpyun_seo VALUES('8','一句话招聘','once','一句话招聘-{webname}','找工作,人才,工作,求职,招聘,简历,跳槽,高薪,面试,应聘,兼职','{webname}为个人提供最全最新最准确的企业职位招聘信息，为企业提供全方位的人力资源服务，帮助个人求职者快速的找到工作。','1418734479','0','','');
INSERT INTO phpyun_seo VALUES('9','高级搜索','search','高级搜索','找工作,人才,工作,求职,招聘,简历,跳槽,高薪,面试,应聘,兼职','hr135人才网为个人提供最全最新最准确的企业职位招聘信息，为企业提供全方位的人力资源服务，帮助个人求职者快速的找到工作。','1332841128','','','');
INSERT INTO phpyun_seo VALUES('11','忘记密码','forgetpw','{webname}-忘记密码','忘记密码,找工作,人才,工作,求职,招聘,简历,跳槽,高薪,面试,应聘,兼职','{webname}为个人提供最全最新最准确的企业职位招聘信息，为企业提供全方位的人力资源服务，帮助个人求职者快速的找到工作。','1418730967','0','','');
INSERT INTO phpyun_seo VALUES('12','友情链接','friend','友情链接_人才网','找工作,人才,工作,求职,招聘,简历,跳槽,高薪,面试,应聘,兼职','{webdesc}','1418735396','0','','');
INSERT INTO phpyun_seo VALUES('13','登录','login','{webname}-登录','登录,找工作,人才,工作,求职,招聘,简历,跳槽,高薪,面试,应聘,兼职','{webname}为个人提供最全最新最准确的企业职位招聘信息，为企业提供全方位的人力资源服务，帮助个人求职者快速的找到工作。','1418730865','0','','');
INSERT INTO phpyun_seo VALUES('14','QQ登录','qqlogin','QQ登录','找工作,人才,工作,求职,招聘,简历,跳槽,高薪,面试,应聘,兼职','不好不坏','1332841075','','','');
INSERT INTO phpyun_seo VALUES('15','注册','register','{webname}-注册','注册,找工作,人才,工作,求职,招聘,简历,跳槽,高薪,面试,应聘,兼职','{webname}为个人提供最全最新最准确的企业职位招聘信息，为企业提供全方位的人力资源服务，帮助个人求职者快速的找到工作。','1418730900','0','','');
INSERT INTO phpyun_seo VALUES('16','简历','resume','{resume_username}-【{resume_username}的简历】','找工作,人才,工作,求职,招聘,简历,跳槽,高薪,面试,应聘,兼职','{webname}为个人提供最全最新最准确的企业职位招聘信息，为企业提供全方位的人力资源服务，帮助个人求职者快速的找到工作。','1418732220','0','','');
INSERT INTO phpyun_seo VALUES('17','招聘会','zph','招聘会_人才市场_ {webname}','招聘会,人才市场, 最新近期人才招聘会,{webname}','{webname}人才市场，获悉最新招聘会信息请上{webname}人才市场，{webname}人才市场的理想选择。','1418729909','0','','');
INSERT INTO phpyun_seo VALUES('18','微招聘','wzp','微博招聘,微招聘,快速招聘','微博招聘,微招聘,快速招聘，海量微博资源','微博招聘,微招聘,快速招聘，海量微博资源微博招聘,微招聘,快速招聘，海量微博资源微博招聘,微招聘,快速招聘，海量微博资源微博招聘,微招聘,快速招聘，海量微博资源','1343117651','','','');
INSERT INTO phpyun_seo VALUES('19','企业黄页','firm','找企业_企业信息_企业招聘-{webname}','企业招聘,企业招聘信息,{webname}','{webname}为您提供最全的的企业招聘信息汇集全国上百万家企业招聘信息，为中高端人才提供优质的工作机会，选企业，找工作就上{webname}','1418735619','0','','');
INSERT INTO phpyun_seo VALUES('20','职位页面','comapply','招聘{job_name}_{company_name}招聘{job_name}-{webname}','招聘{job_name}招聘信息,{company_name}招聘{job_name},{webname}','{company_name}招聘{job_name}{job_name}招聘信息简介内容包括：工资待遇职位描述工作地点岗位职责，工作内容等{job_name}信息','1418730694','0','','');
INSERT INTO phpyun_seo VALUES('22','新闻内容页','news_article','{news_class} - {news_title} - {webname}','{news_keyword}','{news_desc}','1418202743','0','','');
INSERT INTO phpyun_seo VALUES('23','公告页','announcement','{news_title}-{webname} ','{webname} - {webkeyword}','{webname} - {webdesc}','1418734438','0','','');
INSERT INTO phpyun_seo VALUES('24','分享简历','resume_share','分享简历--{resume_username}','分享简历','分享简历','1358582606','0','','');
INSERT INTO phpyun_seo VALUES('25','地图招聘','map','地图招聘 - {webname}','找工作,人才,工作,求职,招聘,简历,跳槽,高薪,面试,应聘,兼职','地图招聘-{webdesc}','1418735445','0','','');
INSERT INTO phpyun_seo VALUES('32','微简历','tiny','微简历-{webname}','微简历-{webname}','微简历-{webdesc}','1418804000','0','','');
INSERT INTO phpyun_seo VALUES('33','问答首页','ask_index','问答首页-{webname}','{webkeyword}','{webdesc}','1374717488','','','');
INSERT INTO phpyun_seo VALUES('34','问答搜索页','ask_search','问答搜索页-{webname}','{webkeyword}','{webdesc}','1374717569','','','');
INSERT INTO phpyun_seo VALUES('35','问答话题页','ask_topic','问答话题页-{webname}','{webkeyword}','{webdesc}','1374717643','','','');
INSERT INTO phpyun_seo VALUES('36','问答一周热点','ask_hot_week','一周热点-{webname}','{webkeyword}','{webdesc}','1374717730','','','');
INSERT INTO phpyun_seo VALUES('37','我的问答','ask_my_question','我的问答-{webname}','{webkeyword}','{webdesc}','1374717808','','','');
INSERT INTO phpyun_seo VALUES('38','问答动态','seo_dynamic','动态-问答-{webname}','{webkeyword}','{webdesc}','1374717951','','','');
INSERT INTO phpyun_seo VALUES('39','我的回答','ask_my_answer','我的回答-{webname}','{webkeyword}','{webdesc}','1374718013','','','');
INSERT INTO phpyun_seo VALUES('40','我要提问','ask_add_question','我要提问-{webname}','{webkeyword}','{webdesc}','1374718098','','','');
INSERT INTO phpyun_seo VALUES('42','添加微简历','tinyadd','发布微简历-{webname}','{webkeyword}','{webdesc}','1374746423','','','');
INSERT INTO phpyun_seo VALUES('43','朋友网首页','fri_index','{webname}-朋友圈首页-交友-朋友','{webname}-朋友圈首页-交友-朋友','{webname}-朋友圈首页-交友-朋友','1418736468','0','','');
INSERT INTO phpyun_seo VALUES('44','朋友圈个人主页','fri_profile','{webname}-朋友圈-个人主页-交友-朋友','{webname}-朋友圈-个人主页-交友-朋友','{webname}-朋友圈-个人主页-交友-朋友','1418736499','0','','');
INSERT INTO phpyun_seo VALUES('45','我的好友','fri_myfriend','{webname}-我的好友-交友-朋友','{webname}-我的好友-交友-朋友','{webname}-我的好友-交友-朋友','1418736417','0','','');
INSERT INTO phpyun_seo VALUES('46','添加好友','fri_addfriend','{webname}-添加好友-交友-朋友','{webname}-添加好友-交友-朋友','{webname}-添加好友-交友-朋友','1418736283','0','','');
INSERT INTO phpyun_seo VALUES('47','好友申请','fri_applyfriend','{webname}-好友申请-交友-朋友','{webname}-好友申请-交友-朋友','{webname}-好友申请-交友-朋友','1418736315','0','','');
INSERT INTO phpyun_seo VALUES('48','我的留言板','fri_messagelist','{webname}-留言板-留言-交友-朋友','{webname}-留言板-留言-交友-朋友','{webname}-留言板-留言-交友-朋友','1418736379','0','','');
INSERT INTO phpyun_seo VALUES('49','修改资料','fri_info','{webname}-修改资料-交友-朋友','{webname}-修改资料-交友-朋友','{webname}-修改资料-交友-朋友','1418736345','0','','');
INSERT INTO phpyun_seo VALUES('50','修改头像','fri_photo','修改头像-朋友圈-朋友-交友-{webname}','修改头像-朋友圈-朋友-交友','修改头像-朋友圈-朋友-交友','1418735734','0','','');
INSERT INTO phpyun_seo VALUES('51','我关注的问题','atten_question','我关注的问题-{webname}','{webkeyword}','{webdesc}','1375839339','0','','');
INSERT INTO phpyun_seo VALUES('53','职位推荐','recommend','{webname}职位推荐','{webname}职位推荐','{webname}职位推荐','1376310278','0','','');
INSERT INTO phpyun_seo VALUES('54','排行榜','top','排行榜 - {webname}','{webkeyword}','{webdesc}','1377312541','','','');
INSERT INTO phpyun_seo VALUES('55','电脑访问wap','moblie','wap - {webname}','{webkeyword}','{webdesc}','1377312613','','','');
INSERT INTO phpyun_seo VALUES('56','微简历-内容页','tiny_cont','{tiny_username} -{tiny_job},微简历','{tiny_job},微简历','{tiny_desc}微简历','1418803949','0','','');
INSERT INTO phpyun_seo VALUES('61','公司首页','company_index','{company_name}-公司首页-{webname}','{company_name}-公司首页-{webname}','为个人提供最全最新最准确的企业职位招聘信息，为企业提供全方位的人力资源服务，帮助个人求职者快速的找到工作{company_name_desc}','1400117095','0','','');
INSERT INTO phpyun_seo VALUES('62','公司招聘职位','company_post','{company_name}-招聘职位-{webname}','{company_name}-招聘职位-{webname}','为个人提供最全最新最准确的企业职位招聘信息，为企业提供全方位的人力资源服务，帮助个人求职者快速的找到工作','1383274106','','','');
INSERT INTO phpyun_seo VALUES('63','企业形象','company_show','{company_name}-企业形象-{webname}','{company_name}-企业形象-{webname}','为个人提供最全最新最准确的企业职位招聘信息，为企业提供全方位的人力资源服务，帮助个人求职者快速的找到工作','1383274202','','','');
INSERT INTO phpyun_seo VALUES('64','企业产品展示','company_product','{company_name}-产品展示-{webname}','{company_name}-产品展示-{webname}','为个人提供最全最新最准确的企业职位招聘信息，为企业提供全方位的人力资源服务，帮助个人求职者快速的找到工作','1383275001','','','');
INSERT INTO phpyun_seo VALUES('65','公司简介','company_intro','{company_name}-公司简介-{webname}','{company_name}-公司简介-{webname}','为个人提供最全最新最准确的企业职位招聘信息，为企业提供全方位的人力资源服务，帮助个人求职者快速的找到工作','1383275058','','','');
INSERT INTO phpyun_seo VALUES('66','公司新闻','company_news','{company_name}-公司新闻-{webname}','{company_name}-公司新闻-{webname}','为个人提供最全最新最准确的企业职位招聘信息，为企业提供全方位的人力资源服务，帮助个人求职者快速的找到工作','1400118386','','','');
INSERT INTO phpyun_seo VALUES('67','地理位置','company_position','{company_name}-地理位置-{webname}','{company_name}-地理位置-{webname}','{webname}为个人提供最全最新最准确的企业职位招聘信息，为企业提供全方位的人力资源服务，帮助个人求职者快速的找到工作','1417248916','','','');
INSERT INTO phpyun_seo VALUES('68','联系我们','company_connection','{company_name}-联系我们-{webname}','{company_name}-联系我们-{webname}','为个人提供最全最新最准确的企业职位招聘信息，为企业提供全方位的人力资源服务，帮助个人求职者快速的找到工作','1383275186','','','');
INSERT INTO phpyun_seo VALUES('69','企业产品内容页','company_productshow','{company_name}-{company_product}-{webname}','{company_name}-{company_product}-{webname}','为个人提供最全最新最准确的企业职位招聘信息，为企业提供全方位的人力资源服务，帮助个人求职者快速的找到工作','1383276043','','','');
INSERT INTO phpyun_seo VALUES('70','企业新闻内容页','company_newsshow','{company_name}-{company_news}-{webname}','{company_name}-{company_news}-{webname}','为个人提供最全最新最准确的企业职位招聘信息，为企业提供全方位的人力资源服务，帮助个人求职者快速的找到工作','1399293165','','','');
INSERT INTO phpyun_seo VALUES('72','找工作列表页','com_search','{webname}最新招聘信息|招聘 - {webname}- {seacrh_class}','{webname},招聘,招聘最新信息-{seacrh_class} ','{webname}- {webname}招聘频道，为求职者提供最新最全的招聘信息。招聘，找工作，就上{webname}','1418729172','0','','');
INSERT INTO phpyun_seo VALUES('73','找人才列表页','user_search','人才列表-{webname}-{seacrh_class}','{webkeyword}- {seacrh_class}','{webname}个人简历库为您提供海量优秀的个人简历您可以搜索销售、客服、文员等数百种职位人才的个人简历.搜简历找人才就来{webname}个人简历库。','1418732104','0','','');
INSERT INTO phpyun_seo VALUES('78','招聘会详情页','zph_show','{zph_title}-招聘会-{webname} ','找人才,六千工作岗位,求职者可登录{webname}查看职位','{zph_desc}找人才六千工作岗位求职者可登录{webname}查看职位','1418730320','0','','');
INSERT INTO phpyun_seo VALUES('80','激活邮箱','activate','激活邮箱 - {webname}','激活邮箱','激活邮箱','1414053810','0','','');
INSERT INTO phpyun_seo VALUES('82','企业评论','commsg','企业评论-{webname}','{webkeyword}','{webdesc}','1413421373','0','','');
INSERT INTO phpyun_seo VALUES('83','积分兑换','redeem','积分兑换-{webname}','{webkeyword}','{webdesc}','1413892396','0','','');
INSERT INTO phpyun_seo VALUES('85','邮件订阅','subscribe','{webname}-邮件订阅','{webname}-邮件订阅','{webname}-邮件订阅','1418269274','0','','');
INSERT INTO phpyun_seo VALUES('86','邀请注册','invitereg','{webname}邀请注册','{webkeyword}邀请注册','{webdesc}邀请注册','1418734191','0','','');
INSERT INTO phpyun_seo VALUES('87','激活邮件','sendcert','{webname}激活邮件','{webkeyword}激活邮件','{webdesc}激活邮件','1418734168','0','/index.php?m=sendcert','/sendcert.html');
INSERT INTO phpyun_seo VALUES('88','工具箱','hrindex','{webname}工具箱','{webkeyword}工具箱','{webdesc}工具箱','1418734140','0','','');
INSERT INTO phpyun_seo VALUES('89','工具箱列表','hrlist','{hr_class}-{webname}','{hr_class}-{webname}','{hr_class}-{hr_desc}','1418734251','0','','');
INSERT INTO phpyun_seo VALUES('107','微信','weixin','微信','找工作,人才,工作,求职,招聘,简历,跳槽,高薪,面试,应聘,兼职','hr135人才网为个人提供最全最新最准确的企业职位招聘信息，为企业提供全方位的人力资源服务，帮助个人求职者快速的找到工作。','1418608367','0','','');
INSERT INTO phpyun_seo VALUES('110','如何获得积分','integral','{webname}-如何获得积分','{webkeyword}-如何获得积分','{webdesc}-如何获得积分','1418709520','0','','');


INSERT INTO phpyun_sysmsg VALUES('1','用户 wangsirperson 关注了你！','1','','1423192149','1');
INSERT INTO phpyun_sysmsg VALUES('2','用户 wangsirperson 取消了对你的关注！','1','','1423192151','1');
INSERT INTO phpyun_sysmsg VALUES('3','用户 wangsirperson 关注了你！','1','','1423192153','1');

INSERT INTO phpyun_talent_pool VALUES('1','2','1','1','1423201570','已备注');

INSERT INTO phpyun_templates VALUES('1','emailreg','{webname}注册会员!','{webname}{weburl}');
INSERT INTO phpyun_templates VALUES('2','emailfkcg','付款提醒-{webname}','您已成功为订单：{order_id}付款，支付金额：{price}元。如有疑问，请拨打{webtel}联系网站。');
INSERT INTO phpyun_templates VALUES('3','emailyqms','{webname}-邀请面试','{webname}-{company} 邀请你您面试！详情请登录{weburl}&lt;br /&gt;');
INSERT INTO phpyun_templates VALUES('4','msgyqms','','你好！{company}邀请您面试，职位：{jobname}！');
INSERT INTO phpyun_templates VALUES('5','emailzzshtg','{webname}{weburl}','&lt;p&gt;\r\n	欢迎您使用{webname}\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	网址：{weburl}\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	电话：{webtel}\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	您发布的职位 {jobname} 通过了审核。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	时间：{date}\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;');
INSERT INTO phpyun_templates VALUES('6','msgreg','','{webname}注册通知：{weburl}用户名：{username}密码：{password}');
INSERT INTO phpyun_templates VALUES('7','msgzzshtg','','{webname}{webtel}{date}');
INSERT INTO phpyun_templates VALUES('8','emailgetpass','{webname}找回密码!','&lt;p&gt;\r\n	您的帐号{username} 验证码：{password}\r\n&lt;/p&gt;');
INSERT INTO phpyun_templates VALUES('9','msggetpass','','{webname}{weburl}{webtel}{password}');
INSERT INTO phpyun_templates VALUES('10','emailsqzw','{webname}职位申请：{jobname}','&lt;p&gt;\r\n	您好，您发布的职位：{jobname} 有人投递了简历，请尽快登录 {weburl} 查看 ！这是来自{webname} 的职位申请通知！\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	时间：{date}\r\n&lt;/p&gt;');
INSERT INTO phpyun_templates VALUES('11','msgsqzw','','您好，有用户在{webname}上成功申请了您发布的职位：{jobname}，详细请登录：{weburl}');
INSERT INTO phpyun_templates VALUES('19','email_userstatus','{webname}-会员审核','&lt;p&gt;\r\n	{webname}-{status_info}\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	{date}\r\n&lt;/p&gt;');
INSERT INTO phpyun_templates VALUES('12','msgfkcg','','您已成功为订单：{order_id}付款，支付金额：{price}元。如有疑问，请拨打{webtel}联系网站。');
INSERT INTO phpyun_templates VALUES('13','emailcert','{webname}邮箱认证','&lt;p&gt;\r\n	{webname}{weburl}\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	联系我们：{webtel}\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	激活地址：{url}\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	时间：{date}\r\n&lt;/p&gt;');
INSERT INTO phpyun_templates VALUES('14','msgcert','','{webname}{code}');
INSERT INTO phpyun_templates VALUES('15','emaillock','会员账号锁定说明','{lock_info}');
INSERT INTO phpyun_templates VALUES('16','emailcomcert','企业营业执照审核邮件回复--{webname}','&lt;p&gt;\r\n	{comname}：\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;{certinfo}\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	{webname} {weburl} {webtel}\r\n&lt;/p&gt;');
INSERT INTO phpyun_templates VALUES('17','emailusercert','个人身份认证审核邮件回复--{webname}','&lt;p&gt;\r\n	{username} ：\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;{certinfo}\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	{webname} {weburl} {webtel}\r\n&lt;/p&gt;');
INSERT INTO phpyun_templates VALUES('18','emailjobed','{com_name}','&lt;p&gt;\r\n	您好，贵公司【{com_name}】发布的职位【{job_name}】已过期。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	---{webname}{weburl}{webtel}\r\n&lt;/p&gt;');
INSERT INTO phpyun_templates VALUES('20','emailuserstatus','{webname}-会员审核','&lt;p&gt;\r\n	{webname}\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	{status_info}\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	{date}\r\n&lt;/p&gt;');
INSERT INTO phpyun_templates VALUES('21','emailzzshwtg','{webname}--职位审核未通过','&lt;p&gt;\r\n	您在{webname}上发布了 {jobname} 没有通过审核，有什么问题，您可以通过{webtel}联系我们。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	审核原因：{status_info}\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	时间：{date}\r\n&lt;/p&gt;');
INSERT INTO phpyun_templates VALUES('22','emailremind','邮件提醒-{webname}','您已经很长时间没有来 {webname} 。&lt;br /&gt;');
INSERT INTO phpyun_templates VALUES('23','msgremind','','您好，你已经很长时间没有来{webname}');
INSERT INTO phpyun_templates VALUES('24','msgcomdy','','{webname} 发布了新的人才 {resumename}，网址：{weburl}，网站电话：{webtel}');
INSERT INTO phpyun_templates VALUES('25','msguserdy','','{webname} 发布了新的职位 {jobname}，网址：{weburl}，网站电话：{webtel}');
INSERT INTO phpyun_templates VALUES('26','emailuserdy','{webname}-邮件订阅','{webname},有人发布了{jobname}，详情请登录{weburl} 。网站电话：{webtel}<br />');
INSERT INTO phpyun_templates VALUES('27','emailcomdy','{webname}-邮件订阅','{webname}有人发布了 &lt;span&gt;{resumename}&lt;/span&gt;，详情请登录{weburl} 。网站电话：{webtel}');
INSERT INTO phpyun_templates VALUES('28','emailnotice','职位推送','&lt;span&gt;{webname}&lt;/span&gt; 职位：&lt;span&gt;{jobname}&lt;/span&gt;&lt;br /&gt;');
INSERT INTO phpyun_templates VALUES('29','msgnotice','','{webname} 职位名称：{jobname}');
INSERT INTO phpyun_templates VALUES('30','msgregcode','','{webname}欢迎您！您的注册验证码为：{code}');

INSERT INTO phpyun_toolbox_class VALUES('7','招聘/面试','包含各种人事招聘和人才面试专用表格文档，招聘专员可根据需求自行下载hr资料，实现人企互聘第一步。','upload/hrclass/20141114/14160140867.PNG');
INSERT INTO phpyun_toolbox_class VALUES('8','薪酬制度','hr可以适时参考工具箱内的资料表单，制定合理人性的薪酬制度，在众多招聘企业中一招制胜。','upload/hrclass/20141211/14206742821.PNG');
INSERT INTO phpyun_toolbox_class VALUES('10',' 人事档案 ',' 以表单和文字形式记录企业和员工的主要经历、政治面貌、素质文化等内容，作为企业文化的内在凭证。','upload/hrclass/20141114/14184851391.PNG');
INSERT INTO phpyun_toolbox_class VALUES('11','加班/考勤','工具箱内提供各种形式的考勤表格供hr参考，以维护企业正常的工作秩序，严肃企业纪律。 ','upload/hrclass/20141114/14223214394.PNG');
INSERT INTO phpyun_toolbox_class VALUES('12','员工管理','包含工作内容、员工纪律等一系列直接涉及员工福利和工作性质的资料。帮助hr快速专业的落实人才工作。','upload/hrclass/20141114/14227189698.PNG');
INSERT INTO phpyun_toolbox_class VALUES('13','合同/试用','hr下载合适的合同范本作为跟人才之间的契约协议签订，成功实现企业和人才之间的双向选择。  ','upload/hrclass/20141114/14180306464.PNG');
INSERT INTO phpyun_toolbox_class VALUES('14',' 出差','针对公司出差问题，提供相关的出差规定、出差情况记录表等，准确掌握员工工作动态，明晰公司财务清单。','upload/hrclass/20141114/14177901288.PNG');
INSERT INTO phpyun_toolbox_class VALUES('15',' 员工培训','提供各类员工培训参考，包含出国培训、新进职员培训等，为企业提供多样的培训意见，提高员工素质能力。 ','upload/hrclass/20141114/14176882761.PNG');
INSERT INTO phpyun_toolbox_class VALUES('16','效绩考核','多种绩效考核办法标准，为企业提供全面的参考，正面引导员工的工作行为和工作业绩，实现企业战略目标。','upload/hrclass/20141114/14167299477.PNG');
INSERT INTO phpyun_toolbox_class VALUES('17','移交/辞退','工具箱内提供各种辞职申请范本，企业可以进行参考，制定合理的离职流程。','upload/hrclass/20141114/14171978886.PNG');
INSERT INTO phpyun_toolbox_class VALUES('18','其他','企业hr工作中其他事项的参考标准，可以自定义选择添加。','upload/hrclass/20141114/14185027369.PNG');


INSERT INTO phpyun_user_resume VALUES('1','2','1','1','0','1','0','1','0','0','0');

INSERT INTO phpyun_userclass VALUES('1','0','性别','user_sex','0');
INSERT INTO phpyun_userclass VALUES('2','0','婚姻状况','user_marriage','0');
INSERT INTO phpyun_userclass VALUES('3','0','教育程度','user_edu','0');
INSERT INTO phpyun_userclass VALUES('4','0','工作经验','user_word','0');
INSERT INTO phpyun_userclass VALUES('6','1','男','','1');
INSERT INTO phpyun_userclass VALUES('7','1','女','','3');
INSERT INTO phpyun_userclass VALUES('8','2','已婚','','0');
INSERT INTO phpyun_userclass VALUES('9','3','不限','','0');
INSERT INTO phpyun_userclass VALUES('25','0','技能','user_skill','0');
INSERT INTO phpyun_userclass VALUES('11','2','未婚','','2');
INSERT INTO phpyun_userclass VALUES('12','3','高中','','1');
INSERT INTO phpyun_userclass VALUES('13','3','中专','','3');
INSERT INTO phpyun_userclass VALUES('14','3','大专','','4');
INSERT INTO phpyun_userclass VALUES('15','3','本科','','5');
INSERT INTO phpyun_userclass VALUES('16','3','硕士','','6');
INSERT INTO phpyun_userclass VALUES('17','3','博士','','7');
INSERT INTO phpyun_userclass VALUES('18','4','应届毕业生','','1');
INSERT INTO phpyun_userclass VALUES('19','4','1年以上','','2');
INSERT INTO phpyun_userclass VALUES('20','4','2年以上','','3');
INSERT INTO phpyun_userclass VALUES('21','4','3年以上','','4');
INSERT INTO phpyun_userclass VALUES('22','4','5年以上','','5');
INSERT INTO phpyun_userclass VALUES('23','4','8年以上','','6');
INSERT INTO phpyun_userclass VALUES('24','4','10年以上','','7');
INSERT INTO phpyun_userclass VALUES('26','25','外语','','1');
INSERT INTO phpyun_userclass VALUES('27','25','计算机','','2');
INSERT INTO phpyun_userclass VALUES('28','25','其他','','3');
INSERT INTO phpyun_userclass VALUES('29','0','期待薪资','user_salary','0');
INSERT INTO phpyun_userclass VALUES('30','29','面议','','1');
INSERT INTO phpyun_userclass VALUES('31','29','1000以下','','2');
INSERT INTO phpyun_userclass VALUES('32','29','1000 - 1999','','3');
INSERT INTO phpyun_userclass VALUES('33','29','2000 - 2999','','4');
INSERT INTO phpyun_userclass VALUES('34','29','3000 - 4499','','5');
INSERT INTO phpyun_userclass VALUES('35','29','4500 - 5999','','6');
INSERT INTO phpyun_userclass VALUES('36','29','6000 - 7999','','7');
INSERT INTO phpyun_userclass VALUES('37','29','8000 - 9999','','8');
INSERT INTO phpyun_userclass VALUES('38','29','10000及以上','','9');
INSERT INTO phpyun_userclass VALUES('39','0','技能程度','user_ing','0');
INSERT INTO phpyun_userclass VALUES('40','39','一般','','1');
INSERT INTO phpyun_userclass VALUES('41','39','良好','','2');
INSERT INTO phpyun_userclass VALUES('42','39','熟练','','3');
INSERT INTO phpyun_userclass VALUES('43','39','精通','','4');
INSERT INTO phpyun_userclass VALUES('44','0','到岗时间','user_report','0');
INSERT INTO phpyun_userclass VALUES('45','44','随时到岗','','1');
INSERT INTO phpyun_userclass VALUES('46','44','1周以内','','2');
INSERT INTO phpyun_userclass VALUES('47','44','3周以内','','3');
INSERT INTO phpyun_userclass VALUES('48','44','1个月之内','','4');
INSERT INTO phpyun_userclass VALUES('50','44','3个月之内','','5');
INSERT INTO phpyun_userclass VALUES('51','44','不确定','','6');
INSERT INTO phpyun_userclass VALUES('52','0','个人反馈类型','user_message','0');
INSERT INTO phpyun_userclass VALUES('53','52','咨询','','1');
INSERT INTO phpyun_userclass VALUES('54','52','建议','','2');
INSERT INTO phpyun_userclass VALUES('55','52','意见','','3');
INSERT INTO phpyun_userclass VALUES('56','0','工作性质','user_type','0');
INSERT INTO phpyun_userclass VALUES('57','56','不限','','0');
INSERT INTO phpyun_userclass VALUES('58','56','全职','','1');
INSERT INTO phpyun_userclass VALUES('59','56','兼职','','2');
INSERT INTO phpyun_userclass VALUES('100','4','4年以上','','5');
INSERT INTO phpyun_userclass VALUES('101','4','6年以上','','7');
INSERT INTO phpyun_userclass VALUES('112','4','不限','','0');


INSERT INTO phpyun_userid_msg VALUES('1','2','面试邀请','记得带上作品','1','才纵企业管理有限公司','0','1423201612','0','2','广东省东莞市南城区星鹏商务大厦','3月15日','王生','15920258490','1','设计');
INSERT INTO phpyun_userid_msg VALUES('2','0','面试邀请','记得带上作品','1','才纵企业管理有限公司','0','1425007150','0','1','广东省东莞市南城区星鹏商务大厦','3月15日','王生','15920258490','1','设计');




INSERT INTO phpyun_wxnav VALUES('1','我的菜单','0','','','click','1');
INSERT INTO phpyun_wxnav VALUES('2','找工作','0','','','click','2');
INSERT INTO phpyun_wxnav VALUES('3','更多功能','0','','','click','3');
INSERT INTO phpyun_wxnav VALUES('4','我的帐号','1','我的帐号','','click','4');
INSERT INTO phpyun_wxnav VALUES('5','我的消息','1','我的消息','','click','5');
INSERT INTO phpyun_wxnav VALUES('6','面试邀请','1','面试邀请','','click','6');
INSERT INTO phpyun_wxnav VALUES('7','简历查看','1','简历查看','','click','7');
INSERT INTO phpyun_wxnav VALUES('8','刷新简历','1','刷新简历','','click','8');
INSERT INTO phpyun_wxnav VALUES('9','职位搜索','2','职位搜索','','click','9');
INSERT INTO phpyun_wxnav VALUES('10','推荐职位','2','推荐职位','','click','10');
INSERT INTO phpyun_wxnav VALUES('11','周边职位','2','周边职位','','click','11');
INSERT INTO phpyun_wxnav VALUES('12','微招聘','3','','http://www.hr135.com/index.php?m=once','view','12');
INSERT INTO phpyun_wxnav VALUES('13','微简历','3','','	http://www.hr135.com/index.php?m=tiny','view','13');
INSERT INTO phpyun_wxnav VALUES('14','职场资讯','3','','http://www.hr135.com/index.php?m=news','view','14');




