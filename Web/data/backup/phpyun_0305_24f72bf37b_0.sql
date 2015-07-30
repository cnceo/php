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
  KEY Ĭ�ϼ��� (def_job)
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
INSERT INTO phpyun_ad VALUES('1','��ҳ�õ�һ','0','2014-12-16','2015-12-30','pic','','','../upload/pimg/20141216/14203593258.JPG','','','','','','','','3','1','1','1','0','','0');
INSERT INTO phpyun_ad VALUES('2','��ҳ�õƶ�','0','2014-12-16','2015-12-30','pic','','','../upload/pimg/20141216/14220408555.JPG','','','','','','','','3','1','1','2','0','','0');
INSERT INTO phpyun_ad VALUES('3','���������','0','2014-12-16','2015-12-30','pic','','','../upload/pimg/20141216/14187959852.GIF','','','','','','','','11','1','1','2','0','','0');
INSERT INTO phpyun_ad VALUES('4','���������','0','2014-12-16','2015-12-31','pic','','','../upload/pimg/20141216/14259333738.JPG','','','','','','','','11','1','1','2','0','','0');
INSERT INTO phpyun_ad VALUES('5','��¼�õ�һ','0','2014-12-16','2015-12-31','pic','','','../upload/pimg/20141216/14246324283.jpg','','','','','','','','37','1','1','2','0','','0');

INSERT INTO phpyun_ad_class VALUES('1','��ҳ�в�ͼƬ��� ��񣺿�154 ��50','1','','33','2');
INSERT INTO phpyun_ad_class VALUES('3','��ҳ�õƹ���񣺿�774��299','2','ee','100','1');
INSERT INTO phpyun_ad_class VALUES('36','�˲��б��Ҳ���168*120','0','','','2');
INSERT INTO phpyun_ad_class VALUES('5','��ҳ�������','5','','55','1');
INSERT INTO phpyun_ad_class VALUES('6','��ҳ������960X80','4','','12','1');
INSERT INTO phpyun_ad_class VALUES('7','ְλ�б�ҳ���','6','','66','1');
INSERT INTO phpyun_ad_class VALUES('8','��ҳ����ְλ�Ҳ���285*51','1','','1','1');
INSERT INTO phpyun_ad_class VALUES('10','��վ�ײ��������980*60','1','','1','1');
INSERT INTO phpyun_ad_class VALUES('11','�������','1','','0','1');
INSERT INTO phpyun_ad_class VALUES('12','��ҳ�����˲��Ҳ���269*50','2','','0','1');
INSERT INTO phpyun_ad_class VALUES('13','��ҳ������Ƹ�º�����980*60','2','','0','1');
INSERT INTO phpyun_ad_class VALUES('14','��ҳ������Ƹ��˫��������488*60','11','','0','1');
INSERT INTO phpyun_ad_class VALUES('15','��ҳ������Ƹ��������������325*60','1','','0','1');
INSERT INTO phpyun_ad_class VALUES('27','��������ҳ�Ҳ�','1','','','2');
INSERT INTO phpyun_ad_class VALUES('29','ģ��3�в����1','29','','100','1');
INSERT INTO phpyun_ad_class VALUES('34','�����̳���ҳ�õ�','0','','','2');
INSERT INTO phpyun_ad_class VALUES('37','��¼ҳͼƬ�л�','1','','','2');
INSERT INTO phpyun_ad_class VALUES('39','ģ��1_��ҳ������Ƹ�Ҳ�ͼƬ','0','','','2');



INSERT INTO phpyun_admin_config VALUES('sy_smtpemail','820591677@qq.com');
INSERT INTO phpyun_admin_config VALUES('sy_smtpuser','820591677');
INSERT INTO phpyun_admin_config VALUES('sy_smtppass','5291027yanhong');
INSERT INTO phpyun_admin_config VALUES('sy_smtpserverport','25');
INSERT INTO phpyun_admin_config VALUES('sy_msguser','');
INSERT INTO phpyun_admin_config VALUES('sy_msgpw','');
INSERT INTO phpyun_admin_config VALUES('sy_msgapi','smtp.163.com');
INSERT INTO phpyun_admin_config VALUES('sy_hotkeyword','php,php��ְ');
INSERT INTO phpyun_admin_config VALUES('sy_fkeyword','̨��');
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
INSERT INTO phpyun_admin_config VALUES('sy_webname','PHP���˲���Ƹϵͳ');
INSERT INTO phpyun_admin_config VALUES('sy_weburl','http://localhost/toptophr.com');
INSERT INTO phpyun_admin_config VALUES('sy_companydomain','');
INSERT INTO phpyun_admin_config VALUES('sy_webkeyword','Meta �ؼ���');
INSERT INTO phpyun_admin_config VALUES('map_rating','15');
INSERT INTO phpyun_admin_config VALUES('sy_webmeta','Meta ����');
INSERT INTO phpyun_admin_config VALUES('map_x','116.403856');
INSERT INTO phpyun_admin_config VALUES('map_y','39.914704');
INSERT INTO phpyun_admin_config VALUES('sy_webcopyright','Copyright (C) 2009-2015 All Rights Reserved ��Ȩ���� �γ�(������Դ����)');
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
INSERT INTO phpyun_admin_config VALUES('code_web','ע���Ա,ǰ̨��½,һ�仰��Ƹ,��̨��½');
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
INSERT INTO phpyun_admin_config VALUES('sy_webclose','....��վ�����У�');
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
INSERT INTO phpyun_admin_config VALUES('integral_pricename','����');
INSERT INTO phpyun_admin_config VALUES('integral_priceunit','��');
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
INSERT INTO phpyun_admin_config VALUES('sy_bannedip_alert','���ĵ�ǰIP����վ�Ѿ���ֹ���ʣ�����ϵ����Ա����');
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
INSERT INTO phpyun_admin_config VALUES('sy_indexcity','ȫ��');
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
INSERT INTO phpyun_admin_config VALUES('lt_rebates_name','Ԫ');
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

INSERT INTO phpyun_admin_link VALUES('1','�˲���','http://www.phpyun.com ','0','','1','1','0','1356609401','8','3');
INSERT INTO phpyun_admin_link VALUES('2','cms�˲�ϵͳ','http://www.phpyun.com','1','upload/link/20140526/14108767543.PNG','2','1','0','1375927195','0','1');
INSERT INTO phpyun_admin_link VALUES('3','hr135�˲���','http://www.hr135.com','0','','1','1','0','1375927889','0','1');
INSERT INTO phpyun_admin_link VALUES('4','PHPYUN��̳','http://www.phyun.com/bbs','0','','1','1','0','1375927908','0','1');
INSERT INTO phpyun_admin_link VALUES('5','�����˲���','http://www.shyjob.net','0','','1','1','0','1375927908','0','1');
INSERT INTO phpyun_admin_link VALUES('6','phpyun�˲�ϵͳ','http://www.phpyun.com','0','','1','1','0','1375927922','0','1');

INSERT INTO phpyun_admin_log VALUES('1','1','admin','�����������óɹ���','1423192234');
INSERT INTO phpyun_admin_log VALUES('2','1','admin','΢�Ų˵�(ID:4)�����޸ĳɹ�','1423192397');
INSERT INTO phpyun_admin_log VALUES('3','1','admin','ְλ���(ID:1)���óɹ���','1423192533');
INSERT INTO phpyun_admin_log VALUES('4','1','admin','ְλ�Ƽ����óɹ���','1423192548');
INSERT INTO phpyun_admin_log VALUES('5','1','admin','΢�Ų˵�(ID:5)�����޸ĳɹ�','1423193400');
INSERT INTO phpyun_admin_log VALUES('6','1','admin','��Ա�����޸ĳɹ���','1423201036');
INSERT INTO phpyun_admin_log VALUES('7','1','admin','���ݿⱸ��ɾ���ɹ���','1425518469');

INSERT INTO phpyun_admin_navigation VALUES('1','ϵͳ','0','','0','system','18','0');
INSERT INTO phpyun_admin_navigation VALUES('3','����','0','','0','user','16','0');
INSERT INTO phpyun_admin_navigation VALUES('4','����','0','','0','','8','1');
INSERT INTO phpyun_admin_navigation VALUES('5','����','0','','0','generate','7','0');
INSERT INTO phpyun_admin_navigation VALUES('6','��Ӫ','0','','0','operations','6','0');
INSERT INTO phpyun_admin_navigation VALUES('127','����','0','','0','tool','1','0');
INSERT INTO phpyun_admin_navigation VALUES('8','ϵͳ����','1','','0','','4','0');
INSERT INTO phpyun_admin_navigation VALUES('134','�������','124','index.php?m=admin_announcement','0','','1','0');
INSERT INTO phpyun_admin_navigation VALUES('11','��վ����','8','index.php?m=config','2','','10','0');
INSERT INTO phpyun_admin_navigation VALUES('141','�����ʼ�','137','index.php?m=email','0','','0','0');
INSERT INTO phpyun_admin_navigation VALUES('85','��ҵ��Ա����','80','index.php?m=comclass','1','','2','0');
INSERT INTO phpyun_admin_navigation VALUES('142','������ҳ','49','index.php?m=cache&c=news','1','','7','0');
INSERT INTO phpyun_admin_navigation VALUES('1244','һ������','49','index.php?m=cache&c=all','2','','0','0');
INSERT INTO phpyun_admin_navigation VALUES('10','��ҵ','0','','0','com','17','0');
INSERT INTO phpyun_admin_navigation VALUES('1240','��ҵ����','10','','','0','0','0');
INSERT INTO phpyun_admin_navigation VALUES('35','�����û�','3','','0','','0','0');
INSERT INTO phpyun_admin_navigation VALUES('78','���','0','','0','column','8','0');
INSERT INTO phpyun_admin_navigation VALUES('38','�����û��б�','35','index.php?m=user_member','1','','10','0');
INSERT INTO phpyun_admin_navigation VALUES('133','���Ź���','124','index.php?m=admin_news','2','','11','0');
INSERT INTO phpyun_admin_navigation VALUES('143','������','128','index.php?m=admin_style','1','','0','0');
INSERT INTO phpyun_admin_navigation VALUES('80','������','78','','0','','0','0');
INSERT INTO phpyun_admin_navigation VALUES('135','��ҳ�����','124','index.php?m=description','1','','1','0');
INSERT INTO phpyun_admin_navigation VALUES('136','��ҵ�û��б�','1240','index.php?m=com_member','1','','0','1');
INSERT INTO phpyun_admin_navigation VALUES('138','������','13','index.php?m=advertise','1','','7','0');
INSERT INTO phpyun_admin_navigation VALUES('49','ҳ������','5','','0','','0','0');
INSERT INTO phpyun_admin_navigation VALUES('50','���ɻ���','49','index.php?m=cache&c=cache','1','','4','0');
INSERT INTO phpyun_admin_navigation VALUES('128','��վ����','127','','0','','0','0');
INSERT INTO phpyun_admin_navigation VALUES('144','ְλ������','80','index.php?m=admin_job','1','','3','0');
INSERT INTO phpyun_admin_navigation VALUES('86','���й���','80','index.php?m=admin_city','1','','5','0');
INSERT INTO phpyun_admin_navigation VALUES('122','֧������','8','index.php?m=payconfig','1','','3','0');
INSERT INTO phpyun_admin_navigation VALUES('137','��Ӫ����','6','','0','','0','0');
INSERT INTO phpyun_admin_navigation VALUES('124','���Ź���','9','','0','','0','0');
INSERT INTO phpyun_admin_navigation VALUES('126','�û�����','8','index.php?m=userconfig','1','','0','0');
INSERT INTO phpyun_admin_navigation VALUES('103','ͼƬ�ϴ�','89','admin_uploadpic.php','1','','7','1');
INSERT INTO phpyun_admin_navigation VALUES('104','���˻�Ա����','80','index.php?m=userclass','1','','9','0');
INSERT INTO phpyun_admin_navigation VALUES('129','ģ�����','128','index.php?m=admin_template','1','','0','0');
INSERT INTO phpyun_admin_navigation VALUES('1312','�ҵ��ʺ�','1306','index.php?m=admin_user&c=myuser','2','0','10','0');
INSERT INTO phpyun_admin_navigation VALUES('139','��������','137','index.php?m=link','0','','0','0');
INSERT INTO phpyun_admin_navigation VALUES('145','��ҵ����','80','index.php?m=industry','1','','4','1');
INSERT INTO phpyun_admin_navigation VALUES('146','��������','8','index.php?m=navigation','2','','7','0');
INSERT INTO phpyun_admin_navigation VALUES('147','���ݿ�','128','index.php?m=database','0','','0','0');
INSERT INTO phpyun_admin_navigation VALUES('148','������̳','128','index.php?m=admin_uc','1','','4','0');
INSERT INTO phpyun_admin_navigation VALUES('149','΢��Ƹ','1240','index.php?m=admin_once','1','','9','0');
INSERT INTO phpyun_admin_navigation VALUES('150','��������','35','index.php?m=admin_resume','2','','9','0');
INSERT INTO phpyun_admin_navigation VALUES('151','��˾����','1240','index.php?m=admin_company','1','','15','0');
INSERT INTO phpyun_admin_navigation VALUES('152','ְλ����','1240','index.php?m=admin_company_job','1','','14','0');
INSERT INTO phpyun_admin_navigation VALUES('155','��ֵ��¼','137','index.php?m=company_order','1','','0','0');
INSERT INTO phpyun_admin_navigation VALUES('156','���Ѽ�¼','137','index.php?m=company_pay','0','','0','0');
INSERT INTO phpyun_admin_navigation VALUES('157','�ʼ�����','8','index.php?m=emailconfig','1','','6','0');
INSERT INTO phpyun_admin_navigation VALUES('158','��������','8','index.php?m=msgconfig','1','','6','0');
INSERT INTO phpyun_admin_navigation VALUES('159','��ݵ�¼','128','index.php?m=qqconfig','1','','3','0');
INSERT INTO phpyun_admin_navigation VALUES('162','��̨��ֵ','137','index.php?m=recharge','0','','0','0');
INSERT INTO phpyun_admin_navigation VALUES('163','����Ⱥ��','137','index.php?m=information','0','','0','0');
INSERT INTO phpyun_admin_navigation VALUES('164','��ҳ����','49','index.php?m=cache&c=index','2','','10','0');
INSERT INTO phpyun_admin_navigation VALUES('168','�������','49','index.php?m=cache&c=newsclass','1','','6','0');
INSERT INTO phpyun_admin_navigation VALUES('167','������ϸҳ','49','index.php?m=cache&c=archive','1','','5','0');
INSERT INTO phpyun_admin_navigation VALUES('169','�ؼ��ֹ���','137','index.php?m=admin_keyword','1','','6','0');
INSERT INTO phpyun_admin_navigation VALUES('171','���Է���','1216','index.php?m=admin_message','2','','1','0');
INSERT INTO phpyun_admin_navigation VALUES('172','���ż�¼','137','index.php?m=mobliemsg','0','','3','0');
INSERT INTO phpyun_admin_navigation VALUES('173','������Ƹ','1240','index.php?m=hotjob','1','','0','1');
INSERT INTO phpyun_admin_navigation VALUES('174','��ҵ��֤���','1240','index.php?m=comcert','1','','10','0');
INSERT INTO phpyun_admin_navigation VALUES('176','SEO����','8','index.php?m=seo','1','','3','0');
INSERT INTO phpyun_admin_navigation VALUES('177','���ݲɼ�','128','index.php?m=collection','0','','0','0');
INSERT INTO phpyun_admin_navigation VALUES('178','��վ����','128','index.php?m=admin_domain','1','','0','0');
INSERT INTO phpyun_admin_navigation VALUES('179','��ҵģ��','128','index.php?m=comtpl','','','5','0');
INSERT INTO phpyun_admin_navigation VALUES('1239','΢�ſͻ���','128','index.php?m=wx','','','0','0');
INSERT INTO phpyun_admin_navigation VALUES('1238','����Ա��־','1306','index.php?m=admin_log','','','0','0');
INSERT INTO phpyun_admin_navigation VALUES('1267','��Ƹ���б�','1266','index.php?m=zhaopinhui','0','0','0','0');
INSERT INTO phpyun_admin_navigation VALUES('1268','�����Ƹ��','1266','index.php?m=zhaopinhui&c=add','0','0','0','0');
INSERT INTO phpyun_admin_navigation VALUES('1266','��Ƹ�����','2','','0','0','0','0');
INSERT INTO phpyun_admin_navigation VALUES('188','��ҵ���Ź���','1240','index.php?m=comnews','1','','12','0');
INSERT INTO phpyun_admin_navigation VALUES('189','��ҵ��Ʒ����','1240','index.php?m=comproduct','1','','13','0');
INSERT INTO phpyun_admin_navigation VALUES('2','��Ƹ��','0','','0','zph','12','0');
INSERT INTO phpyun_admin_navigation VALUES('1269','�λ���ҵ','1266','index.php?m=zhaopinhui&c=com','0','0','0','0');
INSERT INTO phpyun_admin_navigation VALUES('1270','��������','8','index.php?m=integral','0','0','0','0');
INSERT INTO phpyun_admin_navigation VALUES('170','��ҵ���','80','index.php?m=admin_industry','2','','4','0');
INSERT INTO phpyun_admin_navigation VALUES('195','������֤���','35','index.php?m=usercert','0','','6','0');
INSERT INTO phpyun_admin_navigation VALUES('1197','��ְ��ѯ','35','index.php?m=admin_msg','0','','2','0');
INSERT INTO phpyun_admin_navigation VALUES('1203','΢����','35','index.php?m=admin_tiny','0','','4','0');
INSERT INTO phpyun_admin_navigation VALUES('1210','�罻','0','','0','social','11','0');
INSERT INTO phpyun_admin_navigation VALUES('9','����','0','','0','news','13','0');
INSERT INTO phpyun_admin_navigation VALUES('1212','�ʴ����','1216','index.php?m=admin_question','1','','0','0');
INSERT INTO phpyun_admin_navigation VALUES('1213','�ʴ����','80','index.php?m=question_class','','','0','0');
INSERT INTO phpyun_admin_navigation VALUES('1216','�罻','1210','','0','','0','0');
INSERT INTO phpyun_admin_navigation VALUES('1217','���Թ���','1216','index.php?m=friend_message','','','0','0');
INSERT INTO phpyun_admin_navigation VALUES('1218','��̬����','1216','index.php?m=friend_state','','','0','0');
INSERT INTO phpyun_admin_navigation VALUES('1219','�ٱ�ԭ�����','80','index.php?m=admin_reason','1','','0','0');
INSERT INTO phpyun_admin_navigation VALUES('1220','���ݵ���','128','index.php?m=datacall','1','','0','0');
INSERT INTO phpyun_admin_navigation VALUES('1223','�ٱ�����','137','index.php?m=report','1','','0','0');
INSERT INTO phpyun_admin_navigation VALUES('1224','ְλ����','1240','index.php?m=admin_searchest','1','','7','0');
INSERT INTO phpyun_admin_navigation VALUES('1225','�ٱ�����','137','index.php?m=report&type=0','1','','0','1');
INSERT INTO phpyun_admin_navigation VALUES('1234','��ҵ����','1240','index.php?m=com_pl','1','0','11','0');
INSERT INTO phpyun_admin_navigation VALUES('1243','�ƻ�����','128','index.php?m=cron','','','5','0');
INSERT INTO phpyun_admin_navigation VALUES('1260','�������ؼ�¼','35','index.php?m=down','1','0','1','0');
INSERT INTO phpyun_admin_navigation VALUES('1261','ְλ�����¼','1240','index.php?m=apply','1','0','1','0');
INSERT INTO phpyun_admin_navigation VALUES('1262','�������Լ�¼','1240','index.php?m=invite','1','0','1','0');
INSERT INTO phpyun_admin_navigation VALUES('1264','��Ա��־','1216','index.php?m=member_log','0','0','0','0');
INSERT INTO phpyun_admin_navigation VALUES('1271','��ҵ��Ա�ȼ�','1240','index.php?m=admin_company_rating','','0','0','0');
INSERT INTO phpyun_admin_navigation VALUES('1273','�ʼ���¼','137','index.php?m=emailmsg','0','0','0','0');
INSERT INTO phpyun_admin_navigation VALUES('1274','�һ���Ʒ����','1284','index.php?m=reward','','0','0','0');
INSERT INTO phpyun_admin_navigation VALUES('1276','������','124','index.php?m=hr','','','6','0');
INSERT INTO phpyun_admin_navigation VALUES('1277','��ҳ������','49','index.php?m=cache&c=once','1','0','2','0');
INSERT INTO phpyun_admin_navigation VALUES('1278','�������','124','index.php?m=admin_news&c=news','1','','10','0');
INSERT INTO phpyun_admin_navigation VALUES('1280','���������¼','35','index.php?m=look_resume','0','0','0','0');
INSERT INTO phpyun_admin_navigation VALUES('1281','ְλ�����¼','1240','index.php?m=look_job','0','0','0','0');
INSERT INTO phpyun_admin_navigation VALUES('12','���','0','','0','ban','9','0');
INSERT INTO phpyun_admin_navigation VALUES('13','������','12','','0','0','0','0');
INSERT INTO phpyun_admin_navigation VALUES('14','�̳�','0','','0','jf','10','0');
INSERT INTO phpyun_admin_navigation VALUES('1284','�̳ǹ���','14','','0','jifen','0','0');
INSERT INTO phpyun_admin_navigation VALUES('1285','������','13','index.php?m=advertise&c=class','0','0','0','0');
INSERT INTO phpyun_admin_navigation VALUES('1286','��ӹ��','13','index.php?m=advertise&c=ad_add','1','0','6','0');
INSERT INTO phpyun_admin_navigation VALUES('1287','�������','124','index.php?m=admin_news&c=group','1','0','8','0');
INSERT INTO phpyun_admin_navigation VALUES('1289','��˾����','1240','index.php?m=admin_searchest&c=company','1','0','8','0');
INSERT INTO phpyun_admin_navigation VALUES('1290','��������','35','index.php?m=admin_searchest&c=resume','0','0','0','0');
INSERT INTO phpyun_admin_navigation VALUES('1292','�һ���Ʒ��¼','1284','index.php?m=reward_list','1','0','9','0');
INSERT INTO phpyun_admin_navigation VALUES('1302','���������','124','index.php?m=hrclass','1','0','5','0');
INSERT INTO phpyun_admin_navigation VALUES('1303','��ҳ�����','80','index.php?m=desc_class','0','0','0','0');
INSERT INTO phpyun_admin_navigation VALUES('1304','Ԥ������','128','index.php?m=warning','0','0','0','0');
INSERT INTO phpyun_admin_navigation VALUES('15','����Ա','0','','0','guanliyuan','0','0');
INSERT INTO phpyun_admin_navigation VALUES('1306','��̨����Ա','15','','0','0','0','0');
INSERT INTO phpyun_admin_navigation VALUES('1307','����Ա�б�','1306','index.php?m=admin_user','1','0','8','0');
INSERT INTO phpyun_admin_navigation VALUES('1308','��ӹ���Ա','1306','index.php?m=admin_user&c=add','1','0','7','0');
INSERT INTO phpyun_admin_navigation VALUES('1309','����Ա����','1306','index.php?m=admin_user&c=group','0','0','3','0');
INSERT INTO phpyun_admin_navigation VALUES('1310','��ӹ���Ա����','1306','index.php?m=admin_user&c=addgroup','0','0','4','0');
INSERT INTO phpyun_admin_navigation VALUES('1320','���Ĺ���','137','index.php?m=subscribe','1','0','0','0');
INSERT INTO phpyun_admin_navigation VALUES('1313','����XML','49','index.php?m=admin_xml','0','0','0','0');
INSERT INTO phpyun_admin_navigation VALUES('1314','�޸��ҵ�����','1306','index.php?m=admin_user&c=pass','1','0','9','0');
INSERT INTO phpyun_admin_navigation VALUES('1315','ϵͳ��Ϣ','1216','index.php?m=sysnews','0','0','0','0');
INSERT INTO phpyun_admin_navigation VALUES('1316','��վ��ͼ','8','index.php?m=navmap','0','0','0','0');
INSERT INTO phpyun_admin_navigation VALUES('1319','վ����','1216','index.php?m=friend_letter','1','0','0','0');
INSERT INTO phpyun_admin_navigation VALUES('1318','ģ������','8','index.php?m=model_config','1','0','9','0');
INSERT INTO phpyun_admin_navigation VALUES('1321','ҳ������','8','index.php?m=web_config','1','0','8','0');
INSERT INTO phpyun_admin_navigation VALUES('1322','ע������','8','index.php?m=regset','','','0','0');


INSERT INTO phpyun_admin_user VALUES('1','1','admin','21232f297a57a5a743894a0e4a801fc3','��������Ա','0','1425518445');

INSERT INTO phpyun_admin_user_group VALUES('1','��������Ա','a:127:{i:0;s:1:\"1\";i:1;s:1:\"8\";i:2;s:2:\"11\";i:3;s:4:\"1318\";i:4;s:4:\"1321\";i:5;s:3:\"146\";i:6;s:3:\"157\";i:7;s:3:\"158\";i:8;s:3:\"122\";i:9;s:3:\"176\";i:10;s:3:\"126\";i:11;s:4:\"1270\";i:12;s:4:\"1316\";i:13;s:4:\"1322\";i:14;s:2:\"10\";i:15;s:4:\"1240\";i:16;s:3:\"151\";i:17;s:3:\"152\";i:18;s:3:\"189\";i:19;s:3:\"188\";i:20;s:4:\"1234\";i:21;s:3:\"174\";i:22;s:3:\"149\";i:23;s:4:\"1289\";i:24;s:4:\"1224\";i:25;s:4:\"1261\";i:26;s:4:\"1262\";i:27;s:4:\"1271\";i:28;s:4:\"1281\";i:29;s:1:\"3\";i:30;s:2:\"35\";i:31;s:2:\"38\";i:32;s:3:\"150\";i:33;s:3:\"195\";i:34;s:4:\"1203\";i:35;s:4:\"1197\";i:36;s:4:\"1260\";i:37;s:4:\"1280\";i:38;s:4:\"1290\";i:39;s:1:\"9\";i:40;s:3:\"124\";i:41;s:3:\"133\";i:42;s:4:\"1278\";i:43;s:4:\"1287\";i:44;s:4:\"1276\";i:45;s:4:\"1302\";i:46;s:3:\"134\";i:47;s:3:\"135\";i:48;s:1:\"2\";i:49;s:4:\"1266\";i:50;s:4:\"1267\";i:51;s:4:\"1268\";i:52;s:4:\"1269\";i:53;s:4:\"1210\";i:54;s:4:\"1216\";i:55;s:3:\"171\";i:56;s:4:\"1212\";i:57;s:4:\"1217\";i:58;s:4:\"1218\";i:59;s:4:\"1264\";i:60;s:4:\"1315\";i:61;s:4:\"1319\";i:62;s:2:\"14\";i:63;s:4:\"1284\";i:64;s:4:\"1292\";i:65;s:4:\"1274\";i:66;s:2:\"12\";i:67;s:2:\"13\";i:68;s:3:\"138\";i:69;s:4:\"1286\";i:70;s:4:\"1285\";i:71;s:2:\"78\";i:72;s:2:\"80\";i:73;s:3:\"104\";i:74;s:2:\"86\";i:75;s:3:\"170\";i:76;s:3:\"144\";i:77;s:2:\"85\";i:78;s:4:\"1213\";i:79;s:4:\"1219\";i:80;s:4:\"1303\";i:81;s:1:\"5\";i:82;s:2:\"49\";i:83;s:3:\"164\";i:84;s:3:\"142\";i:85;s:3:\"168\";i:86;s:3:\"167\";i:87;s:2:\"50\";i:88;s:4:\"1277\";i:89;s:4:\"1244\";i:90;s:4:\"1313\";i:91;s:1:\"6\";i:92;s:3:\"137\";i:93;s:3:\"169\";i:94;s:3:\"172\";i:95;s:3:\"141\";i:96;s:3:\"139\";i:97;s:3:\"155\";i:98;s:3:\"156\";i:99;s:3:\"162\";i:100;s:3:\"163\";i:101;s:4:\"1223\";i:102;s:4:\"1273\";i:103;s:4:\"1320\";i:104;s:3:\"127\";i:105;s:3:\"128\";i:106;s:3:\"179\";i:107;s:4:\"1243\";i:108;s:3:\"148\";i:109;s:3:\"159\";i:110;s:3:\"143\";i:111;s:3:\"129\";i:112;s:3:\"147\";i:113;s:3:\"177\";i:114;s:3:\"178\";i:115;s:4:\"1239\";i:116;s:4:\"1220\";i:117;s:4:\"1304\";i:118;s:2:\"15\";i:119;s:4:\"1306\";i:120;s:4:\"1312\";i:121;s:4:\"1314\";i:122;s:4:\"1307\";i:123;s:4:\"1308\";i:124;s:4:\"1310\";i:125;s:4:\"1309\";i:126;s:4:\"1238\";}');



INSERT INTO phpyun_atn VALUES('2','2','1','1423192152','1','2');



INSERT INTO phpyun_banner VALUES('1','1','../upload/company/20150206/14324100252.JPG');



INSERT INTO phpyun_city_class VALUES('1','0','����','B','1','0','1');
INSERT INTO phpyun_city_class VALUES('2','0','�Ϻ�','S','1','0','2');
INSERT INTO phpyun_city_class VALUES('3','0','���','T','1','0','3');
INSERT INTO phpyun_city_class VALUES('4','0','����','C','1','0','4');
INSERT INTO phpyun_city_class VALUES('5','0','�ӱ�','H','1','0','5');
INSERT INTO phpyun_city_class VALUES('6','0','ɽ��','S','1','0','6');
INSERT INTO phpyun_city_class VALUES('7','0','���ɹ�','N','1','0','7');
INSERT INTO phpyun_city_class VALUES('8','0','����','L','1','0','9');
INSERT INTO phpyun_city_class VALUES('9','0','����','J','1','0','10');
INSERT INTO phpyun_city_class VALUES('10','0','������','H','1','0','11');
INSERT INTO phpyun_city_class VALUES('11','0','����','J','1','0','8');
INSERT INTO phpyun_city_class VALUES('12','0','�㽭','Z','1','0','12');
INSERT INTO phpyun_city_class VALUES('13','0','����','A','1','0','13');
INSERT INTO phpyun_city_class VALUES('14','0','����','F','1','0','14');
INSERT INTO phpyun_city_class VALUES('15','0','����','J','1','0','15');
INSERT INTO phpyun_city_class VALUES('16','0','ɽ��','S','1','0','16');
INSERT INTO phpyun_city_class VALUES('17','0','����','H','1','0','17');
INSERT INTO phpyun_city_class VALUES('18','0','����','H','1','0','18');
INSERT INTO phpyun_city_class VALUES('19','0','����','H','1','0','33');
INSERT INTO phpyun_city_class VALUES('20','0','�㶫','G','1','0','32');
INSERT INTO phpyun_city_class VALUES('21','0','����','G','1','0','31');
INSERT INTO phpyun_city_class VALUES('22','0','����','H','1','0','30');
INSERT INTO phpyun_city_class VALUES('23','0','�Ĵ�','S','1','0','29');
INSERT INTO phpyun_city_class VALUES('24','0','����','G','1','0','28');
INSERT INTO phpyun_city_class VALUES('25','0','����','Y','1','0','27');
INSERT INTO phpyun_city_class VALUES('26','0','����','X','1','0','26');
INSERT INTO phpyun_city_class VALUES('27','0','����','S','1','0','25');
INSERT INTO phpyun_city_class VALUES('28','0','����','G','1','0','24');
INSERT INTO phpyun_city_class VALUES('29','0','����','N','1','0','23');
INSERT INTO phpyun_city_class VALUES('30','0','�ຣ','Q','1','0','22');
INSERT INTO phpyun_city_class VALUES('31','0','�½�','X','1','0','21');
INSERT INTO phpyun_city_class VALUES('32','0','���','X','1','0','20');
INSERT INTO phpyun_city_class VALUES('34','0','̨��','T','1','0','19');
INSERT INTO phpyun_city_class VALUES('35','0','����','Q','1','0','34');
INSERT INTO phpyun_city_class VALUES('36','1','����','B','1','1','1');
INSERT INTO phpyun_city_class VALUES('37','2','�Ϻ�','S','1','1','0');
INSERT INTO phpyun_city_class VALUES('38','3','���','T','1','1','0');
INSERT INTO phpyun_city_class VALUES('39','4','����','C','1','1','0');
INSERT INTO phpyun_city_class VALUES('40','5','ʯ��ׯ','S','1','1','0');
INSERT INTO phpyun_city_class VALUES('41','5','����','H','1','1','0');
INSERT INTO phpyun_city_class VALUES('42','5','��̨','X','1','1','0');
INSERT INTO phpyun_city_class VALUES('43','5','����','B','1','1','0');
INSERT INTO phpyun_city_class VALUES('44','5','�żҿ�','Z','1','1','0');
INSERT INTO phpyun_city_class VALUES('45','5','�е�','C','1','1','0');
INSERT INTO phpyun_city_class VALUES('46','5','�ȷ�','L','1','1','0');
INSERT INTO phpyun_city_class VALUES('47','5','��ɽ','T','1','1','0');
INSERT INTO phpyun_city_class VALUES('48','5','�ػʵ�','Q','1','1','0');
INSERT INTO phpyun_city_class VALUES('49','5','����','C','1','1','0');
INSERT INTO phpyun_city_class VALUES('50','5','��ˮ','H','1','1','0');
INSERT INTO phpyun_city_class VALUES('51','6','̫ԭ','T','1','1','0');
INSERT INTO phpyun_city_class VALUES('52','6','��ͬ','D','1','1','0');
INSERT INTO phpyun_city_class VALUES('53','6','��Ȫ','Y','1','1','0');
INSERT INTO phpyun_city_class VALUES('54','6','����','C','1','1','0');
INSERT INTO phpyun_city_class VALUES('55','6','����','J','1','1','0');
INSERT INTO phpyun_city_class VALUES('56','6','˷��','S','1','1','0');
INSERT INTO phpyun_city_class VALUES('57','6','����','L','1','1','0');
INSERT INTO phpyun_city_class VALUES('58','6','����','X','1','1','0');
INSERT INTO phpyun_city_class VALUES('59','6','����','J','1','1','0');
INSERT INTO phpyun_city_class VALUES('60','6','�ٷ�','L','1','1','0');
INSERT INTO phpyun_city_class VALUES('61','6','�˳�','Y','1','1','0');
INSERT INTO phpyun_city_class VALUES('62','7','���ͺ���','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('63','7','��ͷ','B','1','0','0');
INSERT INTO phpyun_city_class VALUES('64','7','�ں�','W','1','0','0');
INSERT INTO phpyun_city_class VALUES('65','7','���','C','1','0','0');
INSERT INTO phpyun_city_class VALUES('66','7','���ױ���','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('67','7','��������','A','1','0','0');
INSERT INTO phpyun_city_class VALUES('68','7','����ľ��','Z','1','0','0');
INSERT INTO phpyun_city_class VALUES('69','7','�˰�����','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('70','7','��������','W','1','0','0');
INSERT INTO phpyun_city_class VALUES('71','7','���ֹ���','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('72','7','��������','B','1','0','0');
INSERT INTO phpyun_city_class VALUES('73','7','��������','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('74','8','����','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('75','8','����','D','1','0','0');
INSERT INTO phpyun_city_class VALUES('76','8','��ɽ','A','1','0','0');
INSERT INTO phpyun_city_class VALUES('77','8','��˳','F','1','0','0');
INSERT INTO phpyun_city_class VALUES('78','8','��Ϫ','B','1','0','0');
INSERT INTO phpyun_city_class VALUES('79','8','����','D','1','0','0');
INSERT INTO phpyun_city_class VALUES('80','8','����','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('81','8','Ӫ��','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('82','8','����','F','1','0','0');
INSERT INTO phpyun_city_class VALUES('83','8','����','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('84','8','�̽�','P','1','0','0');
INSERT INTO phpyun_city_class VALUES('85','8','����','T','1','0','0');
INSERT INTO phpyun_city_class VALUES('86','8','����','C','1','0','0');
INSERT INTO phpyun_city_class VALUES('87','8','��«��','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('88','9','����','C','1','0','0');
INSERT INTO phpyun_city_class VALUES('89','9','����','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('90','9','��ƽ','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('91','9','��Դ','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('92','9','ͨ��','T','1','0','0');
INSERT INTO phpyun_city_class VALUES('93','9','��ɽ','B','1','0','0');
INSERT INTO phpyun_city_class VALUES('94','9','��ԭ','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('95','9','�׳�','B','1','0','0');
INSERT INTO phpyun_city_class VALUES('96','9','�ӱ�','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('97','10','������','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('98','10','�������','Q','1','0','0');
INSERT INTO phpyun_city_class VALUES('99','10','ĵ����','M','1','0','0');
INSERT INTO phpyun_city_class VALUES('100','10','��ľ˹','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('101','10','����','D','1','0','0');
INSERT INTO phpyun_city_class VALUES('102','10','�绯','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('103','10','�׸�','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('104','10','����','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('105','10','�ں�','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('106','10','˫Ѽɽ','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('107','10','����','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('108','10','��̨��','Q','1','0','0');
INSERT INTO phpyun_city_class VALUES('109','10','���˰���','D','1','0','0');
INSERT INTO phpyun_city_class VALUES('110','11','�Ͼ�','N','1','1','11');
INSERT INTO phpyun_city_class VALUES('111','11','��','Z','1','1','2');
INSERT INTO phpyun_city_class VALUES('112','11','����','S','1','1','3');
INSERT INTO phpyun_city_class VALUES('113','11','��ͨ','N','1','1','4');
INSERT INTO phpyun_city_class VALUES('114','11','����','Y','1','1','5');
INSERT INTO phpyun_city_class VALUES('115','11','�γ�','Y','1','1','6');
INSERT INTO phpyun_city_class VALUES('116','11','����','X','1','1','7');
INSERT INTO phpyun_city_class VALUES('117','11','���Ƹ�','L','1','0','8');
INSERT INTO phpyun_city_class VALUES('118','11','����','C','1','0','9');
INSERT INTO phpyun_city_class VALUES('119','11','����','W','1','0','10');
INSERT INTO phpyun_city_class VALUES('120','11','��Ǩ','S','1','0','1');
INSERT INTO phpyun_city_class VALUES('121','11','̩��','T','1','0','12');
INSERT INTO phpyun_city_class VALUES('122','11','����','H','1','0','13');
INSERT INTO phpyun_city_class VALUES('123','12','����','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('124','12','����','N','1','0','0');
INSERT INTO phpyun_city_class VALUES('125','12','����','W','1','0','0');
INSERT INTO phpyun_city_class VALUES('126','12','����','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('127','12','����','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('128','12','����','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('129','12','��','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('130','12','����','Q','1','0','0');
INSERT INTO phpyun_city_class VALUES('131','12','��ɽ','Z','1','0','0');
INSERT INTO phpyun_city_class VALUES('132','12','̨��','T','1','0','0');
INSERT INTO phpyun_city_class VALUES('133','12','��ˮ','L','1','1','0');
INSERT INTO phpyun_city_class VALUES('134','13','�Ϸ�','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('135','13','�ߺ�','W','1','0','0');
INSERT INTO phpyun_city_class VALUES('136','13','����','B','1','0','0');
INSERT INTO phpyun_city_class VALUES('137','13','��ɽ','M','1','0','0');
INSERT INTO phpyun_city_class VALUES('138','13','����','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('139','13','ͭ��','T','1','0','0');
INSERT INTO phpyun_city_class VALUES('140','13','����','A','1','0','0');
INSERT INTO phpyun_city_class VALUES('141','13','��ɽ','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('142','13','����','C','1','0','0');
INSERT INTO phpyun_city_class VALUES('143','13','����','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('144','13','����','C','1','0','0');
INSERT INTO phpyun_city_class VALUES('145','13','����','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('146','13','����','C','1','0','0');
INSERT INTO phpyun_city_class VALUES('147','13','����','B','1','0','0');
INSERT INTO phpyun_city_class VALUES('148','13','����','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('149','13','����','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('150','13','����','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('151','14','����','F','1','0','0');
INSERT INTO phpyun_city_class VALUES('152','14','����','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('153','14','����','P','1','0','0');
INSERT INTO phpyun_city_class VALUES('154','14','����','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('155','14','Ȫ��','Q','1','0','0');
INSERT INTO phpyun_city_class VALUES('156','14','����','Z','1','0','0');
INSERT INTO phpyun_city_class VALUES('157','14','��ƽ','N','1','0','0');
INSERT INTO phpyun_city_class VALUES('158','14','����','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('159','14','����','N','1','0','0');
INSERT INTO phpyun_city_class VALUES('160','15','�ϲ�','N','1','0','0');
INSERT INTO phpyun_city_class VALUES('161','15','������','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('162','15','�Ž�','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('163','15','ӥ̶','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('164','15','Ƽ��','P','1','0','0');
INSERT INTO phpyun_city_class VALUES('165','15','����','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('166','15','����','G','1','0','0');
INSERT INTO phpyun_city_class VALUES('167','15','����','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('168','15','�˴�','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('169','15','����','F','1','0','0');
INSERT INTO phpyun_city_class VALUES('170','15','����','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('171','16','����','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('172','16','�ൺ','Q','1','0','0');
INSERT INTO phpyun_city_class VALUES('173','16','�Ͳ�','Z','1','0','0');
INSERT INTO phpyun_city_class VALUES('174','16','��ׯ','Z','1','0','0');
INSERT INTO phpyun_city_class VALUES('175','16','��Ӫ','D','1','0','0');
INSERT INTO phpyun_city_class VALUES('176','16','��̨','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('177','16','Ϋ��','W','1','0','0');
INSERT INTO phpyun_city_class VALUES('178','16','����','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('179','16','̩��','T','1','0','0');
INSERT INTO phpyun_city_class VALUES('180','16','����','W','1','0','0');
INSERT INTO phpyun_city_class VALUES('181','16','����','R','1','0','0');
INSERT INTO phpyun_city_class VALUES('182','16','����','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('183','16','����','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('184','16','����','D','1','0','0');
INSERT INTO phpyun_city_class VALUES('185','16','�ĳ�','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('186','16','����','B','1','0','0');
INSERT INTO phpyun_city_class VALUES('187','16','����','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('188','17','����','K','1','0','0');
INSERT INTO phpyun_city_class VALUES('189','17','����','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('190','17','ƽ��ɽ','P','1','0','0');
INSERT INTO phpyun_city_class VALUES('191','17','����','A','1','0','0');
INSERT INTO phpyun_city_class VALUES('192','17','�ױ�','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('193','17','����','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('194','17','����','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('195','17','���','P','1','0','0');
INSERT INTO phpyun_city_class VALUES('196','17','���','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('197','17','���','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('198','17','����Ͽ','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('199','17','����','N','1','0','0');
INSERT INTO phpyun_city_class VALUES('200','17','����','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('201','17','����','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('202','17','�ܿ�','Z','1','0','0');
INSERT INTO phpyun_city_class VALUES('203','17','פ���','Z','1','0','0');
INSERT INTO phpyun_city_class VALUES('204','17','��Դ','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('205','18','�人','W','1','0','0');
INSERT INTO phpyun_city_class VALUES('206','18','�˲�','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('207','18','����','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('208','18','�差','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('209','18','��ʯ','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('210','18','����','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('211','18','�Ƹ�','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('212','18','ʮ��','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('213','18','��ʩ','E','1','0','0');
INSERT INTO phpyun_city_class VALUES('214','18','Ǳ��','Q','1','0','0');
INSERT INTO phpyun_city_class VALUES('215','18','����','T','1','0','0');
INSERT INTO phpyun_city_class VALUES('216','18','����','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('217','18','����','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('218','18','����','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('219','18','Т��','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('220','18','����','E','1','0','0');
INSERT INTO phpyun_city_class VALUES('221','19','��ɳ','C','1','0','0');
INSERT INTO phpyun_city_class VALUES('222','19','����','C','1','0','0');
INSERT INTO phpyun_city_class VALUES('223','19','����','Z','1','0','0');
INSERT INTO phpyun_city_class VALUES('224','19','��̶','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('225','19','����','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('226','19','����','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('227','19','����','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('228','19','����','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('229','19','¦��','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('230','19','����','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('231','19','����','C','1','0','0');
INSERT INTO phpyun_city_class VALUES('232','19','����','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('233','19','����','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('234','19','�żҽ�','Z','1','0','0');
INSERT INTO phpyun_city_class VALUES('235','20','����','G','1','0','0');
INSERT INTO phpyun_city_class VALUES('236','20','����','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('237','20','�麣','Z','1','0','0');
INSERT INTO phpyun_city_class VALUES('238','20','��ͷ','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('239','20','��ݸ','D','1','0','0');
INSERT INTO phpyun_city_class VALUES('240','20','��ɽ','Z','1','0','0');
INSERT INTO phpyun_city_class VALUES('241','20','��ɽ','F','1','0','0');
INSERT INTO phpyun_city_class VALUES('242','20','�ع�','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('243','20','����','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('244','20','տ��','Z','1','0','0');
INSERT INTO phpyun_city_class VALUES('245','20','����','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('246','20','����','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('247','20','÷��','M','1','0','0');
INSERT INTO phpyun_city_class VALUES('248','20','��β','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('249','20','��Դ','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('250','20','����','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('251','20','��Զ','Q','1','0','0');
INSERT INTO phpyun_city_class VALUES('252','20','����','C','1','0','0');
INSERT INTO phpyun_city_class VALUES('253','20','����','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('254','20','�Ƹ�','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('255','21','����','N','1','0','0');
INSERT INTO phpyun_city_class VALUES('256','21','����','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('257','21','����','G','1','0','0');
INSERT INTO phpyun_city_class VALUES('258','21','����','W','1','0','0');
INSERT INTO phpyun_city_class VALUES('259','21','����','B','1','0','0');
INSERT INTO phpyun_city_class VALUES('260','21','���Ǹ�','F','1','0','0');
INSERT INTO phpyun_city_class VALUES('261','21','����','Q','1','0','0');
INSERT INTO phpyun_city_class VALUES('262','21','���','G','1','0','0');
INSERT INTO phpyun_city_class VALUES('263','21','����','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('264','21','����','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('265','21','����','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('266','21','����','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('267','21','��ɫ','B','1','0','0');
INSERT INTO phpyun_city_class VALUES('268','21','�ӳ�','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('269','22','����','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('270','22','����','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('271','23','�ɶ�','C','1','0','0');
INSERT INTO phpyun_city_class VALUES('272','23','����','M','1','0','0');
INSERT INTO phpyun_city_class VALUES('273','23','����','D','1','0','0');
INSERT INTO phpyun_city_class VALUES('274','23','�Թ�','Z','1','0','0');
INSERT INTO phpyun_city_class VALUES('275','23','��֦��','P','1','0','0');
INSERT INTO phpyun_city_class VALUES('276','23','��Ԫ','G','1','0','0');
INSERT INTO phpyun_city_class VALUES('277','23','�ڽ�','N','1','0','0');
INSERT INTO phpyun_city_class VALUES('278','23','��ɽ','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('279','23','�ϳ�','N','1','0','0');
INSERT INTO phpyun_city_class VALUES('280','23','�˱�','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('281','23','�㰲','G','1','0','0');
INSERT INTO phpyun_city_class VALUES('282','23','�ﴨ','D','1','0','0');
INSERT INTO phpyun_city_class VALUES('283','23','�Ű�','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('284','23','üɽ','M','1','0','0');
INSERT INTO phpyun_city_class VALUES('285','23','����','G','1','0','0');
INSERT INTO phpyun_city_class VALUES('286','23','��ɽ','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('287','23','����','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('288','24','����','G','1','0','0');
INSERT INTO phpyun_city_class VALUES('289','24','����ˮ','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('290','24','����','Z','1','0','0');
INSERT INTO phpyun_city_class VALUES('291','24','��˳','A','1','0','0');
INSERT INTO phpyun_city_class VALUES('292','24','ͭ��','T','1','0','0');
INSERT INTO phpyun_city_class VALUES('293','24','ǭ����','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('294','24','�Ͻ�','B','1','0','0');
INSERT INTO phpyun_city_class VALUES('295','24','ǭ����','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('296','24','ǭ��','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('297','25','����','K','1','1','0');
INSERT INTO phpyun_city_class VALUES('298','25','����','D','1','1','0');
INSERT INTO phpyun_city_class VALUES('299','25','����','Q','1','1','0');
INSERT INTO phpyun_city_class VALUES('300','25','��Ϫ','Y','1','1','0');
INSERT INTO phpyun_city_class VALUES('301','25','��ͨ','Z','1','1','0');
INSERT INTO phpyun_city_class VALUES('302','25','����','C','1','1','0');
INSERT INTO phpyun_city_class VALUES('303','25','���','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('304','25','��ɽ','W','1','0','0');
INSERT INTO phpyun_city_class VALUES('305','25','˼é','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('306','25','��˫��','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('307','25','��ɽ','B','1','0','0');
INSERT INTO phpyun_city_class VALUES('308','25','�º�','D','1','0','0');
INSERT INTO phpyun_city_class VALUES('309','25','����','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('310','25','ŭ��','N','1','0','0');
INSERT INTO phpyun_city_class VALUES('311','25','����','D','1','0','0');
INSERT INTO phpyun_city_class VALUES('312','25','�ٲ�','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('313','26','����','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('314','26','�տ���','R','1','0','0');
INSERT INTO phpyun_city_class VALUES('315','26','ɽ��','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('316','26','��֥','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('317','26','����','C','1','0','0');
INSERT INTO phpyun_city_class VALUES('318','26','����','A','1','0','0');
INSERT INTO phpyun_city_class VALUES('319','26','����','N','1','0','0');
INSERT INTO phpyun_city_class VALUES('320','27','����','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('321','27','����','B','1','0','0');
INSERT INTO phpyun_city_class VALUES('322','27','����','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('323','27','ͭ��','T','1','0','0');
INSERT INTO phpyun_city_class VALUES('324','27','μ��','W','1','0','0');
INSERT INTO phpyun_city_class VALUES('325','27','�Ӱ�','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('326','27','����','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('327','27','����','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('328','27','����','A','1','1','0');
INSERT INTO phpyun_city_class VALUES('329','27','����','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('330','28','����','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('331','28','������','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('332','28','���','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('333','28','����','B','1','0','0');
INSERT INTO phpyun_city_class VALUES('334','28','��ˮ','T','1','0','0');
INSERT INTO phpyun_city_class VALUES('335','28','��Ȫ','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('336','28','��Ҵ','Z','1','0','0');
INSERT INTO phpyun_city_class VALUES('337','28','����','W','1','0','0');
INSERT INTO phpyun_city_class VALUES('338','28','����','D','1','0','0');
INSERT INTO phpyun_city_class VALUES('339','28','¤��','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('340','28','ƽ��','P','1','0','0');
INSERT INTO phpyun_city_class VALUES('341','28','����','Q','1','0','0');
INSERT INTO phpyun_city_class VALUES('342','28','����','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('343','28','����','G','1','0','0');
INSERT INTO phpyun_city_class VALUES('344','29','����','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('345','29','ʯ��ɽ','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('346','29','����','W','1','0','0');
INSERT INTO phpyun_city_class VALUES('347','29','��ԭ','G','1','0','0');
INSERT INTO phpyun_city_class VALUES('348','30','����','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('349','30','����','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('350','30','����','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('351','30','����','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('352','30','����','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('353','30','����','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('354','30','����','G','1','0','0');
INSERT INTO phpyun_city_class VALUES('355','30','����','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('356','31','��³ľ��','W','1','0','0');
INSERT INTO phpyun_city_class VALUES('357','31','ʯ����','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('358','31','������','K','1','0','0');
INSERT INTO phpyun_city_class VALUES('359','31','����','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('360','31','������','B','1','0','0');
INSERT INTO phpyun_city_class VALUES('361','31','����','C','1','0','0');
INSERT INTO phpyun_city_class VALUES('362','31','������','K','1','0','0');
INSERT INTO phpyun_city_class VALUES('363','31','������','B','1','0','0');
INSERT INTO phpyun_city_class VALUES('364','31','��³��','T','1','0','0');
INSERT INTO phpyun_city_class VALUES('365','31','����','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('366','31','��ʲ','K','1','0','0');
INSERT INTO phpyun_city_class VALUES('367','31','����','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('368','31','������','A','1','1','0');
INSERT INTO phpyun_city_class VALUES('369','32','���','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('370','33','����','A','1','0','0');
INSERT INTO phpyun_city_class VALUES('371','34','̨��','T','1','0','0');
INSERT INTO phpyun_city_class VALUES('372','34','����','G','1','0','0');
INSERT INTO phpyun_city_class VALUES('373','34','̨��','T','1','0','0');
INSERT INTO phpyun_city_class VALUES('374','34','̨��','T','1','0','0');
INSERT INTO phpyun_city_class VALUES('375','34','����','P','1','0','0');
INSERT INTO phpyun_city_class VALUES('376','34','��Ͷ','N','1','0','0');
INSERT INTO phpyun_city_class VALUES('377','34','����','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('378','34','����','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('379','34','�û�','Z','1','0','0');
INSERT INTO phpyun_city_class VALUES('380','34','����','M','1','0','0');
INSERT INTO phpyun_city_class VALUES('381','34','����','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('382','34','����','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('383','34','��԰','T','1','0','0');
INSERT INTO phpyun_city_class VALUES('384','34','����','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('385','34','��¡','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('386','34','̨��','T','1','0','0');
INSERT INTO phpyun_city_class VALUES('387','34','����','J','1','1','0');
INSERT INTO phpyun_city_class VALUES('388','34','����','M','1','0','0');
INSERT INTO phpyun_city_class VALUES('389','34','���','P','1','0','0');
INSERT INTO phpyun_city_class VALUES('390','35','������','B','1','0','0');
INSERT INTO phpyun_city_class VALUES('391','35','������','N','1','0','0');
INSERT INTO phpyun_city_class VALUES('392','35','����','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('393','35','����','F','1','0','0');
INSERT INTO phpyun_city_class VALUES('396','36','������','Y','1','0','1');
INSERT INTO phpyun_city_class VALUES('397','36','������','X','1','0','2');
INSERT INTO phpyun_city_class VALUES('398','37','������','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('399','38','������','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('400','38','������','N','1','0','0');
INSERT INTO phpyun_city_class VALUES('401','38','����','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('402','39','������','T','1','0','0');
INSERT INTO phpyun_city_class VALUES('403','39','��ƽ��','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('404','40','ƽɽ��','P','1','0','0');
INSERT INTO phpyun_city_class VALUES('405','40','������','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('406','41','������','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('407','41','�ɰ���','C','1','0','0');
INSERT INTO phpyun_city_class VALUES('408','42','������','N','1','0','0');
INSERT INTO phpyun_city_class VALUES('409','42','�ٳ���','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('410','43','������','M','1','0','0');
INSERT INTO phpyun_city_class VALUES('411','43','��Է��','Q','1','0','0');
INSERT INTO phpyun_city_class VALUES('412','44','������','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('413','44','�ű���','Z','1','0','0');
INSERT INTO phpyun_city_class VALUES('414','45','��¡��','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('415','45','ƽȪ��','P','1','0','0');
INSERT INTO phpyun_city_class VALUES('416','46','������','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('417','46','�����','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('418','47','��ͤ��','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('419','47','Ǩ����','Q','1','0','0');
INSERT INTO phpyun_city_class VALUES('420','48','������','Q','1','0','0');
INSERT INTO phpyun_city_class VALUES('421','48','������','C','1','0','0');
INSERT INTO phpyun_city_class VALUES('422','49','������','D','1','0','0');
INSERT INTO phpyun_city_class VALUES('423','49','������','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('424','50','��ǿ��','W','1','0','0');
INSERT INTO phpyun_city_class VALUES('425','50','�ʳ��� ','G','1','0','0');
INSERT INTO phpyun_city_class VALUES('426','51','������','Q','1','0','0');
INSERT INTO phpyun_city_class VALUES('427','51','¦����','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('428','52','������','T','1','0','0');
INSERT INTO phpyun_city_class VALUES('429','52','������','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('430','53','ƽ����','P','1','0','0');
INSERT INTO phpyun_city_class VALUES('431','53','����','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('432','54','ƽ˳��','P','1','0','0');
INSERT INTO phpyun_city_class VALUES('433','54','�����','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('434','55','��ˮ��','Q','1','0','0');
INSERT INTO phpyun_city_class VALUES('435','55','����','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('436','56','ɽ����','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('437','56','Ӧ��','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('438','57','��ɽ��','F','1','0','0');
INSERT INTO phpyun_city_class VALUES('439','57','������','Z','1','0','0');
INSERT INTO phpyun_city_class VALUES('440','58','������','D','1','0','0');
INSERT INTO phpyun_city_class VALUES('441','58','��̨��','W','1','0','0');
INSERT INTO phpyun_city_class VALUES('442','59','��Ȩ��','Z','1','0','0');
INSERT INTO phpyun_city_class VALUES('443','59','��˳��','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('444','60','������','Q','1','0','0');
INSERT INTO phpyun_city_class VALUES('445','60','�����','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('446','61','�����','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('447','61','������','W','1','0','0');
INSERT INTO phpyun_city_class VALUES('448','62','������','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('449','62','�䴨��','W','1','0','0');
INSERT INTO phpyun_city_class VALUES('450','63','������','G','1','0','0');
INSERT INTO phpyun_city_class VALUES('451','64','��������','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('452','64','������','A','1','0','0');
INSERT INTO phpyun_city_class VALUES('453','65','������','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('454','66','������','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('455','66','�˺���','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('456','68','�������','E','1','0','0');
INSERT INTO phpyun_city_class VALUES('457','68','����ľ��','Z','1','0','0');
INSERT INTO phpyun_city_class VALUES('458','69','�˰�����','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('459','70','��������','W','1','0','0');
INSERT INTO phpyun_city_class VALUES('460','71','���ֹ���','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('461','72','��������','B','1','0','0');
INSERT INTO phpyun_city_class VALUES('462','73','��������','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('463','74','��ƽ��','K','1','0','0');
INSERT INTO phpyun_city_class VALUES('464','74','������','F','1','0','0');
INSERT INTO phpyun_city_class VALUES('465','75','������','C','1','0','0');
INSERT INTO phpyun_city_class VALUES('466','76','̨����','T','1','0','0');
INSERT INTO phpyun_city_class VALUES('467','78','������','Z','1','0','0');
INSERT INTO phpyun_city_class VALUES('468','79','������','D','1','0','0');
INSERT INTO phpyun_city_class VALUES('469','80','��ɽ��','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('470','81','������','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('471','81','����Ȧ�� ','B','1','0','0');
INSERT INTO phpyun_city_class VALUES('472','82','������','Z','1','0','0');
INSERT INTO phpyun_city_class VALUES('473','82','̫ƽ��','T','1','0','0');
INSERT INTO phpyun_city_class VALUES('474','83','������','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('475','83','��ʥ��','W','1','0','0');
INSERT INTO phpyun_city_class VALUES('476','84','������','D','1','0','0');
INSERT INTO phpyun_city_class VALUES('477','84','��ɽ�� ','P','1','0','0');
INSERT INTO phpyun_city_class VALUES('478','85','������','T','1','0','0');
INSERT INTO phpyun_city_class VALUES('479','85','������','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('480','86','��ƽ��','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('481','86','������','Z','1','0','0');
INSERT INTO phpyun_city_class VALUES('482','87','������','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('483','87','������','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('484','88','ũ����','N','1','0','0');
INSERT INTO phpyun_city_class VALUES('485','88','����� ','K','1','0','0');
INSERT INTO phpyun_city_class VALUES('486','89','��Ӫ��','C','1','0','0');
INSERT INTO phpyun_city_class VALUES('487','89','������','C','1','0','0');
INSERT INTO phpyun_city_class VALUES('488','90','������','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('489','90','������','T','1','0','0');
INSERT INTO phpyun_city_class VALUES('490','91','������','D','1','0','0');
INSERT INTO phpyun_city_class VALUES('491','91','������','D','1','0','0');
INSERT INTO phpyun_city_class VALUES('492','92','������','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('493','92','������','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('494','93','������','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('495','93','������','F','1','0','0');
INSERT INTO phpyun_city_class VALUES('496','94','Ǭ����','Q','1','0','0');
INSERT INTO phpyun_city_class VALUES('497','94','������','F','1','0','0');
INSERT INTO phpyun_city_class VALUES('498','95','ͨ����','T','1','0','0');
INSERT INTO phpyun_city_class VALUES('499','95','������','Z','1','0','0');
INSERT INTO phpyun_city_class VALUES('500','96','������','W','1','0','0');
INSERT INTO phpyun_city_class VALUES('501','96','��ͼ��','A','1','0','0');
INSERT INTO phpyun_city_class VALUES('502','97','������','F','1','0','0');
INSERT INTO phpyun_city_class VALUES('503','97','����','B','1','0','0');
INSERT INTO phpyun_city_class VALUES('504','98','������','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('505','98','������','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('506','99','�ֿ���','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('507','99','������','D','1','0','0');
INSERT INTO phpyun_city_class VALUES('508','100','������','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('509','100','�봨��','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('510','101','�ֵ���','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('511','101','������','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('512','102','������','W','1','0','0');
INSERT INTO phpyun_city_class VALUES('513','102','������','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('514','103','�˰���','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('515','103','������','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('516','104','������','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('517','104','��ɽ��','M','1','0','0');
INSERT INTO phpyun_city_class VALUES('518','105','ѷ����','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('519','105','������','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('520','106','������','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('521','106','������','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('522','107','������','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('523','107','������','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('524','108','������','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('525','108','������ ','B','1','0','0');
INSERT INTO phpyun_city_class VALUES('526','109','������','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('527','109','Į����','M','1','0','0');
INSERT INTO phpyun_city_class VALUES('528','110','��¥��','G','1','0','0');
INSERT INTO phpyun_city_class VALUES('529','110','������','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('530','110','�ֿ���','P','1','0','0');
INSERT INTO phpyun_city_class VALUES('531','111','������ ','R','1','0','0');
INSERT INTO phpyun_city_class VALUES('532','111','������','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('533','112','��ɽ��','K','1','0','0');
INSERT INTO phpyun_city_class VALUES('534','112','������','W','1','0','0');
INSERT INTO phpyun_city_class VALUES('535','113','������','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('536','113','��բ��','G','1','0','0');
INSERT INTO phpyun_city_class VALUES('537','114','������','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('538','114','������','G','1','0','0');
INSERT INTO phpyun_city_class VALUES('539','115','�����','D','1','0','0');
INSERT INTO phpyun_city_class VALUES('540','115','������','B','1','0','0');
INSERT INTO phpyun_city_class VALUES('541','116','ͭɽ��','T','1','0','0');
INSERT INTO phpyun_city_class VALUES('542','116','����','P','1','0','0');
INSERT INTO phpyun_city_class VALUES('543','117','������','D','1','0','0');
INSERT INTO phpyun_city_class VALUES('544','117','������','G','1','0','0');
INSERT INTO phpyun_city_class VALUES('545','118','��¥��','Z','1','0','0');
INSERT INTO phpyun_city_class VALUES('546','118','������','T','1','0','0');
INSERT INTO phpyun_city_class VALUES('547','119','������','B','1','0','0');
INSERT INTO phpyun_city_class VALUES('548','119',' ������','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('549','120','������','S','1','0','1');
INSERT INTO phpyun_city_class VALUES('550','120','������','S','1','0','2');
INSERT INTO phpyun_city_class VALUES('551','121','�߸���','G','1','0','0');
INSERT INTO phpyun_city_class VALUES('552','121','������','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('553','122','��ˮ��','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('554','122','������','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('555','123','ͩ®��','T','1','0','0');
INSERT INTO phpyun_city_class VALUES('556','123','������','C','1','0','0');
INSERT INTO phpyun_city_class VALUES('557','124','������','N','1','0','0');
INSERT INTO phpyun_city_class VALUES('558','124','��ɽ��','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('559','125','��ͷ��','D','1','0','0');
INSERT INTO phpyun_city_class VALUES('560','125','������','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('561','126','������','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('562','126','������','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('563','127','������','D','1','0','0');
INSERT INTO phpyun_city_class VALUES('564','127','������','C','1','0','0');
INSERT INTO phpyun_city_class VALUES('565','128','�²���','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('566','128','������','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('567','129','�Ͱ���','P','1','0','0');
INSERT INTO phpyun_city_class VALUES('568','129','������','W','1','0','0');
INSERT INTO phpyun_city_class VALUES('569','130','��ɽ��','C','1','0','0');
INSERT INTO phpyun_city_class VALUES('570','130','������','K','1','0','0');
INSERT INTO phpyun_city_class VALUES('571','131','������','P','1','0','0');
INSERT INTO phpyun_city_class VALUES('572','131','�ɽ��','D','1','0','0');
INSERT INTO phpyun_city_class VALUES('573','132','����','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('574','132','������','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('575','133','������','Q','1','0','0');
INSERT INTO phpyun_city_class VALUES('576','133','������','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('577','134','������','C','1','0','0');
INSERT INTO phpyun_city_class VALUES('578','134','�ʶ���','F','1','0','0');
INSERT INTO phpyun_city_class VALUES('579','135','�ߺ���','W','1','0','0');
INSERT INTO phpyun_city_class VALUES('580','135','������','N','1','0','0');
INSERT INTO phpyun_city_class VALUES('581','137','��Ϳ��','D','1','0','0');
INSERT INTO phpyun_city_class VALUES('582','137','��ɽ��','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('583','138','��ɽ��','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('584','138','��ɽ��','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('585','139','ͭ����','T','1','0','0');
INSERT INTO phpyun_city_class VALUES('586','139','ʨ��ɽ��','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('587','140','������','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('588','140','Ǳɽ��','Q','1','0','0');
INSERT INTO phpyun_city_class VALUES('589','141','������','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('590','141','��ɽ��','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('591','142','��Զ��','D','1','0','0');
INSERT INTO phpyun_city_class VALUES('592','142','������','F','1','0','0');
INSERT INTO phpyun_city_class VALUES('593','143','����','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('594','143','�����','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('595','144','������','D','1','0','0');
INSERT INTO phpyun_city_class VALUES('596','144','ʯ̨��','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('597','145','��̨��','F','1','0','0');
INSERT INTO phpyun_city_class VALUES('598','145','��ͨ��','D','1','0','0');
INSERT INTO phpyun_city_class VALUES('599','146','��Ϊ��','W','1','0','0');
INSERT INTO phpyun_city_class VALUES('600','146','��ɽ��','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('601','147','������','B','1','0','0');
INSERT INTO phpyun_city_class VALUES('602','148','����','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('603','148','�����','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('604','149','��Ϫ��','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('605','149','�����','G','1','0','0');
INSERT INTO phpyun_city_class VALUES('606','150','������','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('607','150','�ɳ���','M','1','0','0');
INSERT INTO phpyun_city_class VALUES('608','151','������','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('609','151','��Դ��','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('610','152','˼����','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('611','152','������','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('612','153','������','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('613','153','������','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('614','154','������','D','1','0','0');
INSERT INTO phpyun_city_class VALUES('615','154','��Ϫ��','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('616','155','������','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('617','155','�»���','D','1','0','0');
INSERT INTO phpyun_city_class VALUES('618','156','������','Z','1','0','0');
INSERT INTO phpyun_city_class VALUES('619','156','������','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('620','157','�ֳ���','P','1','0','0');
INSERT INTO phpyun_city_class VALUES('621','157','˳����','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('622','158','�Ϻ���','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('623','158','��ƽ��','W','1','0','0');
INSERT INTO phpyun_city_class VALUES('624','159','ϼ����','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('625','159','������','G','1','0','0');
INSERT INTO phpyun_city_class VALUES('626','160','������','A','1','0','0');
INSERT INTO phpyun_city_class VALUES('627','160','�½���','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('628','161','������','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('629','161','��ɽ��','Z','1','0','0');
INSERT INTO phpyun_city_class VALUES('630','162','������','W','1','0','0');
INSERT INTO phpyun_city_class VALUES('631','162','��ˮ��','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('632','163','�཭��','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('633','163','�º���','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('634','164','������','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('635','164','������','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('636','165','������','F','1','0','0');
INSERT INTO phpyun_city_class VALUES('637','165','��ˮ��','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('638','166','�ŷ��� ','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('639','166','������','D','1','0','0');
INSERT INTO phpyun_city_class VALUES('640','167','��ˮ��','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('641','167','Ͽ����','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('642','168','������','F','1','0','0');
INSERT INTO phpyun_city_class VALUES('643','168','������','W','1','0','0');
INSERT INTO phpyun_city_class VALUES('644','169','�Ϸ��� ','N','1','0','0');
INSERT INTO phpyun_city_class VALUES('645','169','������','C','1','0','0');
INSERT INTO phpyun_city_class VALUES('646','170','��ɽ��','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('647','170','�����','G','1','0','0');
INSERT INTO phpyun_city_class VALUES('648','171','������','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('649','171','�̺���','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('650','172','�Ƶ���','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('651','172',' �ķ���','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('652','173','������','G','1','0','0');
INSERT INTO phpyun_city_class VALUES('653','173','��̨��','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('654','174','̨��ׯ��','T','1','0','0');
INSERT INTO phpyun_city_class VALUES('655','174','ɽͤ��','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('656','175','������','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('657','175','������','G','1','0','0');
INSERT INTO phpyun_city_class VALUES('658','176','������','C','1','0','0');
INSERT INTO phpyun_city_class VALUES('659','176','��ɽ��','F','1','0','0');
INSERT INTO phpyun_city_class VALUES('660','177','������','C','1','0','0');
INSERT INTO phpyun_city_class VALUES('661','177','������','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('662','178','΢ɽ��','W','1','0','0');
INSERT INTO phpyun_city_class VALUES('663','178','��̨��','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('664','179','��ƽ��','D','1','0','0');
INSERT INTO phpyun_city_class VALUES('665','179','������','N','1','0','0');
INSERT INTO phpyun_city_class VALUES('666','180','������','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('667','180','�ĵ���','W','1','0','0');
INSERT INTO phpyun_city_class VALUES('668','181','������','W','1','0','0');
INSERT INTO phpyun_city_class VALUES('669','181','������','D','1','0','0');
INSERT INTO phpyun_city_class VALUES('670','182','������','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('671','182','�ֳ���','G','1','0','0');
INSERT INTO phpyun_city_class VALUES('672','183','��ˮ��','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('673','183','��ɽ��','C','1','0','0');
INSERT INTO phpyun_city_class VALUES('674','184','������','Q','1','0','0');
INSERT INTO phpyun_city_class VALUES('675','184','�����','Q','1','0','0');
INSERT INTO phpyun_city_class VALUES('676','185','������','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('677','185','������','D','1','0','0');
INSERT INTO phpyun_city_class VALUES('678','186','������','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('679','186','������','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('680','187','������','C','1','0','0');
INSERT INTO phpyun_city_class VALUES('681','187','��Ұ��','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('682','188','ͨ����','T','1','0','0');
INSERT INTO phpyun_city_class VALUES('683','188','ξ����','W','1','0','0');
INSERT INTO phpyun_city_class VALUES('684','189','�°���','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('685','189','�Ͻ���','M','1','0','0');
INSERT INTO phpyun_city_class VALUES('686','190','³ɽ��','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('687','190','������','B','1','0','0');
INSERT INTO phpyun_city_class VALUES('688','191','�ڻ���','N','1','0','0');
INSERT INTO phpyun_city_class VALUES('689','191','������','T','1','0','0');
INSERT INTO phpyun_city_class VALUES('690','192','����','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('691','192','���','Q','1','0','0');
INSERT INTO phpyun_city_class VALUES('692','193','������','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('693','193','ԭ����','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('694','194','������','P','1','0','0');
INSERT INTO phpyun_city_class VALUES('695','194','������','W','1','0','0');
INSERT INTO phpyun_city_class VALUES('696','195','̨ǰ��','T','1','0','0');
INSERT INTO phpyun_city_class VALUES('697','195','����','F','1','0','0');
INSERT INTO phpyun_city_class VALUES('698','196','�����','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('699','196','�����','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('700','197','������','W','1','0','0');
INSERT INTO phpyun_city_class VALUES('701','197','�����','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('702','198','�ų���','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('703','198','¬����','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('704','199','������','N','1','0','0');
INSERT INTO phpyun_city_class VALUES('705','199','������','F','1','0','0');
INSERT INTO phpyun_city_class VALUES('706','200','��Ȩ��','M','1','0','0');
INSERT INTO phpyun_city_class VALUES('707','200','������','N','1','0','0');
INSERT INTO phpyun_city_class VALUES('708','201','��ɽ��','G','1','0','0');
INSERT INTO phpyun_city_class VALUES('709','201','����','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('710','202','��ˮ��','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('711','202','������','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('712','203','��ƽ��','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('713','203','ƽ����','P','1','0','0');
INSERT INTO phpyun_city_class VALUES('714','204','��̳�ֵ�','T','1','0','0');
INSERT INTO phpyun_city_class VALUES('715','17','֣��','Z','1','0','0');
INSERT INTO phpyun_city_class VALUES('716','715','��ԭ��','Z','1','0','0');
INSERT INTO phpyun_city_class VALUES('717','715','������','E','1','0','0');
INSERT INTO phpyun_city_class VALUES('718','205','�����','W','1','0','0');
INSERT INTO phpyun_city_class VALUES('719','205','������','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('720','206','��ɽ��','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('721','206','Զ����','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('722','207','������','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('723','207','������','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('724','208','������','B','1','0','0');
INSERT INTO phpyun_city_class VALUES('725','208','������','N','1','0','0');
INSERT INTO phpyun_city_class VALUES('726','209','������','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('727','209','��ɽ��','T','1','0','0');
INSERT INTO phpyun_city_class VALUES('728','210','ɳ����','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('729','210','��ɽ��','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('730','211','�ŷ���','T','1','0','0');
INSERT INTO phpyun_city_class VALUES('731','211','�찲��','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('732','212','��Ϫ��','Z','1','0','0');
INSERT INTO phpyun_city_class VALUES('733','212','��ɽ��','Z','1','0','0');
INSERT INTO phpyun_city_class VALUES('734','213','��ʼ��','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('735','213','�Ͷ���','B','1','0','0');
INSERT INTO phpyun_city_class VALUES('736','214','������','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('737','214','������','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('738','215','������','T','1','0','0');
INSERT INTO phpyun_city_class VALUES('739','215','�Ÿ���','Z','1','0','0');
INSERT INTO phpyun_city_class VALUES('740','216','�³���','C','1','0','0');
INSERT INTO phpyun_city_class VALUES('741','216','ͨ������','T','1','0','0');
INSERT INTO phpyun_city_class VALUES('742','217','��ˮ�� ','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('743','218','ͨ����','T','1','0','0');
INSERT INTO phpyun_city_class VALUES('744','218','������','C','1','0','0');
INSERT INTO phpyun_city_class VALUES('745','219','Т����','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('746','219','������','D','1','0','0');
INSERT INTO phpyun_city_class VALUES('747','220','������','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('748','220','������','E','1','0','0');
INSERT INTO phpyun_city_class VALUES('749','221','��ɳ��','C','1','0','0');
INSERT INTO phpyun_city_class VALUES('750','221','������','W','1','0','0');
INSERT INTO phpyun_city_class VALUES('751','222','������','A','1','0','0');
INSERT INTO phpyun_city_class VALUES('752','222','������','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('753','223','������','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('754','223','ʯ����','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('755','224','��̶��','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('756','224','������','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('757','225','��ɽ��','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('758','225','���','Q','1','0','0');
INSERT INTO phpyun_city_class VALUES('759','226','������','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('760','226','������','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('761','227','�۶���','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('762','227','¡����','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('763','228','����','N','1','0','0');
INSERT INTO phpyun_city_class VALUES('764','228','�ҽ���','T','1','0','0');
INSERT INTO phpyun_city_class VALUES('765','229','�»���','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('766','229','˫����','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('767','230','�з���','Z','1','0','0');
INSERT INTO phpyun_city_class VALUES('768','230','��ͬ��','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('769','231','������','G','1','0','0');
INSERT INTO phpyun_city_class VALUES('770','231','������','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('771','232','������','Q','1','0','0');
INSERT INTO phpyun_city_class VALUES('772','232','������','D','1','0','0');
INSERT INTO phpyun_city_class VALUES('773','233','�����','F','1','0','0');
INSERT INTO phpyun_city_class VALUES('774','233','��ԫ��','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('775','234','������','C','1','0','0');
INSERT INTO phpyun_city_class VALUES('776','234','ɣֲ��','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('777','235','Խ����','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('778','235','������','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('779','236','��ɽ��','N','1','0','0');
INSERT INTO phpyun_city_class VALUES('780','236','������','B','1','0','0');
INSERT INTO phpyun_city_class VALUES('781','237','������','D','1','0','0');
INSERT INTO phpyun_city_class VALUES('782','237','������','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('783','238','������','C','1','0','0');
INSERT INTO phpyun_city_class VALUES('784','238','�ϰ���','N','1','0','0');
INSERT INTO phpyun_city_class VALUES('785','239','����','W','1','0','0');
INSERT INTO phpyun_city_class VALUES('786','239','�ϳ���','N','1','0','0');
INSERT INTO phpyun_city_class VALUES('787','240','������','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('788','240','ʯ���','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('789','241','�Ϻ���','N','1','0','0');
INSERT INTO phpyun_city_class VALUES('790','241','˳����','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('791','242','ʼ����','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('792','242','�ʻ���','R','1','0','0');
INSERT INTO phpyun_city_class VALUES('793','243','�»���','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('794','243','������','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('795','244','������','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('796','244','������','M','1','0','0');
INSERT INTO phpyun_city_class VALUES('797','245','�⿪��','F','1','0','0');
INSERT INTO phpyun_city_class VALUES('798','245','������','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('799','246','�ݶ���','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('800','246','������','B','1','0','0');
INSERT INTO phpyun_city_class VALUES('801','247','������','D','1','0','0');
INSERT INTO phpyun_city_class VALUES('802','247','��˳��','F','1','0','0');
INSERT INTO phpyun_city_class VALUES('803','248','������','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('804','248','½����','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('805','249','������','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('806','249','��ƽ��','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('807','250','������','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('808','250','������','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('809','251','��ɽ��','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('810','251','��ɽ��','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('811','252','������','C','1','0','0');
INSERT INTO phpyun_city_class VALUES('812','252','��ƽ��','R','1','0','0');
INSERT INTO phpyun_city_class VALUES('813','253','������','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('814','253','������','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('815','254','�ư���','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('816','254','������','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('817','269','��Ӣ��','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('818','269','������','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('819','270','������','T','1','0','0');
INSERT INTO phpyun_city_class VALUES('820','270','�³���','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('821','22','��ָɽ','W','1','0','0');
INSERT INTO phpyun_city_class VALUES('822','821','������','P','1','0','0');
INSERT INTO phpyun_city_class VALUES('823','821','ë����','M','1','0','0');
INSERT INTO phpyun_city_class VALUES('824','22','��','Q','1','0','0');
INSERT INTO phpyun_city_class VALUES('825','824','��ɽ��','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('826','824','��·��','D','1','0','0');
INSERT INTO phpyun_city_class VALUES('827','22','����','D','1','0','0');
INSERT INTO phpyun_city_class VALUES('828','827','��ͷ��','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('829','827','������','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('830','22','�Ĳ�','W','1','0','0');
INSERT INTO phpyun_city_class VALUES('831','830','������','W','1','0','0');
INSERT INTO phpyun_city_class VALUES('832','830','������','F','1','0','0');
INSERT INTO phpyun_city_class VALUES('833','22','����','W','1','0','0');
INSERT INTO phpyun_city_class VALUES('834','833','������','N','1','0','0');
INSERT INTO phpyun_city_class VALUES('835','833','������','B','1','0','0');
INSERT INTO phpyun_city_class VALUES('836','22','����','D','1','0','0');
INSERT INTO phpyun_city_class VALUES('837','836','�찲��','T','1','0','0');
INSERT INTO phpyun_city_class VALUES('838','836','������','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('839','22','����','D','1','0','0');
INSERT INTO phpyun_city_class VALUES('840','839','������','F','1','0','0');
INSERT INTO phpyun_city_class VALUES('841','839','������','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('842','22','�Ͳ�','T','1','0','0');
INSERT INTO phpyun_city_class VALUES('843','842','������','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('844','842','������','P','1','0','0');
INSERT INTO phpyun_city_class VALUES('845','22','����','C','1','0','0');
INSERT INTO phpyun_city_class VALUES('846','845','��ͷ��','Q','1','0','0');
INSERT INTO phpyun_city_class VALUES('847','845','��ɽ��','F','1','0','0');
INSERT INTO phpyun_city_class VALUES('848','22','�ٸ�','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('849','848','��¥��','D','1','0','0');
INSERT INTO phpyun_city_class VALUES('850','848','��ӯ��','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('851','22','��ɳ','B','1','0','0');
INSERT INTO phpyun_city_class VALUES('852','851','����','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('853','851','������','Q','1','0','0');
INSERT INTO phpyun_city_class VALUES('854','22','����','C','1','0','0');
INSERT INTO phpyun_city_class VALUES('855','854','�߲���','Q','1','0','0');
INSERT INTO phpyun_city_class VALUES('856','854','��β��','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('857','22','�ֶ�','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('858','857','ݺ�躣��','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('859','857','�����','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('860','22','��ˮ','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('861','860','ȺӢ��','Q','1','0','0');
INSERT INTO phpyun_city_class VALUES('862','860','������','T','1','0','0');
INSERT INTO phpyun_city_class VALUES('863','22','��ͤ','B','1','0','0');
INSERT INTO phpyun_city_class VALUES('864','863','ë����','M','1','0','0');
INSERT INTO phpyun_city_class VALUES('865','863','������','N','1','0','0');
INSERT INTO phpyun_city_class VALUES('866','22','����','Q','1','0','0');
INSERT INTO phpyun_city_class VALUES('867','866','ʲ����','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('868','866','��ë��','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('869','255','������','B','1','0','0');
INSERT INTO phpyun_city_class VALUES('870','255','������','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('871','256','������','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('872','256','������','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('873','257','�ٹ���','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('874','257','�鴨��','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('875','258','������','C','1','0','0');
INSERT INTO phpyun_city_class VALUES('876','258','����','T','1','0','0');
INSERT INTO phpyun_city_class VALUES('877','259','��ɽ��','T','1','0','0');
INSERT INTO phpyun_city_class VALUES('878','259','������','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('879','260','��˼��','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('880','260','������','F','1','0','0');
INSERT INTO phpyun_city_class VALUES('881','261','��ɽ��','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('882','261','�ֱ���','P','1','0','0');
INSERT INTO phpyun_city_class VALUES('883','262','ƽ����','P','1','0','0');
INSERT INTO phpyun_city_class VALUES('884','262','������','G','1','0','0');
INSERT INTO phpyun_city_class VALUES('885','263','½����','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('886','263','������','B','1','0','0');
INSERT INTO phpyun_city_class VALUES('887','267','������','T','1','0','0');
INSERT INTO phpyun_city_class VALUES('888','267','�ﶫ��','T','1','0','0');
INSERT INTO phpyun_city_class VALUES('889','266','��ƽ��','Z','1','0','0');
INSERT INTO phpyun_city_class VALUES('890','266','��ɽ��','Z','1','0','0');
INSERT INTO phpyun_city_class VALUES('891','268','������','D','1','0','0');
INSERT INTO phpyun_city_class VALUES('892','268','��ɽ��','F','1','0','0');
INSERT INTO phpyun_city_class VALUES('893','264','������','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('894','264','������','W','1','0','0');
INSERT INTO phpyun_city_class VALUES('895','265','������','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('896','265','������','D','1','0','0');
INSERT INTO phpyun_city_class VALUES('898','271','������','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('899','271','������','D','1','0','0');
INSERT INTO phpyun_city_class VALUES('900','272','��̨��','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('901','273','�н���','Z','1','0','0');
INSERT INTO phpyun_city_class VALUES('902','274','��˳��','F','1','0','0');
INSERT INTO phpyun_city_class VALUES('903','275','�α���','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('904','275','������','M','1','0','0');
INSERT INTO phpyun_city_class VALUES('905','276','������','W','1','0','0');
INSERT INTO phpyun_city_class VALUES('906','276','�ന��','Q','1','0','0');
INSERT INTO phpyun_city_class VALUES('907','277','��Զ��','W','1','0','0');
INSERT INTO phpyun_city_class VALUES('908','277','������','Z','1','0','0');
INSERT INTO phpyun_city_class VALUES('909','278','������','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('910','278','�н���','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('911','279','Ӫɽ��','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('912','279','���','P','1','0','0');
INSERT INTO phpyun_city_class VALUES('913','280','��Ϫ��','N','1','0','0');
INSERT INTO phpyun_city_class VALUES('914','280','������','C','1','0','0');
INSERT INTO phpyun_city_class VALUES('915','281','������','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('916','281','��ʤ��','W','1','0','0');
INSERT INTO phpyun_city_class VALUES('917','282','������','K','1','0','0');
INSERT INTO phpyun_city_class VALUES('918','283','��ɽ��','M','1','0','0');
INSERT INTO phpyun_city_class VALUES('919','283','��Դ��','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('920','284','��ɽ��','P','1','0','0');
INSERT INTO phpyun_city_class VALUES('921','284','������','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('922','285','������','G','1','0','0');
INSERT INTO phpyun_city_class VALUES('923','286','��Դ��','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('924','287','������','G','1','0','0');
INSERT INTO phpyun_city_class VALUES('925','288','������','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('926','288','Ϣ����','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('927','289','ˮ����','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('928','289','�̡���','P','1','0','0');
INSERT INTO phpyun_city_class VALUES('929','290','�����','F','1','0','0');
INSERT INTO phpyun_city_class VALUES('930','290','������','Z','1','0','0');
INSERT INTO phpyun_city_class VALUES('931','291','�ն���','P','1','0','0');
INSERT INTO phpyun_city_class VALUES('932','291','ƽ����','P','1','0','0');
INSERT INTO phpyun_city_class VALUES('933','292','�½���','D','1','0','0');
INSERT INTO phpyun_city_class VALUES('934','292','������','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('935','293','������','W','1','0','0');
INSERT INTO phpyun_city_class VALUES('936','293','��¡��','Q','1','0','0');
INSERT INTO phpyun_city_class VALUES('937','295','ʩ����','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('938','295','�齭��','M','1','0','0');
INSERT INTO phpyun_city_class VALUES('939','296','����','G','1','0','0');
INSERT INTO phpyun_city_class VALUES('940','296','��ˮ��','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('941','294','��ɳ��','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('942','294','֯����','Z','1','0','0');
INSERT INTO phpyun_city_class VALUES('943','297','������','F','1','0','0');
INSERT INTO phpyun_city_class VALUES('944','297','������','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('945','298','������','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('946','298','������','B','1','0','0');
INSERT INTO phpyun_city_class VALUES('947','299','������','M','1','0','0');
INSERT INTO phpyun_city_class VALUES('948','299','½����','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('949','300','������','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('950','300','ͨ����','T','1','0','0');
INSERT INTO phpyun_city_class VALUES('951','301','�ɼ���','Q','1','0','0');
INSERT INTO phpyun_city_class VALUES('952','301','�ν���','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('953','302','�ϻ���','N','1','0','0');
INSERT INTO phpyun_city_class VALUES('954','302','Ҧ����','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('955','303','�̴���','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('956','303','��ˮ��','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('957','304','�����','M','1','0','0');
INSERT INTO phpyun_city_class VALUES('958','304','����','Q','1','0','0');
INSERT INTO phpyun_city_class VALUES('959','305','ī����','M','1','0','0');
INSERT INTO phpyun_city_class VALUES('960','305','������','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('961','306','�º���','M','1','0','0');
INSERT INTO phpyun_city_class VALUES('962','306','������','M','1','0','0');
INSERT INTO phpyun_city_class VALUES('963','307','ʩ����','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('964','307','�ڳ���','T','1','0','0');
INSERT INTO phpyun_city_class VALUES('965','308','������','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('966','308','ӯ����','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('967','308','¤����','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('968','309','��ʤ�� ','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('969','309','��ƺ��','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('970','309','������ ','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('971','309','������','N','1','0','0');
INSERT INTO phpyun_city_class VALUES('972','310','��ˮ��','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('973','310','������','F','1','0','0');
INSERT INTO phpyun_city_class VALUES('974','310','��ɽ�� ','G','1','0','0');
INSERT INTO phpyun_city_class VALUES('975','310','��ƺ��','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('976','311','��������� ','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('977','311','������','D','1','0','0');
INSERT INTO phpyun_city_class VALUES('978','311','ά����','W','1','0','0');
INSERT INTO phpyun_city_class VALUES('979','312','������','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('980','312','������','F','1','0','0');
INSERT INTO phpyun_city_class VALUES('981','312','�� ��','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('982','312','������','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('983','312','����','Z','1','0','0');
INSERT INTO phpyun_city_class VALUES('984','312','˫���� ','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('985','312','������','G','1','0','0');
INSERT INTO phpyun_city_class VALUES('986','312','��Դ��','C','1','0','0');
INSERT INTO phpyun_city_class VALUES('987','313','������','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('988','313','������','D','1','0','0');
INSERT INTO phpyun_city_class VALUES('989','313','��ľ��','N','1','0','0');
INSERT INTO phpyun_city_class VALUES('990','313','������','D','1','0','0');
INSERT INTO phpyun_city_class VALUES('991','313','��ˮ��','Q','1','0','0');
INSERT INTO phpyun_city_class VALUES('992','313','ī�񹤿���','M','1','0','0');
INSERT INTO phpyun_city_class VALUES('993','313','����������','D','1','0','0');
INSERT INTO phpyun_city_class VALUES('994','314','������','D','1','0','0');
INSERT INTO phpyun_city_class VALUES('995','314','������','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('996','314','������','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('997','314','������','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('998','314','������','D','1','0','0');
INSERT INTO phpyun_city_class VALUES('999','314','������','K','1','0','0');
INSERT INTO phpyun_city_class VALUES('1000','314','����ľ��','N','1','0','0');
INSERT INTO phpyun_city_class VALUES('1001','314','��¡��','A','1','0','0');
INSERT INTO phpyun_city_class VALUES('1002','314','�Ƕ���','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('1003','314','лͨ����','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('1004','315','�˶���','N','1','0','0');
INSERT INTO phpyun_city_class VALUES('1005','315','�����','Q','1','0','0');
INSERT INTO phpyun_city_class VALUES('1006','315','������','C','1','0','0');
INSERT INTO phpyun_city_class VALUES('1007','315','�Ӳ���','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('1008','315','������','G','1','0','0');
INSERT INTO phpyun_city_class VALUES('1009','315','������','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('1010','315','������','Q','1','0','0');
INSERT INTO phpyun_city_class VALUES('1011','315','ɣ����','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('1012','315','������','Z','1','0','0');
INSERT INTO phpyun_city_class VALUES('1013','315','������','C','1','0','0');
INSERT INTO phpyun_city_class VALUES('1014','315','¡����','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('1015','315','�˿�����','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('1016','316','��֥��','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('1017','316','ī����','M','1','0','0');
INSERT INTO phpyun_city_class VALUES('1018','316','�� ��','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('1019','316','������','M','1','0','0');
INSERT INTO phpyun_city_class VALUES('1020','316','������','C','1','0','0');
INSERT INTO phpyun_city_class VALUES('1021','316','������','B','1','0','0');
INSERT INTO phpyun_city_class VALUES('1022','316','����������','G','1','0','0');
INSERT INTO phpyun_city_class VALUES('1023','317','������','C','1','0','0');
INSERT INTO phpyun_city_class VALUES('1024','317','â����','M','1','0','0');
INSERT INTO phpyun_city_class VALUES('1025','317','������','G','1','0','0');
INSERT INTO phpyun_city_class VALUES('1026','317','������','B','1','0','0');
INSERT INTO phpyun_city_class VALUES('1027','317','����','Z','1','0','0');
INSERT INTO phpyun_city_class VALUES('1028','317','�߰���','B','1','0','0');
INSERT INTO phpyun_city_class VALUES('1029','317','��¡��','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('1030','317','������','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('1031','317','��������','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('1032','317','������','D','1','0','0');
INSERT INTO phpyun_city_class VALUES('1033','317','������','C','1','0','0');
INSERT INTO phpyun_city_class VALUES('1034','318','������','G','1','0','0');
INSERT INTO phpyun_city_class VALUES('1035','318','������','C','1','0','0');
INSERT INTO phpyun_city_class VALUES('1036','318','������','P','1','0','0');
INSERT INTO phpyun_city_class VALUES('1037','318','�Ｊ��','G','1','0','0');
INSERT INTO phpyun_city_class VALUES('1038','318','������','R','1','0','0');
INSERT INTO phpyun_city_class VALUES('1040','318','������','Z','1','0','0');
INSERT INTO phpyun_city_class VALUES('1041','318','������','G','1','0','0');
INSERT INTO phpyun_city_class VALUES('1042','319','������','N','1','0','0');
INSERT INTO phpyun_city_class VALUES('1043','319','������','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('1044','319','������','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('1045','319','������','B','1','0','0');
INSERT INTO phpyun_city_class VALUES('1046','319','������','N','1','0','0');
INSERT INTO phpyun_city_class VALUES('1047','319','������','N','1','0','0');
INSERT INTO phpyun_city_class VALUES('1048','319','������','B','1','0','0');
INSERT INTO phpyun_city_class VALUES('1049','319','�� ��','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('1050','319','�����','B','1','0','0');
INSERT INTO phpyun_city_class VALUES('1051','319','������','A','1','0','0');
INSERT INTO phpyun_city_class VALUES('1052','320','δ����','W','1','0','0');
INSERT INTO phpyun_city_class VALUES('1053','320','������','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('1054','320','�³���','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('1055','320','������','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('1056','320','�����','B','1','0','0');
INSERT INTO phpyun_city_class VALUES('1057','320','������','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('1058','320','������','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('1059','320','������','C','1','0','0');
INSERT INTO phpyun_city_class VALUES('1060','320','������','G','1','0','0');
INSERT INTO phpyun_city_class VALUES('1061','320','������','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('1062','320','�� ��','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('1063','320','������','Z','1','0','0');
INSERT INTO phpyun_city_class VALUES('1064','321','��̨��','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('1065','321','μ����','W','1','0','0');
INSERT INTO phpyun_city_class VALUES('1066','321','�²���','C','1','0','0');
INSERT INTO phpyun_city_class VALUES('1067','321','�ɽ��','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('1068','321','������','F','1','0','0');
INSERT INTO phpyun_city_class VALUES('1069','321','¤ ��','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('1070','321','̫����','T','1','0','0');
INSERT INTO phpyun_city_class VALUES('1071','321','������','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('1072','321','������','F','1','0','0');
INSERT INTO phpyun_city_class VALUES('1073','321','ǧ����','Q','1','0','0');
INSERT INTO phpyun_city_class VALUES('1074','321','ü ��','M','1','0','0');
INSERT INTO phpyun_city_class VALUES('1075','321','�� ��','F','1','0','0');
INSERT INTO phpyun_city_class VALUES('1076','322','�ض���','Q','1','0','0');
INSERT INTO phpyun_city_class VALUES('1077','322','μ����','W','1','0','0');
INSERT INTO phpyun_city_class VALUES('1078','322','������','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('1079','322','��ƽ��','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('1080','322','��Ȫ��','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('1081','322','������','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('1082','322','������','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('1083','322','��ԭ��','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('1084','322','�� ��','B','1','0','0');
INSERT INTO phpyun_city_class VALUES('1085','322','Ѯ����','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('1086','322','������','C','1','0','0');
INSERT INTO phpyun_city_class VALUES('1087','322','Ǭ ��','Q','1','0','0');
INSERT INTO phpyun_city_class VALUES('1088','322','�书��','W','1','0','0');
INSERT INTO phpyun_city_class VALUES('1089','322','������','C','1','0','0');
INSERT INTO phpyun_city_class VALUES('1090','323','ҫ����','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('1091','323','������','W','1','0','0');
INSERT INTO phpyun_city_class VALUES('1092','323','ӡ̨��','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('1093','323','�˾���','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('1095','324','��μ��','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('1096','324','������','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('1097','324','������','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('1098','324','�ѳ���','P','1','0','0');
INSERT INTO phpyun_city_class VALUES('1099','324','������','T','1','0','0');
INSERT INTO phpyun_city_class VALUES('1100','324','��ˮ��','B','1','0','0');
INSERT INTO phpyun_city_class VALUES('1101','324','�γ���','D','1','0','0');
INSERT INTO phpyun_city_class VALUES('1102','324','�� ��','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('1103','324','������','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('1104','324','��ƽ��','F','1','0','0');
INSERT INTO phpyun_city_class VALUES('1105','324','������','D','1','0','0');
INSERT INTO phpyun_city_class VALUES('1106','325','������','B','1','0','0');
INSERT INTO phpyun_city_class VALUES('1107','325','������','A','1','0','0');
INSERT INTO phpyun_city_class VALUES('1108','325','�崨��','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('1109','325','�ӳ���','Z','1','0','0');
INSERT INTO phpyun_city_class VALUES('1110','325','������','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('1111','325','�Ӵ���','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('1112','325','�� ��','F','1','0','0');
INSERT INTO phpyun_city_class VALUES('1113','325','�ӳ���','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('1114','325','��Ȫ��','G','1','0','0');
INSERT INTO phpyun_city_class VALUES('1115','325','�˴���','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('1116','325','־����','Z','1','0','0');
INSERT INTO phpyun_city_class VALUES('1117','325','������','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('1118','325','������','W','1','0','0');
INSERT INTO phpyun_city_class VALUES('1119','326','������','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('1120','326','�彧��','Q','1','0','0');
INSERT INTO phpyun_city_class VALUES('1121','326','�����','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('1122','326','��ľ��','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('1123','326','�� ��','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('1124','326','������','F','1','0','0');
INSERT INTO phpyun_city_class VALUES('1125','326','������','Z','1','0','0');
INSERT INTO phpyun_city_class VALUES('1126','326','������','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('1127','326','��ɽ��','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('1128','326','��֬��','M','1','0','0');
INSERT INTO phpyun_city_class VALUES('1129','326','�Ɽ��','W','1','0','0');
INSERT INTO phpyun_city_class VALUES('1130','326','������','D','1','0','0');
INSERT INTO phpyun_city_class VALUES('1131','327','��̨��','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('1132','327','������','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('1133','327','�����','Z','1','0','0');
INSERT INTO phpyun_city_class VALUES('1134','327','�ǹ���','C','1','0','0');
INSERT INTO phpyun_city_class VALUES('1135','327','��֣��','N','1','0','0');
INSERT INTO phpyun_city_class VALUES('1136','327','�� ��','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('1137','327','��ǿ��','N','1','0','0');
INSERT INTO phpyun_city_class VALUES('1138','327','��ƺ��','F','1','0','0');
INSERT INTO phpyun_city_class VALUES('1139','327','�� ��','M','1','0','0');
INSERT INTO phpyun_city_class VALUES('1140','327','������','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('1141','327','������','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('1142','328','������','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('1143','328','������','Z','1','0','0');
INSERT INTO phpyun_city_class VALUES('1144','328','᰸���','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('1145','328','Ѯ����','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('1146','328','��ƺ��','Z','1','0','0');
INSERT INTO phpyun_city_class VALUES('1147','328','ƽ����','P','1','0','0');
INSERT INTO phpyun_city_class VALUES('1148','328','ʯȪ��','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('1149','328','������','N','1','0','0');
INSERT INTO phpyun_city_class VALUES('1150','328','�׺���','B','1','0','0');
INSERT INTO phpyun_city_class VALUES('1151','328','������','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('1152','329','������','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('1153','329','����','Z','1','0','0');
INSERT INTO phpyun_city_class VALUES('1154','329','ɽ����','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('1155','329','������','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('1156','329','������','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('1157','329','������','D','1','0','0');
INSERT INTO phpyun_city_class VALUES('1158','329','��ˮ��','Z','1','0','0');
INSERT INTO phpyun_city_class VALUES('1159','330','�ǹ���','C','1','0','0');
INSERT INTO phpyun_city_class VALUES('1160','330','�������','Q','1','0','0');
INSERT INTO phpyun_city_class VALUES('1161','330','������','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('1162','330','������','A','1','0','0');
INSERT INTO phpyun_city_class VALUES('1163','330','�����','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('1164','330','������','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('1165','330','������','G','1','0','0');
INSERT INTO phpyun_city_class VALUES('1166','330','������','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('1167','332','����','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('1168','332','������','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('1169','333','������','B','1','0','0');
INSERT INTO phpyun_city_class VALUES('1170','333','ƽ����','P','1','0','0');
INSERT INTO phpyun_city_class VALUES('1171','333','��Զ��','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('1172','333','������','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('1173','333','��̩��','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('1174','334','������','Q','1','0','0');
INSERT INTO phpyun_city_class VALUES('1175','334','�����','M','1','0','0');
INSERT INTO phpyun_city_class VALUES('1176','334','��ˮ��','Q','1','0','0');
INSERT INTO phpyun_city_class VALUES('1177','334','�ذ���','Q','1','0','0');
INSERT INTO phpyun_city_class VALUES('1178','334','�ʹ���','G','1','0','0');
INSERT INTO phpyun_city_class VALUES('1179','334','��ɽ��','W','1','0','0');
INSERT INTO phpyun_city_class VALUES('1180','335','������','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('1181','335','������','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('1182','335','�ػ���','Z','1','0','0');
INSERT INTO phpyun_city_class VALUES('1183','335','������','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('1184','335','������','G','1','0','0');
INSERT INTO phpyun_city_class VALUES('1185','335','�౱�ɹ���������','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('1186','335','��������������������','A','1','0','0');
INSERT INTO phpyun_city_class VALUES('1187','336','������','G','1','0','0');
INSERT INTO phpyun_city_class VALUES('1188','336','����ԣ����������','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('1189','336','������','M','1','0','0');
INSERT INTO phpyun_city_class VALUES('1190','336','������','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('1191','336','��̨��','G','1','0','0');
INSERT INTO phpyun_city_class VALUES('1192','336','ɽ����','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('1193','337','������','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('1194','337','������','M','1','0','0');
INSERT INTO phpyun_city_class VALUES('1195','337','������','G','1','0','0');
INSERT INTO phpyun_city_class VALUES('1196','337','��ף����������','A','1','0','0');
INSERT INTO phpyun_city_class VALUES('1197','338','������','A','1','0','0');
INSERT INTO phpyun_city_class VALUES('1198','338','ͨμ��','T','1','0','0');
INSERT INTO phpyun_city_class VALUES('1199','338','¤����','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('1200','338','μԴ��','W','1','0','0');
INSERT INTO phpyun_city_class VALUES('1201','338','�����','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('1202','338','�� ��','Z','1','0','0');
INSERT INTO phpyun_city_class VALUES('1203','338','� ��','M','1','0','0');
INSERT INTO phpyun_city_class VALUES('1204','339','�䶼��','W','1','0','0');
INSERT INTO phpyun_city_class VALUES('1205','339','�� ��','C','1','0','0');
INSERT INTO phpyun_city_class VALUES('1206','339','�� ��','W','1','0','0');
INSERT INTO phpyun_city_class VALUES('1207','339','崲���','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('1208','339','�� ��','K','1','0','0');
INSERT INTO phpyun_city_class VALUES('1209','339','������','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('1210','339','�� ��','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('1211','339','�� ��','W','1','0','0');
INSERT INTO phpyun_city_class VALUES('1212','339','������','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('1213','340','�����','K','1','0','0');
INSERT INTO phpyun_city_class VALUES('1214','340','������','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('1215','340','��̨��','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('1216','340','������','C','1','0','0');
INSERT INTO phpyun_city_class VALUES('1217','340','��ͤ��','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('1218','340','ׯ����','Z','1','0','0');
INSERT INTO phpyun_city_class VALUES('1219','340','������','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('1220','341','������','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('1221','341','�����','Q','1','0','0');
INSERT INTO phpyun_city_class VALUES('1222','341','�� ��','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('1223','341','������','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('1224','341','��ˮ��','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('1225','341','������','Z','1','0','0');
INSERT INTO phpyun_city_class VALUES('1226','341','�� ��','N','1','0','0');
INSERT INTO phpyun_city_class VALUES('1227','341','��ԭ��','Z','1','0','0');
INSERT INTO phpyun_city_class VALUES('1228','342','������','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('1229','342','������','G','1','0','0');
INSERT INTO phpyun_city_class VALUES('1230','342','������','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('1231','342','�����','G','1','0','0');
INSERT INTO phpyun_city_class VALUES('1232','342','������','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('1233','342','������������','D','1','0','0');
INSERT INTO phpyun_city_class VALUES('1234','342','��ʯɽ�����嶫����������������','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('1235','343','������','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('1236','343','��̶��','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('1237','343','׿����','Z','1','0','0');
INSERT INTO phpyun_city_class VALUES('1238','343','������','Z','1','0','0');
INSERT INTO phpyun_city_class VALUES('1239','343','������','D','1','0','0');
INSERT INTO phpyun_city_class VALUES('1240','343','������','M','1','0','0');
INSERT INTO phpyun_city_class VALUES('1241','343','µ����','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('1242','343','�ĺ���','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('1243','344','������','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('1244','344','�����','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('1245','344','������','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('1246','344','������','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('1247','344','������','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('1248','344','������','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('1249','345','�������','D','1','0','0');
INSERT INTO phpyun_city_class VALUES('1250','345','��ũ��','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('1251','345','ƽ����','P','1','0','0');
INSERT INTO phpyun_city_class VALUES('1252','346','��ͨ��','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('1253','346','���±���','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('1254','346','��ͭϿ��','Q','1','0','0');
INSERT INTO phpyun_city_class VALUES('1255','346','ͬ����','T','1','0','0');
INSERT INTO phpyun_city_class VALUES('1256','346','�γ���','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('1257','347','ԭ����','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('1258','347','������','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('1259','347','¡����','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('1260','347','��Դ��','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('1261','347','������','P','1','0','0');
INSERT INTO phpyun_city_class VALUES('1262','29','����','Z','1','0','0');
INSERT INTO phpyun_city_class VALUES('1263','1262','ɳ��ͷ��','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('1264','1262','������','Z','1','0','0');
INSERT INTO phpyun_city_class VALUES('1265','1262','��ԭ��','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('1266','348','�Ƕ���','C','1','0','0');
INSERT INTO phpyun_city_class VALUES('1267','348','������','C','1','0','0');
INSERT INTO phpyun_city_class VALUES('1268','348','������','C','1','0','0');
INSERT INTO phpyun_city_class VALUES('1269','348','�Ǳ���','C','1','0','0');
INSERT INTO phpyun_city_class VALUES('1270','348','������','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('1271','348','��Դ��','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('1272','348','��ͨ��������������','D','1','0','0');
INSERT INTO phpyun_city_class VALUES('1273','349','ƽ����','P','1','0','0');
INSERT INTO phpyun_city_class VALUES('1274','349','�ֶ���','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('1275','349','��ͻ�������������','M','1','0','0');
INSERT INTO phpyun_city_class VALUES('1276','349','��������������','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('1277','349','��¡����������','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('1278','349','ѭ��������������','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('1279','352','ͬ����','T','1','0','0');
INSERT INTO phpyun_city_class VALUES('1280','352','������','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('1281','352','�����','Z','1','0','0');
INSERT INTO phpyun_city_class VALUES('1282','352','�����ɹ���������','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('1283','351','������','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('1284','351','������','Q','1','0','0');
INSERT INTO phpyun_city_class VALUES('1285','351','�ղ���','G','1','0','0');
INSERT INTO phpyun_city_class VALUES('1286','351','��Դ����������','M','1','0','0');
INSERT INTO phpyun_city_class VALUES('1287','350','������','G','1','0','0');
INSERT INTO phpyun_city_class VALUES('1288','350','ͬ����','T','1','0','0');
INSERT INTO phpyun_city_class VALUES('1289','350','�����','G','1','0','0');
INSERT INTO phpyun_city_class VALUES('1290','350','�˺���','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('1291','350','������','G','1','0','0');
INSERT INTO phpyun_city_class VALUES('1292','353','������','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('1293','353','�Ӷ���','Z','1','0','0');
INSERT INTO phpyun_city_class VALUES('1294','353','�ƶ���','C','1','0','0');
INSERT INTO phpyun_city_class VALUES('1295','353','�ζ���','Z','1','0','0');
INSERT INTO phpyun_city_class VALUES('1296','353','��ǫ��','N','1','0','0');
INSERT INTO phpyun_city_class VALUES('1297','353','��������','Q','1','0','0');
INSERT INTO phpyun_city_class VALUES('1298','354','������','M','1','0','0');
INSERT INTO phpyun_city_class VALUES('1299','354','������','B','1','0','0');
INSERT INTO phpyun_city_class VALUES('1300','354','�ʵ���','G','1','0','0');
INSERT INTO phpyun_city_class VALUES('1301','354','������','D','1','0','0');
INSERT INTO phpyun_city_class VALUES('1302','354','������','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('1303','354','�����','M','1','0','0');
INSERT INTO phpyun_city_class VALUES('1304','355','�������','D','1','0','0');
INSERT INTO phpyun_city_class VALUES('1305','355','���ľ��','G','1','0','0');
INSERT INTO phpyun_city_class VALUES('1306','355','������','W','1','0','0');
INSERT INTO phpyun_city_class VALUES('1307','355','������','D','1','0','0');
INSERT INTO phpyun_city_class VALUES('1308','355','�����','T','1','0','0');
INSERT INTO phpyun_city_class VALUES('1309','355','�����ί','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('1310','355','�����ί','D','1','0','0');
INSERT INTO phpyun_city_class VALUES('1311','355','ã����ί','M','1','0','0');
INSERT INTO phpyun_city_class VALUES('1312','356','��³ľ����','W','1','0','0');
INSERT INTO phpyun_city_class VALUES('1313','357','ɳ����','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('1314','358','������','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('1315','359','������','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('1316','359','������','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('1317','359','������','G','1','0','0');
INSERT INTO phpyun_city_class VALUES('1318','359','��Դ��','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('1319','359','������','Z','1','0','0');
INSERT INTO phpyun_city_class VALUES('1320','359','�ؿ�˹��','T','1','0','0');
INSERT INTO phpyun_city_class VALUES('1321','359','���տ���','N','1','0','0');
INSERT INTO phpyun_city_class VALUES('1322','360','��̨��','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('1323','360','ξ����','W','1','0','0');
INSERT INTO phpyun_city_class VALUES('1324','360','��Ǽ��','R','1','0','0');
INSERT INTO phpyun_city_class VALUES('1325','360','������','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('1326','360','�;���','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('1327','360','��˶��','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('1328','360','������','B','1','0','0');
INSERT INTO phpyun_city_class VALUES('1329','360','��ĩ��','Q','1','0','0');
INSERT INTO phpyun_city_class VALUES('1330','361','����˹��','M','1','0','0');
INSERT INTO phpyun_city_class VALUES('1331','361','��ͼ����','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('1332','361','������','C','1','0','0');
INSERT INTO phpyun_city_class VALUES('1333','361','������','Z','1','0','0');
INSERT INTO phpyun_city_class VALUES('1334','361','��ľ������','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('1335','361','��̨��','Q','1','0','0');
INSERT INTO phpyun_city_class VALUES('1336','361','ľ����','M','1','0','0');
INSERT INTO phpyun_city_class VALUES('1337','362','��������','A','1','0','0');
INSERT INTO phpyun_city_class VALUES('1338','362','��������','A','1','0','0');
INSERT INTO phpyun_city_class VALUES('1339','362','��ǡ��','W','1','0','0');
INSERT INTO phpyun_city_class VALUES('1340','363','������','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('1341','363','��Ȫ��','W','1','0','0');
INSERT INTO phpyun_city_class VALUES('1342','364','۷����','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('1343','364','�п�ѷ��','T','1','0','0');
INSERT INTO phpyun_city_class VALUES('1344','365','������','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('1345','365','������������������','B','1','0','0');
INSERT INTO phpyun_city_class VALUES('1346','366','�踽��','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('1347','366','������','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('1348','366','Ӣ��ɳ��','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('1349','366','������','Z','1','0','0');
INSERT INTO phpyun_city_class VALUES('1350','366','ɯ����','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('1351','366','Ҷ����','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('1352','366','�������','M','1','0','0');
INSERT INTO phpyun_city_class VALUES('1353','366','���պ���','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('1354','366','٤ʦ��','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('1355','366','�ͳ���','B','1','0','0');
INSERT INTO phpyun_city_class VALUES('1356','366','��ʲ�����������������','T','1','0','0');
INSERT INTO phpyun_city_class VALUES('1357','367','������','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('1358','367','ī����','M','1','0','0');
INSERT INTO phpyun_city_class VALUES('1359','367','Ƥɽ��','P','1','0','0');
INSERT INTO phpyun_city_class VALUES('1360','367','������','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('1361','367','������','C','1','0','0');
INSERT INTO phpyun_city_class VALUES('1362','367','������','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('1363','367','�����','M','1','0','0');
INSERT INTO phpyun_city_class VALUES('1364','368','�⳵��','K','1','0','0');
INSERT INTO phpyun_city_class VALUES('1365','368','ɳ����','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('1366','368','�º���','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('1367','368','�ݳ���','B','1','0','0');
INSERT INTO phpyun_city_class VALUES('1368','368','��ʲ��','W','1','0','0');
INSERT INTO phpyun_city_class VALUES('1369','368','��������','A','1','0','0');
INSERT INTO phpyun_city_class VALUES('1370','368','��ƺ��','K','1','0','0');
INSERT INTO phpyun_city_class VALUES('1371','369','������','Z','1','0','0');
INSERT INTO phpyun_city_class VALUES('1372','369','����','D','1','0','0');
INSERT INTO phpyun_city_class VALUES('1373','369','����','N','1','0','0');
INSERT INTO phpyun_city_class VALUES('1374','369','������','W','1','0','0');
INSERT INTO phpyun_city_class VALUES('1375','369','������','J','1','0','0');
INSERT INTO phpyun_city_class VALUES('1376','369','������','G','1','0','0');
INSERT INTO phpyun_city_class VALUES('1377','369','��ˮ����','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('1378','369','�ƴ�����','H','1','0','0');
INSERT INTO phpyun_city_class VALUES('1379','369','�ͼ����� �뵺��','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('1380','369','������','K','1','0','0');
INSERT INTO phpyun_city_class VALUES('1381','369','����','B','1','0','0');
INSERT INTO phpyun_city_class VALUES('1382','369','������','X','1','0','0');
INSERT INTO phpyun_city_class VALUES('1383','369','ɳ����','S','1','0','0');
INSERT INTO phpyun_city_class VALUES('1384','369','������','D','1','0','0');
INSERT INTO phpyun_city_class VALUES('1385','369','������','Q','1','0','0');
INSERT INTO phpyun_city_class VALUES('1386','369','������','T','1','0','0');
INSERT INTO phpyun_city_class VALUES('1387','369','Ԫ����','Y','1','0','0');
INSERT INTO phpyun_city_class VALUES('1388','370','���Ű뵺','A','1','0','0');
INSERT INTO phpyun_city_class VALUES('1389','370','·����','L','1','0','0');
INSERT INTO phpyun_city_class VALUES('1390','370','·���','L','1','0','0');

INSERT INTO phpyun_comclass VALUES('112','39','δ��','','2');
INSERT INTO phpyun_comclass VALUES('75','0','��ҵ��������','job_message','0');
INSERT INTO phpyun_comclass VALUES('10','0','��������','job_exp','0');
INSERT INTO phpyun_comclass VALUES('12','10','Ӧ���ҵ��','','2');
INSERT INTO phpyun_comclass VALUES('13','10','1������','','3');
INSERT INTO phpyun_comclass VALUES('14','10','2������','','4');
INSERT INTO phpyun_comclass VALUES('15','10','3������','','5');
INSERT INTO phpyun_comclass VALUES('16','10','5������','','6');
INSERT INTO phpyun_comclass VALUES('17','10','8������','','7');
INSERT INTO phpyun_comclass VALUES('18','10','10������','','8');
INSERT INTO phpyun_comclass VALUES('19','0','��ҵ����','job_pr','0');
INSERT INTO phpyun_comclass VALUES('20','19','������ҵ','','0');
INSERT INTO phpyun_comclass VALUES('21','19','������ҵ','','1');
INSERT INTO phpyun_comclass VALUES('22','19','˽Ӫ��ҵ','','2');
INSERT INTO phpyun_comclass VALUES('23','19','��Ӫ��ҵ','','3');
INSERT INTO phpyun_comclass VALUES('24','19','�ɷ�����ҵ','','4');
INSERT INTO phpyun_comclass VALUES('25','19','������ҵ','','4');
INSERT INTO phpyun_comclass VALUES('26','0','��ҵ��ģ','job_mun','0');
INSERT INTO phpyun_comclass VALUES('27','26','10������','','0');
INSERT INTO phpyun_comclass VALUES('28','26','10-50��','','1');
INSERT INTO phpyun_comclass VALUES('29','26','50-200��','','2');
INSERT INTO phpyun_comclass VALUES('30','26','200-500��','','3');
INSERT INTO phpyun_comclass VALUES('31','26','500-1000��','','4');
INSERT INTO phpyun_comclass VALUES('32','26','1000������','','5');
INSERT INTO phpyun_comclass VALUES('33','0','��Ƹ����','job_number','0');
INSERT INTO phpyun_comclass VALUES('34','0','нˮ����','job_salary','0');
INSERT INTO phpyun_comclass VALUES('35','0','��������','job_type','0');
INSERT INTO phpyun_comclass VALUES('36','0','����ʱ��','job_report','0');
INSERT INTO phpyun_comclass VALUES('37','0','�Ա�','job_sex','0');
INSERT INTO phpyun_comclass VALUES('38','0','�����̶�','job_edu','0');
INSERT INTO phpyun_comclass VALUES('39','0','����״��','job_marriage','0');
INSERT INTO phpyun_comclass VALUES('40','33','����','','0');
INSERT INTO phpyun_comclass VALUES('41','33','1-2��','','1');
INSERT INTO phpyun_comclass VALUES('42','33','3-4��','','2');
INSERT INTO phpyun_comclass VALUES('43','33','5-6��','','3');
INSERT INTO phpyun_comclass VALUES('44','33','7-8��','','4');
INSERT INTO phpyun_comclass VALUES('45','33','9-10��','','5');
INSERT INTO phpyun_comclass VALUES('46','34','����','','1');
INSERT INTO phpyun_comclass VALUES('47','34','1000����','','2');
INSERT INTO phpyun_comclass VALUES('48','34','1000 - 1999','','3');
INSERT INTO phpyun_comclass VALUES('49','34','3000 - 4499','','4');
INSERT INTO phpyun_comclass VALUES('50','34','4500 - 5999','','5');
INSERT INTO phpyun_comclass VALUES('51','34','6000 - 7999','','6');
INSERT INTO phpyun_comclass VALUES('52','34','8000 - 9999','','7');
INSERT INTO phpyun_comclass VALUES('53','34','10000������','','9');
INSERT INTO phpyun_comclass VALUES('54','35','����','','0');
INSERT INTO phpyun_comclass VALUES('55','35','ȫְ','','1');
INSERT INTO phpyun_comclass VALUES('56','35','��ְ','','2');
INSERT INTO phpyun_comclass VALUES('57','36','����','','0');
INSERT INTO phpyun_comclass VALUES('58','36','1������','','1');
INSERT INTO phpyun_comclass VALUES('59','36','2������','','2');
INSERT INTO phpyun_comclass VALUES('60','36','3������','','3');
INSERT INTO phpyun_comclass VALUES('61','36','1����֮��','','4');
INSERT INTO phpyun_comclass VALUES('62','37','����','','0');
INSERT INTO phpyun_comclass VALUES('63','37','��','','1');
INSERT INTO phpyun_comclass VALUES('64','37','Ů','','2');
INSERT INTO phpyun_comclass VALUES('65','38','����','','0');
INSERT INTO phpyun_comclass VALUES('66','38','����','','1');
INSERT INTO phpyun_comclass VALUES('67','38','��ר','','2');
INSERT INTO phpyun_comclass VALUES('68','38','��ר','','3');
INSERT INTO phpyun_comclass VALUES('69','38','����','','4');
INSERT INTO phpyun_comclass VALUES('70','38','˶ʿ','','5');
INSERT INTO phpyun_comclass VALUES('71','38','��ʿ','','6');
INSERT INTO phpyun_comclass VALUES('72','39','����','','0');
INSERT INTO phpyun_comclass VALUES('73','39','�ѻ�','','1');
INSERT INTO phpyun_comclass VALUES('76','75','����','','1');
INSERT INTO phpyun_comclass VALUES('77','75','��ѯ','','1');
INSERT INTO phpyun_comclass VALUES('78','75','����','','2');
INSERT INTO phpyun_comclass VALUES('79','19','���й�˾','','0');
INSERT INTO phpyun_comclass VALUES('80','19','���һ���','','0');
INSERT INTO phpyun_comclass VALUES('81','19','��ҵ��λ','','0');
INSERT INTO phpyun_comclass VALUES('82','19','����','','0');
INSERT INTO phpyun_comclass VALUES('83','34','2000 - 2999','','3');
INSERT INTO phpyun_comclass VALUES('84','0','����Ҫ��','job_age','');
INSERT INTO phpyun_comclass VALUES('85','84','18-25��','','2');
INSERT INTO phpyun_comclass VALUES('86','84','35������','','3');
INSERT INTO phpyun_comclass VALUES('87','84','35������','','4');
INSERT INTO phpyun_comclass VALUES('88','84','����','','1');
INSERT INTO phpyun_comclass VALUES('89','0','��������','job_welfare','');
INSERT INTO phpyun_comclass VALUES('90','89','����һ��','','0');
INSERT INTO phpyun_comclass VALUES('91','89','����һ��','','0');
INSERT INTO phpyun_comclass VALUES('92','89','����ס','','0');
INSERT INTO phpyun_comclass VALUES('93','89','�ۺϲ���','','0');
INSERT INTO phpyun_comclass VALUES('94','89','���ս���','','0');
INSERT INTO phpyun_comclass VALUES('95','89','�����ƻ�','','0');
INSERT INTO phpyun_comclass VALUES('96','89','���۽���','','0');
INSERT INTO phpyun_comclass VALUES('97','89','�ݼ��ƶ�','','0');
INSERT INTO phpyun_comclass VALUES('98','89','�����ڼ���','','0');
INSERT INTO phpyun_comclass VALUES('99','0','����Ҫ��','job_lang','');
INSERT INTO phpyun_comclass VALUES('100','99','��ͨ��һ��','','0');
INSERT INTO phpyun_comclass VALUES('101','99','��ͨ������','','0');
INSERT INTO phpyun_comclass VALUES('102','99','��ͨ������','','0');
INSERT INTO phpyun_comclass VALUES('103','99','Ӣ��','','0');
INSERT INTO phpyun_comclass VALUES('104','99','����','','0');
INSERT INTO phpyun_comclass VALUES('105','99','����','','0');
INSERT INTO phpyun_comclass VALUES('106','99','����','','0');
INSERT INTO phpyun_comclass VALUES('107','99','��������','','0');
INSERT INTO phpyun_comclass VALUES('108','99','����','','0');
INSERT INTO phpyun_comclass VALUES('109','99','������','','0');
INSERT INTO phpyun_comclass VALUES('110','99','�Ϻ���','','0');
INSERT INTO phpyun_comclass VALUES('127','10','����','','1');
INSERT INTO phpyun_comclass VALUES('128','34','����','','1');

INSERT INTO phpyun_company VALUES('1','������ҵ�������޹�˾','35','23','20','239','27','','0','�򵥽���<img src=\"http://localhost/toptophr.com/data/kindeditor/plugins/emoticons/images/0.gif\" border=\"0\" alt=\"\" />','�㶫ʡ��ݸ���ϳ��������������','','����','','','','15920258490','820591677@qq.com','','113.746967','23.019569','./upload/company/20150206/make_S_14258473834.JPG','0','0','1423191133','','1423191399','0','./upload/company/20150206/14266054134.JPG','0','19','1','','1','0','','0','0','0','','0','0','0','0');


INSERT INTO phpyun_company_job VALUES('1','1','���','35','35','48','128','20','239','785','','128','54','0','127','57','62','65','72','����','0','','1423191399','1425744000','6','1423191399','1','','1','0','88','','','������ҵ�������޹�˾','23','27','20','3','2','','0','0','','./upload/company/20150206/make_S_14258473834.JPG','0','0','1','1','1','1424056548','0');

INSERT INTO phpyun_company_job_link VALUES('1','1','1','','','1','1','820591677@qq.com');


INSERT INTO phpyun_company_news VALUES('1','1','��������','1423191184','��������','0','');

INSERT INTO phpyun_company_order VALUES('1','1','142319101842772','','0.50','1423191018','1','������\r\n��ϵ�绰��\r\n���ԣ�','0','2','0','10','0');

INSERT INTO phpyun_company_pay VALUES('1','142304119146617','20.00','1423041191','2','2','�״���д��������','1','25');
INSERT INTO phpyun_company_pay VALUES('2','142319113492713','20.00','1423191134','2','1','�״���д��������','1','25');
INSERT INTO phpyun_company_pay VALUES('3','142319126655590','5.00','1423191266','2','1','�ϴ���ҵ���','1','0');
INSERT INTO phpyun_company_pay VALUES('4','142320140045400','-20.00','1423201400','2','1','������ҵģ��','1','15');
INSERT INTO phpyun_company_pay VALUES('5','142320143249089','-5.00','1423201432','2','1','������ҵģ��','1','15');
INSERT INTO phpyun_company_pay VALUES('6','142320184280743','-5.00','1423201842','2','1','����ְλ�Զ�ˢ��','1','9');
INSERT INTO phpyun_company_pay VALUES('7','142320184275440','-5.00','1423201842','2','1','����ְλ�Զ�ˢ��','1','9');

INSERT INTO phpyun_company_product VALUES('1','1','���Բ�Ʒ','/upload/product/20150206/14289724858.JPG','���Բ�Ʒ����','1423191225','0','');

INSERT INTO phpyun_company_rating VALUES('3','��ѻ�Ա','0','0','','','','','5','3','10','1','2','0','1','������ѻ�Ա','upload/compic/20121226/13601426595.JPG','000000','1','1','0','0','0');
INSERT INTO phpyun_company_rating VALUES('4','ͭ�ƻ�Ա','10','95','','','','','50','50','50','10','10','1','1','ͭ�ƻ�Ա','upload/compic/20121226/13611599075.JPG','FF2B1C','1','1','0','30','2');
INSERT INTO phpyun_company_rating VALUES('5','���ƻ�Ա','20','250','','','','','180','600','80','6','10','2','1','���ƻ�Ա','upload/compic/20121226/13662730644.JPG','FFBC21','1','1','0','30','0');
INSERT INTO phpyun_company_rating VALUES('6','���ƻ�Ա','100','900','','','','','800','888','800','100','100','3','1','���ƻ�Ա','','FF1C14','1','1','0','30','0');
INSERT INTO phpyun_company_rating VALUES('8','�»�Ա','50','270','','','','','0','0','0','0','0','7','1','','upload/compic/20121226/13611599075.JPG','000000','2','1','0','30','0');
INSERT INTO phpyun_company_rating VALUES('9','�����Ա','200','560','150','400','1418486400','1420819200','0','0','0','0','0','8','1','�����Ա','','FFFFFF','2','1','50','180','4');
INSERT INTO phpyun_company_rating VALUES('10','���Ա','500','1000','','','','','0','0','0','0','0','9','1','���Ա','','FFABEB','2','1','100','360','0');

INSERT INTO phpyun_company_show VALUES('1','1','./upload/show/20150206/14313723167.JPG','','1423191236','1','0');
INSERT INTO phpyun_company_show VALUES('2','2','./upload/show/20150206/14245974971.JPG','','1423191237','1','0');
INSERT INTO phpyun_company_show VALUES('3','3','./upload/show/20150206/14278787476.JPG','','1423191237','1','0');
INSERT INTO phpyun_company_show VALUES('4','4','./upload/show/20150206/14313162377.JPG','','1423191237','1','0');
INSERT INTO phpyun_company_show VALUES('5','5','./upload/show/20150206/14247537483.JPG','','1423191238','1','0');
INSERT INTO phpyun_company_show VALUES('6','6','./upload/show/20150206/14281912483.JPG','','1423191238','1','0');

INSERT INTO phpyun_company_statis VALUES('1','0.00','95','0','0','3','��ѻ�Ա','0','0.00','0.00','1','8','blue','green,blue','2','1','2','3','0','0','0','0','0','','','0','0','1423288242','0');

INSERT INTO phpyun_company_tpl VALUES('4','Ĭ��ģ��','default','upload/company/20131114/make_S_13616410212.PNG','0','0','1','0');
INSERT INTO phpyun_company_tpl VALUES('6','��ɫģ��','blue','upload/company/20131114/make_S_13868045228.PNG','1','5','1','0');
INSERT INTO phpyun_company_tpl VALUES('7','��ɫģ��','green','upload/company/20131114/make_S_13874121836.PNG','1','20','1','0');


INSERT INTO phpyun_desc_class VALUES('1','��������','1');
INSERT INTO phpyun_desc_class VALUES('2','֧����Ϣ','2');
INSERT INTO phpyun_desc_class VALUES('3','��վ��ɫ','3');
INSERT INTO phpyun_desc_class VALUES('4','��ѯ����','4');
INSERT INTO phpyun_desc_class VALUES('5','��ɫ����','5');

INSERT INTO phpyun_description VALUES('5','1','ע��Э��','about/service.html','ע��Э��','phpyun�˲�ϵͳ,hr135,��Ƹ,��ְ,��ͷ,ע��Э��','ע��Э��','1','','1','','<p align=\"left\">\r\n	PHPYUN�˲���Ƹϵͳ��phpyun.com���û�Э��<br />\r\n<br />\r\nһ����Ȩ��<br />\r\n<br />\r\n����ַ�����ݺ�ͼ���ܵ��й���Ȩ����������Լ�ı�����phpyun.com ӵ��һ��Ȩ����δ����ͬ�⣬�������ơ����κ�Ŀ������ʹ��&nbsp;phpyun.com ���ϵ����ݺ�ͼ��Ҳ�ܵ��ϸ�Ľ�ֹ�������ݺ�ͼ�����κ��޸ģ��ڱ�������δ���޸ģ��Լ��õ� phprencai.com ����ɵ�����£�phpyun.com �����ϲ��Ͽ���Ϊ������Ϣ����ͷ���ҵ�������;������ʹ�� phprencai.com ���ݵ�����ǰ������׼��ԭ����еġ�phpyun.com ��ӭ������롣�������ֱ���ύ��400-087- -6680����Ҫ���ƻ���� phprencai.com ������������Ƴ���ҳ��HTML��HTMLҲ���� phpyun.com�İ�Ȩ��phpyun.com ��ַ�ϵġ��ۿ����͡��о���Ҳ���� phpyun.com ���̱꣬���а����� ɫ����ϡ���ť����״����ƺ�����������ͼ��\r\n</p>\r\n<p align=\"left\">\r\n	<br />\r\n</p>\r\n<p align=\"left\">\r\n	<br />\r\n</p>\r\n<p align=\"left\">\r\n	<br />\r\n</p>\r\n<p align=\"left\">\r\n	<br />\r\n</p>','2','1','1417224045','0','1');
INSERT INTO phpyun_description VALUES('9','1','��������','about/phpyun.html','phpyunϵͳ��������','�˲���Ƹ��PHPYUN���˲�ϵͳ','PHP���˲�ϵͳ��һ�Դ��php+mysql�˲���վ����ϵͳ����������֧������ְ����Ƹ���ƶ˹�������һ��','1','','1','','����ȨЭ�������ҽ�������PHPYUN.3.0 �汾���γ���Ϣ�������޹�˾ӵ�жԱ���ȨЭ������ս���Ȩ��\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	I. Э����ɵ�Ȩ��\r\n</p>\r\n<p>\r\n	1. ����������ȫ���ر������û���ȨЭ��Ļ����ϣ��������Ӧ���ڷ���ҵ��;(���������û������߱������ʸ����Ȼ�ˣ��Ը�����������������ͽ��ף���ӯ������;�����·�ӯ�������ҵ��������ӯ������֯����PHPYUN �˲�ϵͳ�����ڲ�Ʒ��ʾ��չʾ��������������������������ӯ������Ӫ���)\r\n</p>\r\n<p>\r\n	2. ��������Э��涨��Լ�������Ʒ�Χ���޸� PHPYUN�˲���ϵͳ Դ����(������ṩ�Ļ�)�����������Ӧ������վҪ��\r\n</p>\r\n<p>\r\n	3. ��ӵ��ʹ�ñ�����������˲�ϵͳ��ȫ����Ƹ��Ϣ����ְ���û���Ϣ�������Ϣ������Ȩ���������е��������ݵ���ط�������\r\n</p>\r\n<p>\r\n	4. �����ҵ��Ȩ֮�������Խ������Ӧ������ҵ��;��ͬʱ�������������Ȩ������ȷ���ļ���֧�����ޡ�����֧�ַ�ʽ�ͼ���֧�����ݣ�����Ȩʱ�����ڼ���֧��������ӵ��ͨ��ָ���ķ�ʽ���ָ����Χ�ڵļ���֧�ַ�����ҵ��Ȩ�û����з�ӳ����������Ȩ����������������Ϊ��Ҫ���ǣ���û��һ�������ɵĳ�ŵ��֤��\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	II. Э��涨��Լ��������\r\n</p>\r\n<p>\r\n	1. δ����ҵ��Ȩ֮ǰ�����ý������������ҵ��;(��������������ҵ���˾�Ӫ����ҵ��վ����Ӫ����վ����ӯ��ΪĿ��ʵ��ӯ������վ)��\r\n</p>\r\n<p>\r\n	2. ���öԱ��������֮��������ҵ��Ȩ���г��⡢���ۡ���Ѻ�򷢷������֤��\r\n</p>\r\n<p>\r\n	3. ������Σ���������;��Ρ��Ƿ񾭹��޸Ļ��������޸ĳ̶���Σ�ֻҪʹ��PHPYUN �˲�ϵͳ ��������κβ��֣�δ��������ɣ���վ�����Powered by PHPYun.�����뱣����������������޸ġ�\r\n</p>\r\n<p>\r\n	4. �����δ�����ر�Э������������Ȩ������ֹ��������ɵ�Ȩ�������ջأ����е���Ӧ�������Ρ�\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	III. ���޵�������������\r\n</p>\r\n<p>\r\n	1. ����������������ļ�����Ϊ���ṩ�κ���ȷ�Ļ��������⳥�򵣱�����ʽ�ṩ�ġ�\r\n</p>\r\n<p>\r\n	2. �û�������Ը��ʹ�ñ�������������˽�ʹ�ñ�����ķ��գ�����δ�����Ʒ��������֮ǰ�����ǲ���ŵ�ṩ�κ���ʽ�ļ���֧�֡�ʹ�õ�����Ҳ���е��κ���ʹ�ñ���������������������Ρ�\r\n</p>\r\n<p>\r\n	3. ��Ǩ�γ���Ϣ�������޹�˾����ʹ�ñ�����������˲�ϵͳ�е����»�������Ϣ�е����Σ����ڲ��ַ��û���˽��Ϣ��ǰ���£��������κη�ʽ��ȡ�û�����Ʒ��Ϣ��Ȩ����\r\n</p>\r\n<p>\r\n	�й� phpyun�˲���ϵͳ! �����û���ȨЭ�顢��ҵ��Ȩ�뼼���������ϸ���ݣ�����PHPYUN �ٷ���վ�����ṩ�� ��Ǩ�γ���Ϣ�������޹�˾ӵ���ڲ�����֪ͨ������£��޸���ȨЭ��ͷ����Ŀ���Ȩ�����޸ĺ��Э����Ŀ����Ըı�֮���������Ȩ�û���Ч�������ı���ʽ����ȨЭ����ͬ˫������ǩ���Э��һ����������ȫ�ĺ͵�ͬ�ķ���Ч������һ����ʼ��װ PHPYUN2.5��������Ϊ��ȫ��Ⲣ���ܱ�Э��ĸ�������������������������Ȩ����ͬʱ���ܵ���ص�Լ�������ơ�Э����ɷ�Χ�������Ϊ����ֱ��Υ������ȨЭ�鲢������Ȩ��������Ȩ��ʱ��ֹ��Ȩ������ֹͣ�𺦣�������׷��������ε�Ȩ����\r\n</p>','4','1','1415763035','0','1');
INSERT INTO phpyun_description VALUES('21','1','��������','about/index.html','��������','��������','��������888','1','','1','','��������888','1','1','1415763002','0','1');
INSERT INTO phpyun_description VALUES('22','4','�ͷ�����','about/kf.html','�ͷ�����','�ͷ�����','�ͷ�����','1','','1','','�ͷ�����888','4','1','1415763116','1','1');
INSERT INTO phpyun_description VALUES('23','2','�շѱ�׼','about/charge.html','�շѱ�׼','�շѱ�׼','�շѱ�׼8','1','','1','','�շѱ�׼','6','1','1415763084','1','1');
INSERT INTO phpyun_description VALUES('24','4','���Ͷ��','about/gg.html','���Ͷ��','���Ͷ��','���Ͷ��','1','','1','','���Ͷ��','6','1','1415763074','1','1');
INSERT INTO phpyun_description VALUES('28','2','�����ʻ�','about/yh.html','�����ʻ�','�����ʻ�','�����ʻ�','1','','1','','�����ʻ�','2','1','1416318522','0','1');
INSERT INTO phpyun_description VALUES('29','3','���ֶһ�','index.php?m=redeem','','','','1','','1','','','23','1','1418223464','0','0');
INSERT INTO phpyun_description VALUES('31','3','���ķ���','index.php?m=subscribe','','','','1','','1','','','46','1','1418216835','0','0');
INSERT INTO phpyun_description VALUES('32','1','��������','about/service.html','��������','��������','��������','1','','1','','��������','18','1','1417685687','0','1');
INSERT INTO phpyun_description VALUES('33','4','����ָ��','about/newuser.html','����ָ��','����ָ��','����ָ��','1','','1','','����ָ��','38','1','1417685773','0','1');
INSERT INTO phpyun_description VALUES('34','5','ְ��ָ��','about/new.html','ְ��ָ��','','ְ��ָ��','1','','1','','ְ��ָ��','38','1','1417685815','0','1');
INSERT INTO phpyun_description VALUES('35','5','��ͼ����','about/map.html','��ͼ����','��ͼ����','��ͼ����','1','','1','','��ͼ����','36','1','1417685863','0','1');
INSERT INTO phpyun_description VALUES('36','2','��Ӫ��Դ','about/indexzy.html','��Ӫ��Դ','��Ӫ��Դ','��Ӫ��Դ','1','','1','','��Ӫ��Դ','28','1','1417685914','0','1');
INSERT INTO phpyun_description VALUES('37','2','Ʒ���ƹ�','about/pinpai.html','Ʒ���ƹ�','Ʒ���ƹ�','Ʒ���ƹ�','1','','1','','Ʒ���ƹ�','5','1','1417685956','0','1');
INSERT INTO phpyun_description VALUES('38','4','��������','about/ask.html','��������','��������','��������','1','','1','','��������','14','1','1417686018','0','1');


INSERT INTO phpyun_down_resume VALUES('1','2','1','1','1423201574');



INSERT INTO phpyun_finder VALUES('1','2','1','','hy=35','1423191851');



INSERT INTO phpyun_friend_info VALUES('1','wangsircompany','3','','','','','2','0');
INSERT INTO phpyun_friend_info VALUES('2','wangsirperson','3','','','','','1','0');



INSERT INTO phpyun_friend_state VALUES('1','1','��������ְλ <a href=\"http://localhost/toptophr.com/index.php?m=com&c=comapply&id=1\" target=\"_blank\">���</a>��','1423191399','1','');
INSERT INTO phpyun_friend_state VALUES('2','2','������ <a href=\"http://localhost/toptophr.com/index.php?m=resume&id=1\" target=\"_blank\">�¼���</a>��','1423191973','1','');
INSERT INTO phpyun_friend_state VALUES('3','2','��ע��<a href=\"http://localhost/toptophr.com/company/index.php?id=1\">������ҵ�������޹�˾</a>','1423192149','2','');
INSERT INTO phpyun_friend_state VALUES('4','2','ȡ���˶�<a href=\"http://localhost/toptophr.com/company/index.php?id=1\">������ҵ�������޹�˾</a>��ע','1423192151','2','');
INSERT INTO phpyun_friend_state VALUES('5','2','��ע��<a href=\"http://localhost/toptophr.com/company/index.php?id=1\">������ҵ�������޹�˾</a>','1423192152','2','');
INSERT INTO phpyun_friend_state VALUES('6','1','��������ҵģ�� <a href=\"http://localhost/toptophr.com/company/index.php?id=1\">��ɫģ��</a>','1423201400','1','');
INSERT INTO phpyun_friend_state VALUES('7','1','��������ҵģ�� <a href=\"http://localhost/toptophr.com/company/index.php?id=1\">��ɫģ��</a>','1423201432','1','');
INSERT INTO phpyun_friend_state VALUES('8','1','�������˼��� <a href=\"http://localhost/toptophr.com/index.php?m=resume&id=1\" target=\"_blank\">����</a> ��','1423201575','1','');
INSERT INTO phpyun_friend_state VALUES('9','1','�Ҹ��������˲� <a href=\"http://localhost/toptophr.com/index.php?m=resume\" target=\"_blank\">����</a> ���ԡ�','1423201612','1','');
INSERT INTO phpyun_friend_state VALUES('10','1','�Ҹ��������˲� <a href=\"http://localhost/toptophr.com/index.php?m=resume\" target=\"_blank\"></a> ���ԡ�','1425007150','1','');
INSERT INTO phpyun_friend_state VALUES('11','1','�������˼��� <a href=\"http://localhost/toptophr.com/index.php?m=resume\" target=\"_blank\"></a> ��','1425180496','1','');



INSERT INTO phpyun_industry VALUES('35','�����/������','6');
INSERT INTO phpyun_industry VALUES('36','����/�ͷ�/����֧��','0');
INSERT INTO phpyun_industry VALUES('37','���/����/����/����','0');
INSERT INTO phpyun_industry VALUES('38','����/Ӫ��/�ɹ�/����','0');
INSERT INTO phpyun_industry VALUES('39','����/��ҩ/ҽ��/����','0');
INSERT INTO phpyun_industry VALUES('40','���/�г�/ý��/����','0');
INSERT INTO phpyun_industry VALUES('41','����/���ز�','0');
INSERT INTO phpyun_industry VALUES('42','����/����/�߼�����','0');
INSERT INTO phpyun_industry VALUES('43','��ѯ/����/����/����','0');
INSERT INTO phpyun_industry VALUES('44','����ҵ','0');
INSERT INTO phpyun_industry VALUES('45','����Ա/����/����','1');
INSERT INTO phpyun_industry VALUES('836','����/��Դ','1');
INSERT INTO phpyun_industry VALUES('835','ó��/�ٻ�','2');
INSERT INTO phpyun_industry VALUES('837','��е/�豸/����','2');
INSERT INTO phpyun_industry VALUES('839','ͨ��/����','0');

INSERT INTO phpyun_job_class VALUES('35','0','�����/������','16','');
INSERT INTO phpyun_job_class VALUES('36','0','����/�ͷ�/����֧��','4','');
INSERT INTO phpyun_job_class VALUES('37','0','���/����/����/����','14','');
INSERT INTO phpyun_job_class VALUES('38','0','����/Ӫ��/�ɹ�/����','4','');
INSERT INTO phpyun_job_class VALUES('39','0','����/��ҩ/ҽ��/����','5','');
INSERT INTO phpyun_job_class VALUES('40','0','���/�г�/ý��/����','6','');
INSERT INTO phpyun_job_class VALUES('41','0','����/���ز�','7','');
INSERT INTO phpyun_job_class VALUES('42','0','����/����/�߼�����','8','');
INSERT INTO phpyun_job_class VALUES('43','0','��ѯ/����/����/����','14','');
INSERT INTO phpyun_job_class VALUES('44','0','����ҵ','15','');
INSERT INTO phpyun_job_class VALUES('45','0','����Ա/����/����','1','');
INSERT INTO phpyun_job_class VALUES('46','35','�����Ӳ��','1','');
INSERT INTO phpyun_job_class VALUES('47','35','��������','2','');
INSERT INTO phpyun_job_class VALUES('48','35','������/����','3','');
INSERT INTO phpyun_job_class VALUES('49','35','IT-����','4','');
INSERT INTO phpyun_job_class VALUES('50','35','IT-Ʒ�ܡ�����֧�ּ�����','5','');
INSERT INTO phpyun_job_class VALUES('51','839','ͨ�ż���������Ӧ��','6','');
INSERT INTO phpyun_job_class VALUES('52','839','����/����/�뵼��/�����Ǳ�','7','');
INSERT INTO phpyun_job_class VALUES('53','36','���۹���','4','');
INSERT INTO phpyun_job_class VALUES('54','36','������Ա','3','');
INSERT INTO phpyun_job_class VALUES('55','36','��������������','2','');
INSERT INTO phpyun_job_class VALUES('56','44','�ͷ�������֧�� ','7','');
INSERT INTO phpyun_job_class VALUES('57','37','����/���/˰��','1','');
INSERT INTO phpyun_job_class VALUES('58','37','����/֤ȯ/�ڻ�/Ͷ��','2','');
INSERT INTO phpyun_job_class VALUES('59','37','����','3','');
INSERT INTO phpyun_job_class VALUES('60','37','���� ','4','');
INSERT INTO phpyun_job_class VALUES('61','38','����/Ӫ��','9','');
INSERT INTO phpyun_job_class VALUES('62','38','����/��ȫ����','8','');
INSERT INTO phpyun_job_class VALUES('63','38','����/��е/��Դ','7','');
INSERT INTO phpyun_job_class VALUES('64','38','����','6','');
INSERT INTO phpyun_job_class VALUES('65','38','����','5','');
INSERT INTO phpyun_job_class VALUES('66','38','��װ/��֯/Ƥ��','4','');
INSERT INTO phpyun_job_class VALUES('67','38','�ɹ�','3','');
INSERT INTO phpyun_job_class VALUES('68','38','ó��','2','');
INSERT INTO phpyun_job_class VALUES('69','38','����/�ִ� ','1','');
INSERT INTO phpyun_job_class VALUES('70','39','����/��ҩ/ҽ����е','3','');
INSERT INTO phpyun_job_class VALUES('71','836','����/����','2','');
INSERT INTO phpyun_job_class VALUES('72','39','ҽԺ/ҽ��/���� ','1','');
INSERT INTO phpyun_job_class VALUES('73','40','���','6','');
INSERT INTO phpyun_job_class VALUES('74','40','����/ý��','5','');
INSERT INTO phpyun_job_class VALUES('75','40','�г�/Ӫ��','4','');
INSERT INTO phpyun_job_class VALUES('76','40','Ӱ��/ý��','3','');
INSERT INTO phpyun_job_class VALUES('77','40','д��/����/ӡˢ','2','');
INSERT INTO phpyun_job_class VALUES('78','40','����/���','1','');
INSERT INTO phpyun_job_class VALUES('79','41','����װ��/��������','1','');
INSERT INTO phpyun_job_class VALUES('80','41','���ز�','2','');
INSERT INTO phpyun_job_class VALUES('81','41','��ҵ���� ','3','');
INSERT INTO phpyun_job_class VALUES('82','42','������Դ','3','');
INSERT INTO phpyun_job_class VALUES('83','42','�߼�����','2','');
INSERT INTO phpyun_job_class VALUES('84','42','����/����','1','');
INSERT INTO phpyun_job_class VALUES('85','43','��ѯ/����','1','');
INSERT INTO phpyun_job_class VALUES('86','43','��ʦ/����/�Ϲ�','2','');
INSERT INTO phpyun_job_class VALUES('87','43','��ʦ','3','');
INSERT INTO phpyun_job_class VALUES('88','43','��ѵ','4','');
INSERT INTO phpyun_job_class VALUES('89','43','������Ա','5','');
INSERT INTO phpyun_job_class VALUES('90','44','����/����','6','');
INSERT INTO phpyun_job_class VALUES('91','44','�Ƶ�/����','5','');
INSERT INTO phpyun_job_class VALUES('92','44','����/����/����','4','');
INSERT INTO phpyun_job_class VALUES('93','44','�ٻ�/����/���۷���','3','');
INSERT INTO phpyun_job_class VALUES('94','44','��ͨ�������','2','');
INSERT INTO phpyun_job_class VALUES('95','44','����/����/��������','1','');
INSERT INTO phpyun_job_class VALUES('96','45','����Ա','8','');
INSERT INTO phpyun_job_class VALUES('97','45','����','7','');
INSERT INTO phpyun_job_class VALUES('98','45','��Уѧ��','6','');
INSERT INTO phpyun_job_class VALUES('99','45','�����ɲ�/��ѵ��/ʵϰ��','5','');
INSERT INTO phpyun_job_class VALUES('100','45','��ְ','4','');
INSERT INTO phpyun_job_class VALUES('101','45','����','3','');
INSERT INTO phpyun_job_class VALUES('102','45','����','2','');
INSERT INTO phpyun_job_class VALUES('103','45','ũ/��/��/�� ','1','');
INSERT INTO phpyun_job_class VALUES('104','46','�߼�Ӳ������ʦ','3','');
INSERT INTO phpyun_job_class VALUES('105','46','Ӳ������ʦ','2','');
INSERT INTO phpyun_job_class VALUES('106','46','����','1','');
INSERT INTO phpyun_job_class VALUES('121','48','�����������������ʦ','14','');
INSERT INTO phpyun_job_class VALUES('122','48','����/��Ƶ��������ʦ','15','');
INSERT INTO phpyun_job_class VALUES('108','47','�߼��������ʦ','12','');
INSERT INTO phpyun_job_class VALUES('109','47','�������ʦ','11','');
INSERT INTO phpyun_job_class VALUES('14','47','���UI���ʦ/����ʦ','10','');
INSERT INTO phpyun_job_class VALUES('111','47','����Ӧ�ù���ʦ','9','');
INSERT INTO phpyun_job_class VALUES('112','47','ERPʵʩ����','8','');
INSERT INTO phpyun_job_class VALUES('113','47','ERP��������','7','');
INSERT INTO phpyun_job_class VALUES('114','47','���󹤳�ʦ','1','');
INSERT INTO phpyun_job_class VALUES('115','47','ϵͳ���ɹ���ʦ','2','');
INSERT INTO phpyun_job_class VALUES('116','47','ϵͳ����Ա','3','');
INSERT INTO phpyun_job_class VALUES('117','47','ϵͳ����ʦ','4','');
INSERT INTO phpyun_job_class VALUES('118','47','ϵͳ�ܹ����ʦ','13','');
INSERT INTO phpyun_job_class VALUES('119','47','���ݿ⹤��ʦ/����Ա','5','');
INSERT INTO phpyun_job_class VALUES('120','47','�������','6','');
INSERT INTO phpyun_job_class VALUES('123','48','��ý��/��Ϸ��������ʦ','16','');
INSERT INTO phpyun_job_class VALUES('124','48','��վӪ�˾���/����','17','');
INSERT INTO phpyun_job_class VALUES('125','48','��վӪ��רԱ','18','');
INSERT INTO phpyun_job_class VALUES('126','48','���繤��ʦ','19','');
INSERT INTO phpyun_job_class VALUES('127','48','UI���ʦ/����','20','');
INSERT INTO phpyun_job_class VALUES('128','48','��վ�ܹ����ʦ','21','');
INSERT INTO phpyun_job_class VALUES('129','48','��վά������ʦ','22','');
INSERT INTO phpyun_job_class VALUES('130','48','ϵͳ����Ա/�������Ա','23','');
INSERT INTO phpyun_job_class VALUES('131','48','��վ�߻�','24','');
INSERT INTO phpyun_job_class VALUES('132','48','��վ�༭','13','');
INSERT INTO phpyun_job_class VALUES('133','48','��ҳ���/����/����','12','');
INSERT INTO phpyun_job_class VALUES('134','48','�ű���������ʦ','4','');
INSERT INTO phpyun_job_class VALUES('135','48','��Ϸ�߻�ʦ','3','');
INSERT INTO phpyun_job_class VALUES('136','48','��Ϸ�������ʦ','2','');
INSERT INTO phpyun_job_class VALUES('137','48','Flash���/����','1','');
INSERT INTO phpyun_job_class VALUES('138','48','��Ч���ʦ','5','');
INSERT INTO phpyun_job_class VALUES('139','48','�Ӿ����ʦ','6','');
INSERT INTO phpyun_job_class VALUES('140','48','��Ч���ʦ','7','');
INSERT INTO phpyun_job_class VALUES('141','48','SEO���������Ż�','8','');
INSERT INTO phpyun_job_class VALUES('142','48','������Ϣ��ȫ����ʦ','9','');
INSERT INTO phpyun_job_class VALUES('143','48','���ܴ���/�ۺϲ���','10','');
INSERT INTO phpyun_job_class VALUES('144','48','����','11','');
INSERT INTO phpyun_job_class VALUES('145','49','��ϯ����ִ�й�CTO/��ϯ��Ϣ��CIO','1','');
INSERT INTO phpyun_job_class VALUES('146','49','�����ܼ�/����','2','');
INSERT INTO phpyun_job_class VALUES('147','49','��Ϣ��������/����','3','');
INSERT INTO phpyun_job_class VALUES('148','49','��Ϣ����רԱ','4','');
INSERT INTO phpyun_job_class VALUES('149','49','��Ŀ�ܼ�','5','');
INSERT INTO phpyun_job_class VALUES('150','49','��Ŀ����','6','');
INSERT INTO phpyun_job_class VALUES('151','49','��Ŀ����','7','');
INSERT INTO phpyun_job_class VALUES('152','49','��Ŀִ��/Э����Ա','8','');
INSERT INTO phpyun_job_class VALUES('153','49','����','9','');
INSERT INTO phpyun_job_class VALUES('154','50','����֧��/ά������','10','');
INSERT INTO phpyun_job_class VALUES('155','50','����֧��/ά������ʦ','11','');
INSERT INTO phpyun_job_class VALUES('156','50','Helpdesk ����֧��','12','');
INSERT INTO phpyun_job_class VALUES('157','50','��������ʦ','13','');
INSERT INTO phpyun_job_class VALUES('158','50','��׼������ʦ','14','');
INSERT INTO phpyun_job_class VALUES('159','50','Ʒ�ʾ���','15','');
INSERT INTO phpyun_job_class VALUES('160','50','ϵͳ����','16','');
INSERT INTO phpyun_job_class VALUES('161','50','�������','17','');
INSERT INTO phpyun_job_class VALUES('162','50','Ӳ������','18','');
INSERT INTO phpyun_job_class VALUES('163','50','����Ա','19','');
INSERT INTO phpyun_job_class VALUES('164','50','�ĵ�����ʦ','20','');
INSERT INTO phpyun_job_class VALUES('165','50','������Ա/����','21','');
INSERT INTO phpyun_job_class VALUES('166','50','����','22','');
INSERT INTO phpyun_job_class VALUES('167','51','ͨ�ż�������ʦ','1','');
INSERT INTO phpyun_job_class VALUES('168','51','���ߴ��乤��ʦ','2','');
INSERT INTO phpyun_job_class VALUES('169','51','����ͨ�Ź���ʦ','3','');
INSERT INTO phpyun_job_class VALUES('170','51','���Ž�������ʦ','4','');
INSERT INTO phpyun_job_class VALUES('171','51','����ͨ�Ź���ʦ','5','');
INSERT INTO phpyun_job_class VALUES('172','51','�ƶ�ͨ�Ź���ʦ','6','');
INSERT INTO phpyun_job_class VALUES('173','51','�������繤��ʦ','7','');
INSERT INTO phpyun_job_class VALUES('174','51','ͨ�ŵ�Դ����ʦ','8','');
INSERT INTO phpyun_job_class VALUES('175','51','��ֵ��Ʒ��������ʦ','9','');
INSERT INTO phpyun_job_class VALUES('176','51','�ֻ������������ʦ','10','');
INSERT INTO phpyun_job_class VALUES('177','51','�ֻ�Ӧ�ÿ�������ʦ','11','');
INSERT INTO phpyun_job_class VALUES('178','51','����','12','');
INSERT INTO phpyun_job_class VALUES('179','52','IC��֤����ʦ','1','');
INSERT INTO phpyun_job_class VALUES('180','52','��������ʦ/����Ա','2','');
INSERT INTO phpyun_job_class VALUES('181','52','��·����ʦ/����Ա(ģ��/����)','3','');
INSERT INTO phpyun_job_class VALUES('182','52','����/���칤��ʦ/����Ա','4','');
INSERT INTO phpyun_job_class VALUES('183','52','����/����Ӽ���','5','');
INSERT INTO phpyun_job_class VALUES('184','52','�뵼�弼��','6','');
INSERT INTO phpyun_job_class VALUES('185','52','�Զ����ƹ���ʦ/����Ա','7','');
INSERT INTO phpyun_job_class VALUES('186','52','�����������(ARM/MCU...)','8','');
INSERT INTO phpyun_job_class VALUES('187','52','Ƕ��ʽ�������(Linux/��Ƭ��/DLC/DSP��)','9','');
INSERT INTO phpyun_job_class VALUES('188','52','Ƕ��ʽӲ������(�������)','10','');
INSERT INTO phpyun_job_class VALUES('189','52','���/��Դ����','11','');
INSERT INTO phpyun_job_class VALUES('190','52','FAE �ֳ�Ӧ�ù���ʦ','12','');
INSERT INTO phpyun_job_class VALUES('191','52','���չ���ʦ','13','');
INSERT INTO phpyun_job_class VALUES('192','52','���õ���/�����Ʒ�з�','14','');
INSERT INTO phpyun_job_class VALUES('193','52','����/�Ǳ�/��������ʦ','15','');
INSERT INTO phpyun_job_class VALUES('194','52','���Թ���ʦ','16','');
INSERT INTO phpyun_job_class VALUES('195','52','��ͼ��ƹ���ʦ','17','');
INSERT INTO phpyun_job_class VALUES('196','53','���ɵ�·IC���/Ӧ�ù���ʦ','1','');
INSERT INTO phpyun_job_class VALUES('197','53','IC��֤����ʦ','2','');
INSERT INTO phpyun_job_class VALUES('198','53','���ӹ���ʦ/����Ա','3','');
INSERT INTO phpyun_job_class VALUES('199','53','���Ӽ����з�����ʦ','4','');
INSERT INTO phpyun_job_class VALUES('200','53','��Ƶ����ʦ','5','');
INSERT INTO phpyun_job_class VALUES('201','53','����/����ά�޹���ʦ/��ʦ','6','');
INSERT INTO phpyun_job_class VALUES('202','53','��ѹ����ŵ繤��ʦ','7','');
INSERT INTO phpyun_job_class VALUES('203','53','��ͼ��ƹ������ܼ�','8','');
INSERT INTO phpyun_job_class VALUES('204','53','���۾���','9','');
INSERT INTO phpyun_job_class VALUES('205','53','��������','10','');
INSERT INTO phpyun_job_class VALUES('206','53','ҵ����չ����/����','11','');
INSERT INTO phpyun_job_class VALUES('207','53','����/�����ܼ�','12','');
INSERT INTO phpyun_job_class VALUES('208','53','����/��������','13','');
INSERT INTO phpyun_job_class VALUES('209','53','����/��������','14','');
INSERT INTO phpyun_job_class VALUES('210','53','��ͻ�����','15','');
INSERT INTO phpyun_job_class VALUES('211','53','�ͻ�����/����','16','');
INSERT INTO phpyun_job_class VALUES('212','53','���������ܼ�','17','');
INSERT INTO phpyun_job_class VALUES('213','53','�������۾���','18','');
INSERT INTO phpyun_job_class VALUES('214','53','�Ź�����/����','19','');
INSERT INTO phpyun_job_class VALUES('215','53','����','20','');
INSERT INTO phpyun_job_class VALUES('216','54','���۴���','1','');
INSERT INTO phpyun_job_class VALUES('217','54','����/����רԱ','2','');
INSERT INTO phpyun_job_class VALUES('218','54','�ͻ�����','3','');
INSERT INTO phpyun_job_class VALUES('219','54','���۹���ʦ','4','');
INSERT INTO phpyun_job_class VALUES('220','54','�绰����','5','');
INSERT INTO phpyun_job_class VALUES('221','54','�Ź�ҵ��Ա','6','');
INSERT INTO phpyun_job_class VALUES('222','54','������','7','');
INSERT INTO phpyun_job_class VALUES('223','54','����','8','');
INSERT INTO phpyun_job_class VALUES('224','55','������������/����','1','');
INSERT INTO phpyun_job_class VALUES('225','55','��������רԱ/����','2','');
INSERT INTO phpyun_job_class VALUES('226','55','ҵ���������/����','3','');
INSERT INTO phpyun_job_class VALUES('227','55','ҵ�����רԱ/����','4','');
INSERT INTO phpyun_job_class VALUES('228','55','������','5','');
INSERT INTO phpyun_job_class VALUES('229','55','��������/רԱ','6','');
INSERT INTO phpyun_job_class VALUES('230','55','��������','7','');
INSERT INTO phpyun_job_class VALUES('232','55','����','0','');
INSERT INTO phpyun_job_class VALUES('233','56','�ͷ��ܼ�(�Ǽ���)','0','');
INSERT INTO phpyun_job_class VALUES('234','56','�ͷ�����(�Ǽ���)','0','');
INSERT INTO phpyun_job_class VALUES('235','56','�ͷ�����(�Ǽ���)','0','');
INSERT INTO phpyun_job_class VALUES('236','56','�ͷ�רԱ/����(�Ǽ���)','0','');
INSERT INTO phpyun_job_class VALUES('237','56','�ͻ���ϵ����/����','0','');
INSERT INTO phpyun_job_class VALUES('238','56','Ͷ��רԱ','0','');
INSERT INTO phpyun_job_class VALUES('239','56','��ǰ/�ۺ���֧�־���','6','');
INSERT INTO phpyun_job_class VALUES('240','56','��ǰ/�ۺ���֧������','5','');
INSERT INTO phpyun_job_class VALUES('241','56','��ǰ/�ۺ���֧�ֹ���ʦ','4','');
INSERT INTO phpyun_job_class VALUES('242','56','��ѯ����/�������ķ�����Ա','3','');
INSERT INTO phpyun_job_class VALUES('243','56','VIPרԱ','2','');
INSERT INTO phpyun_job_class VALUES('244','56','����','1','');
INSERT INTO phpyun_job_class VALUES('245','57','��ϯ����� CFO','0','');
INSERT INTO phpyun_job_class VALUES('246','57','�����ܼ�','0','');
INSERT INTO phpyun_job_class VALUES('247','57','������','0','');
INSERT INTO phpyun_job_class VALUES('248','57','�������','0','');
INSERT INTO phpyun_job_class VALUES('249','57','��������/��������','0','');
INSERT INTO phpyun_job_class VALUES('250','57','��ƾ���/�������','0','');
INSERT INTO phpyun_job_class VALUES('251','57','���','0','');
INSERT INTO phpyun_job_class VALUES('252','57','����Ա','0','');
INSERT INTO phpyun_job_class VALUES('253','57','����/�������','0','');
INSERT INTO phpyun_job_class VALUES('254','57','�����Ա','0','');
INSERT INTO phpyun_job_class VALUES('255','57','�̶��ʲ����','0','');
INSERT INTO phpyun_job_class VALUES('256','57','�����������/����','0','');
INSERT INTO phpyun_job_class VALUES('257','57','�������Ա','0','');
INSERT INTO phpyun_job_class VALUES('258','57','�ɱ�����/�ɱ�����','0','');
INSERT INTO phpyun_job_class VALUES('259','57','�ɱ�����Ա','0','');
INSERT INTO phpyun_job_class VALUES('260','57','�ʽ���/����','0','');
INSERT INTO phpyun_job_class VALUES('261','57','�ʽ�רԱ','0','');
INSERT INTO phpyun_job_class VALUES('262','57','��ƾ���/����','0','');
INSERT INTO phpyun_job_class VALUES('263','57','���רԱ/����','0','');
INSERT INTO phpyun_job_class VALUES('264','57','˰����/˰������','0','');
INSERT INTO phpyun_job_class VALUES('265','57','˰��רԱ/����','0','');
INSERT INTO phpyun_job_class VALUES('266','57','ͳ��Ա','0','');
INSERT INTO phpyun_job_class VALUES('267','57','����','0','');
INSERT INTO phpyun_job_class VALUES('268','58','֤ȯ/�ڻ�/��㾭����','0','');
INSERT INTO phpyun_job_class VALUES('269','58','֤ȯ����ʦ','0','');
INSERT INTO phpyun_job_class VALUES('270','58','��Ʊ/�ڻ�������','0','');
INSERT INTO phpyun_job_class VALUES('271','58','����/�����о�Ա','0','');
INSERT INTO phpyun_job_class VALUES('272','58','Ͷ��/������Ŀ����','0','');
INSERT INTO phpyun_job_class VALUES('273','58','Ͷ��/��ƹ���','0','');
INSERT INTO phpyun_job_class VALUES('274','58','Ͷ������ҵ��','0','');
INSERT INTO phpyun_job_class VALUES('275','58','���ʾ���/��������','0','');
INSERT INTO phpyun_job_class VALUES('276','58','����רԱ','0','');
INSERT INTO phpyun_job_class VALUES('277','58','����ʦ','0','');
INSERT INTO phpyun_job_class VALUES('278','58','����','0','');
INSERT INTO phpyun_job_class VALUES('279','59','�г�/���г�','0','');
INSERT INTO phpyun_job_class VALUES('280','59','����ҵ���ž���/����','0','');
INSERT INTO phpyun_job_class VALUES('281','59','����ҵ��ͻ�����','0','');
INSERT INTO phpyun_job_class VALUES('282','59','��˾ҵ���ž���/����','0','');
INSERT INTO phpyun_job_class VALUES('283','59','��˾ҵ��ͻ�����','0','');
INSERT INTO phpyun_job_class VALUES('284','59','�ۺ�ҵ����/����','0','');
INSERT INTO phpyun_job_class VALUES('285','59','�ۺ�ҵ��רԱ','0','');
INSERT INTO phpyun_job_class VALUES('286','59','�ʲ�����/����','0','');
INSERT INTO phpyun_job_class VALUES('287','59','���տ���','0','');
INSERT INTO phpyun_job_class VALUES('288','59','�Ŵ�����','0','');
INSERT INTO phpyun_job_class VALUES('289','59','����˲�','0','');
INSERT INTO phpyun_job_class VALUES('290','59','������/����֤����','0','');
INSERT INTO phpyun_job_class VALUES('291','59','��㽻��','0','');
INSERT INTO phpyun_job_class VALUES('292','59','������Ա','0','');
INSERT INTO phpyun_job_class VALUES('293','59','�߼��ͻ�����/�ͻ�����','0','');
INSERT INTO phpyun_job_class VALUES('294','59','�ͻ�����/רԱ','0','');
INSERT INTO phpyun_job_class VALUES('295','59','Ӫҵ�����þ���','0','');
INSERT INTO phpyun_job_class VALUES('296','59','���й�Ա','0','');
INSERT INTO phpyun_job_class VALUES('297','59','���п�����������ҵ���ƹ�','0','');
INSERT INTO phpyun_job_class VALUES('298','59','����','0','');
INSERT INTO phpyun_job_class VALUES('299','60','���վ���ʦ','0','');
INSERT INTO phpyun_job_class VALUES('300','60','���ղ�Ʒ����/��Ŀ�߻�','0','');
INSERT INTO phpyun_job_class VALUES('301','60','����ҵ����/����','0','');
INSERT INTO phpyun_job_class VALUES('302','60','���մ���/������/�ͻ�����','0','');
INSERT INTO phpyun_job_class VALUES('303','60','��ƹ���/����滮ʦ','0','');
INSERT INTO phpyun_job_class VALUES('304','60','����������','0','');
INSERT INTO phpyun_job_class VALUES('305','60','���պ˱�','0','');
INSERT INTO phpyun_job_class VALUES('306','60','��������','0','');
INSERT INTO phpyun_job_class VALUES('307','60','���տͻ�����/���ڹ���','0','');
INSERT INTO phpyun_job_class VALUES('308','60','������ѵʦ','0','');
INSERT INTO phpyun_job_class VALUES('309','60','��������','0','');
INSERT INTO phpyun_job_class VALUES('310','60','��Լ����','0','');
INSERT INTO phpyun_job_class VALUES('311','60','����','0','');
INSERT INTO phpyun_job_class VALUES('312','61','��������/����','0','');
INSERT INTO phpyun_job_class VALUES('313','61','�ܹ���ʦ/���ܹ���ʦ','0','');
INSERT INTO phpyun_job_class VALUES('314','61','��Ŀ�ܼ�','0','');
INSERT INTO phpyun_job_class VALUES('315','61','��Ŀ����/������Ŀ����ʦ','0','');
INSERT INTO phpyun_job_class VALUES('316','61','Ӫ�˾���','0','');
INSERT INTO phpyun_job_class VALUES('317','61','Ӫ������','0','');
INSERT INTO phpyun_job_class VALUES('318','61','�����ܼ�','0','');
INSERT INTO phpyun_job_class VALUES('319','61','��������/��������','0','');
INSERT INTO phpyun_job_class VALUES('320','61','�����ƻ�/���Ϲ���(PMC)','0','');
INSERT INTO phpyun_job_class VALUES('321','61','��������/����/���/�鳤','0','');
INSERT INTO phpyun_job_class VALUES('322','61','������Ա','0','');
INSERT INTO phpyun_job_class VALUES('323','61','����Ա','0','');
INSERT INTO phpyun_job_class VALUES('324','61','����','0','');
INSERT INTO phpyun_job_class VALUES('325','62','��������/���Ծ���(QA/QC����)','0','');
INSERT INTO phpyun_job_class VALUES('326','62','��������/��������(QA/QC����)','0','');
INSERT INTO phpyun_job_class VALUES('327','62','��������/���Թ���ʦ(QA/QC����ʦ)','0','');
INSERT INTO phpyun_job_class VALUES('328','62','��������Ա/����Ա','0','');
INSERT INTO phpyun_job_class VALUES('329','62','�ɿ��ȹ���ʦ','0','');
INSERT INTO phpyun_job_class VALUES('330','62','���Ϸ�������ʦ','0','');
INSERT INTO phpyun_job_class VALUES('331','62','��֤����ʦ/���Ա','0','');
INSERT INTO phpyun_job_class VALUES('332','62','��ϵ����ʦ/���Ա','0','');
INSERT INTO phpyun_job_class VALUES('333','62','����/����/��ȫ����/���ܣ�EHS��','0','');
INSERT INTO phpyun_job_class VALUES('334','62','����/����/��ȫ����ʦ��EHS��','0','');
INSERT INTO phpyun_job_class VALUES('335','62','��Ӧ�̹���','0','');
INSERT INTO phpyun_job_class VALUES('336','62','�ɹ����ϡ��豸��������','0','');
INSERT INTO phpyun_job_class VALUES('337','62','����','0','');
INSERT INTO phpyun_job_class VALUES('338','63','�繤��ʦ','0','');
INSERT INTO phpyun_job_class VALUES('339','63','ά�޾���/����','0','');
INSERT INTO phpyun_job_class VALUES('340','63','ά�޹���ʦ','0','');
INSERT INTO phpyun_job_class VALUES('341','63','װ�乤��ʦ/��ʦ','0','');
INSERT INTO phpyun_job_class VALUES('342','63','����/���칤��ʦ/��ʦ','0','');
INSERT INTO phpyun_job_class VALUES('343','63','ע�ܹ���ʦ/��ʦ','0','');
INSERT INTO phpyun_job_class VALUES('344','63','���ӹ���ʦ/��ʦ','0','');
INSERT INTO phpyun_job_class VALUES('345','63','�о߹���ʦ/��ʦ','0','');
INSERT INTO phpyun_job_class VALUES('346','63','CNC����ʦ','0','');
INSERT INTO phpyun_job_class VALUES('347','63','��ѹ����ʦ/��ʦ','0','');
INSERT INTO phpyun_job_class VALUES('348','63','��¯����ʦ/��ʦ','0','');
INSERT INTO phpyun_job_class VALUES('349','63','��������ʦ/����Ա','0','');
INSERT INTO phpyun_job_class VALUES('350','63','��Դ����������','0','');
INSERT INTO phpyun_job_class VALUES('351','63','����/Ħ�г�����ʦ','0','');
INSERT INTO phpyun_job_class VALUES('352','63','��������ʦ','0','');
INSERT INTO phpyun_job_class VALUES('353','63','�����ͨ����ʦ/����Ա','0','');
INSERT INTO phpyun_job_class VALUES('354','63','�ɻ�ά�޻�еʦ','0','');
INSERT INTO phpyun_job_class VALUES('355','63','���������������','0','');
INSERT INTO phpyun_job_class VALUES('356','63','ˮ��/ˮ�繤��ʦ','0','');
INSERT INTO phpyun_job_class VALUES('357','63','ʯ����Ȼ��������Ա','0','');
INSERT INTO phpyun_job_class VALUES('358','63','�����̽/���ʿ��⹤��ʦ','0','');
INSERT INTO phpyun_job_class VALUES('359','63','����','0','');
INSERT INTO phpyun_job_class VALUES('360','64','�����з�����/����','0','');
INSERT INTO phpyun_job_class VALUES('361','64','�����з�����ʦ','0','');
INSERT INTO phpyun_job_class VALUES('362','64','��Ʒ����/�Ƴ̹���ʦ','0','');
INSERT INTO phpyun_job_class VALUES('363','64','��Ʒ�滮����ʦ','0','');
INSERT INTO phpyun_job_class VALUES('364','64','ʵ���Ҹ�����/����ʦ','0','');
INSERT INTO phpyun_job_class VALUES('365','64','����/�豸����','0','');
INSERT INTO phpyun_job_class VALUES('366','64','����/�豸����','0','');
INSERT INTO phpyun_job_class VALUES('367','64','����/�豸����ʦ','0','');
INSERT INTO phpyun_job_class VALUES('368','64','����/��е��ͼԱ','0','');
INSERT INTO phpyun_job_class VALUES('369','64','��ҵ����ʦ','0','');
INSERT INTO phpyun_job_class VALUES('370','64','���Ϲ���ʦ','0','');
INSERT INTO phpyun_job_class VALUES('371','64','��е����ʦ','0','');
INSERT INTO phpyun_job_class VALUES('372','64','�ṹ����ʦ','0','');
INSERT INTO phpyun_job_class VALUES('373','64','ģ�߹���ʦ','0','');
INSERT INTO phpyun_job_class VALUES('374','64','��������������ʦ','0','');
INSERT INTO phpyun_job_class VALUES('375','64','������ƹ���ʦ','0','');
INSERT INTO phpyun_job_class VALUES('376','64','�������ӹ���ʦ','0','');
INSERT INTO phpyun_job_class VALUES('377','64','������������','0','');
INSERT INTO phpyun_job_class VALUES('378','64','������ȫ���ܹ���ʦ','0','');
INSERT INTO phpyun_job_class VALUES('379','64','����װ�乤�չ���ʦ','0','');
INSERT INTO phpyun_job_class VALUES('380','64','����������Ա','0','');
INSERT INTO phpyun_job_class VALUES('381','64','4S�꾭��/ά��վ����','0','');
INSERT INTO phpyun_job_class VALUES('382','64','��������/������','0','');
INSERT INTO phpyun_job_class VALUES('383','64','���ֳ�����ʦ','0','');
INSERT INTO phpyun_job_class VALUES('384','64','����','0','');
INSERT INTO phpyun_job_class VALUES('385','65','����','0','');
INSERT INTO phpyun_job_class VALUES('386','65','ǯ��/���޹�/�ӽ�','0','');
INSERT INTO phpyun_job_class VALUES('387','65','�纸��/í����','0','');
INSERT INTO phpyun_job_class VALUES('388','65','����/ĥ��/ϳ��/��ѹ��/�๤','0','');
INSERT INTO phpyun_job_class VALUES('389','65','�и��','0','');
INSERT INTO phpyun_job_class VALUES('390','65','ģ�߹�','0','');
INSERT INTO phpyun_job_class VALUES('391','65','�繤','0','');
INSERT INTO phpyun_job_class VALUES('392','65','�泵��','0','');
INSERT INTO phpyun_job_class VALUES('393','65','�յ���/���ݹ�/��¯��','0','');
INSERT INTO phpyun_job_class VALUES('394','65','ˮ��/ľ��/�Ṥ','0','');
INSERT INTO phpyun_job_class VALUES('395','65','�չ�/������','0','');
INSERT INTO phpyun_job_class VALUES('396','65','�÷�ӡ������','0','');
INSERT INTO phpyun_job_class VALUES('397','65','��������','0','');
INSERT INTO phpyun_job_class VALUES('398','65','����','0','');
INSERT INTO phpyun_job_class VALUES('399','66','��װ/��֯����ܼ�','0','');
INSERT INTO phpyun_job_class VALUES('400','66','��װ/��֯���','0','');
INSERT INTO phpyun_job_class VALUES('401','66','���ϸ��Ͽ���','0','');
INSERT INTO phpyun_job_class VALUES('402','66','���ϸ��ϲɹ�','0','');
INSERT INTO phpyun_job_class VALUES('403','66','��װ/��֯/Ƥ�����','0','');
INSERT INTO phpyun_job_class VALUES('404','66','��������/���Ա(QA/QC)','0','');
INSERT INTO phpyun_job_class VALUES('405','66','�巿/�ͷ/�׸����ʦ','0','');
INSERT INTO phpyun_job_class VALUES('406','66','����/�ư�','0','');
INSERT INTO phpyun_job_class VALUES('407','66','���Է���Ա','0','');
INSERT INTO phpyun_job_class VALUES('408','66','ֽ��ʦ/���幤','0','');
INSERT INTO phpyun_job_class VALUES('409','66','�ô�','0','');
INSERT INTO phpyun_job_class VALUES('410','66','����','0','');
INSERT INTO phpyun_job_class VALUES('411','67','�ɹ��ܼ�','0','');
INSERT INTO phpyun_job_class VALUES('412','67','�ɹ�����','0','');
INSERT INTO phpyun_job_class VALUES('413','67','�ɹ�����','0','');
INSERT INTO phpyun_job_class VALUES('414','67','�ɹ�Ա','0','');
INSERT INTO phpyun_job_class VALUES('415','67','�ɹ�����','0','');
INSERT INTO phpyun_job_class VALUES('416','67','����','0','');
INSERT INTO phpyun_job_class VALUES('417','67','��Ӧ�̿���','0','');
INSERT INTO phpyun_job_class VALUES('418','67','����','0','');
INSERT INTO phpyun_job_class VALUES('419','68','ó��/�����ھ���/����','0','');
INSERT INTO phpyun_job_class VALUES('420','68','ó��/������רԱ/����','0','');
INSERT INTO phpyun_job_class VALUES('421','68','����ó����Ա','0','');
INSERT INTO phpyun_job_class VALUES('422','68','ҵ���������','0','');
INSERT INTO phpyun_job_class VALUES('423','68','�߼�ҵ�����','0','');
INSERT INTO phpyun_job_class VALUES('424','68','ҵ�����','0','');
INSERT INTO phpyun_job_class VALUES('425','68','����ҵ�����','0','');
INSERT INTO phpyun_job_class VALUES('426','68','����','0','');
INSERT INTO phpyun_job_class VALUES('427','69','�����ܼ�','0','');
INSERT INTO phpyun_job_class VALUES('428','69','��������','0','');
INSERT INTO phpyun_job_class VALUES('429','69','��������','0','');
INSERT INTO phpyun_job_class VALUES('430','69','����רԱ/����','0','');
INSERT INTO phpyun_job_class VALUES('431','69','��Ӧ���ܼ�','0','');
INSERT INTO phpyun_job_class VALUES('432','69','��Ӧ������','0','');
INSERT INTO phpyun_job_class VALUES('433','69','��Ӧ������/רԱ','0','');
INSERT INTO phpyun_job_class VALUES('434','69','���Ͼ���','0','');
INSERT INTO phpyun_job_class VALUES('435','69','��������/רԱ','0','');
INSERT INTO phpyun_job_class VALUES('436','69','�ֿ⾭��/����','0','');
INSERT INTO phpyun_job_class VALUES('437','69','�ֿ����Ա','0','');
INSERT INTO phpyun_job_class VALUES('438','69','���侭��/����','0','');
INSERT INTO phpyun_job_class VALUES('439','69','��Ŀ����/����','0','');
INSERT INTO phpyun_job_class VALUES('440','69','���˴���','0','');
INSERT INTO phpyun_job_class VALUES('441','69','��װ��ҵ��','0','');
INSERT INTO phpyun_job_class VALUES('442','69','�����������','0','');
INSERT INTO phpyun_job_class VALUES('443','69','����Ա','0','');
INSERT INTO phpyun_job_class VALUES('444','69','��֤Ա','0','');
INSERT INTO phpyun_job_class VALUES('445','69','����/����½�˲���','0','');
INSERT INTO phpyun_job_class VALUES('446','69','���Ա','0','');
INSERT INTO phpyun_job_class VALUES('447','69','����Ա','0','');
INSERT INTO phpyun_job_class VALUES('448','69','���Ա','0','');
INSERT INTO phpyun_job_class VALUES('449','69','����','0','');
INSERT INTO phpyun_job_class VALUES('450','70','���﹤��/������ҩ','0','');
INSERT INTO phpyun_job_class VALUES('451','70','��ѧ��������Ա','0','');
INSERT INTO phpyun_job_class VALUES('452','70','ҽҩ�����з�������Ա','0','');
INSERT INTO phpyun_job_class VALUES('453','70','ҽҩ�����з���Ա','0','');
INSERT INTO phpyun_job_class VALUES('454','70','�ٴ��о�Ա','0','');
INSERT INTO phpyun_job_class VALUES('455','70','�ٴ�Э��Ա','0','');
INSERT INTO phpyun_job_class VALUES('456','70','�ٴ����ݷ���Ա','0','');
INSERT INTO phpyun_job_class VALUES('457','70','ҩƷע��','0','');
INSERT INTO phpyun_job_class VALUES('458','70','ҩƷ����/��������','0','');
INSERT INTO phpyun_job_class VALUES('459','70','ҩƷ�г��ƹ㾭��','0','');
INSERT INTO phpyun_job_class VALUES('460','70','ҩƷ�г��ƹ�����/רԱ','0','');
INSERT INTO phpyun_job_class VALUES('461','70','ҽҩ����','0','');
INSERT INTO phpyun_job_class VALUES('462','70','�����������','0','');
INSERT INTO phpyun_job_class VALUES('463','70','��Ͷ�����','0','');
INSERT INTO phpyun_job_class VALUES('464','70','ҽҩ���۾���/����','0','');
INSERT INTO phpyun_job_class VALUES('465','70','ҽҩ���۴���','0','');
INSERT INTO phpyun_job_class VALUES('466','70','ҽ���豸ע��','0','');
INSERT INTO phpyun_job_class VALUES('467','70','ҽ���豸����/��������','0','');
INSERT INTO phpyun_job_class VALUES('468','70','ҽ����е�г��ƹ�','0','');
INSERT INTO phpyun_job_class VALUES('469','70','ҽ����е����','0','');
INSERT INTO phpyun_job_class VALUES('470','70','ҽ����еά����Ա','0','');
INSERT INTO phpyun_job_class VALUES('471','70','����','0','');
INSERT INTO phpyun_job_class VALUES('472','71','��������Ӧ��/��������ʦ','0','');
INSERT INTO phpyun_job_class VALUES('473','71','����ʵ�����о�Ա/����Ա','0','');
INSERT INTO phpyun_job_class VALUES('474','71','Ϳ���з�����ʦ','0','');
INSERT INTO phpyun_job_class VALUES('475','71','��ɫ����Ա','0','');
INSERT INTO phpyun_job_class VALUES('476','71','���Ϲ���ʦ','0','');
INSERT INTO phpyun_job_class VALUES('477','71','��ױƷ�з�','0','');
INSERT INTO phpyun_job_class VALUES('478','71','ʳƷ/�����з�','0','');
INSERT INTO phpyun_job_class VALUES('479','71','��ֽ�з�','0','');
INSERT INTO phpyun_job_class VALUES('480','71','����','0','');
INSERT INTO phpyun_job_class VALUES('481','72','ҽԺ������Ա','0','');
INSERT INTO phpyun_job_class VALUES('482','72','�ڿ�ҽ��','0','');
INSERT INTO phpyun_job_class VALUES('483','72','���ҽ��','0','');
INSERT INTO phpyun_job_class VALUES('484','72','ר��ҽ��','0','');
INSERT INTO phpyun_job_class VALUES('485','72','����ҽ��','0','');
INSERT INTO phpyun_job_class VALUES('486','72','����ҽ��','0','');
INSERT INTO phpyun_job_class VALUES('487','72','��������ʦ','0','');
INSERT INTO phpyun_job_class VALUES('488','72','����ʦ','0','');
INSERT INTO phpyun_job_class VALUES('489','72','��ҽ��ҽ��','0','');
INSERT INTO phpyun_job_class VALUES('490','72','��ġ�����','0','');
INSERT INTO phpyun_job_class VALUES('491','72','����ҽ��','0','');
INSERT INTO phpyun_job_class VALUES('492','72','����ҽ��','0','');
INSERT INTO phpyun_job_class VALUES('493','72','Ӫ��ʦ','0','');
INSERT INTO phpyun_job_class VALUES('494','72','ҩ������/ҩ��ʦ','0','');
INSERT INTO phpyun_job_class VALUES('495','72','ҽҩѧ����','0','');
INSERT INTO phpyun_job_class VALUES('496','72','��������/��������','0','');
INSERT INTO phpyun_job_class VALUES('497','72','��������/��ʿ��','0','');
INSERT INTO phpyun_job_class VALUES('498','72','��ʿ/������Ա','0','');
INSERT INTO phpyun_job_class VALUES('499','72','��ҽ','0','');
INSERT INTO phpyun_job_class VALUES('500','72','���ʦ','0','');
INSERT INTO phpyun_job_class VALUES('501','72','����','0','');
INSERT INTO phpyun_job_class VALUES('502','73','���ͻ��ܼ�/���ܼ�','0','');
INSERT INTO phpyun_job_class VALUES('503','73','���ͻ�����','0','');
INSERT INTO phpyun_job_class VALUES('504','73','���ͻ�����/רԱ','0','');
INSERT INTO phpyun_job_class VALUES('505','73','��洴��/��ƾ���','0','');
INSERT INTO phpyun_job_class VALUES('506','73','��洴���ܼ�','0','');
INSERT INTO phpyun_job_class VALUES('507','73','��洴��/�������/רԱ','0','');
INSERT INTO phpyun_job_class VALUES('508','73','����ָ��','0','');
INSERT INTO phpyun_job_class VALUES('509','73','�İ�/�߻�','0','');
INSERT INTO phpyun_job_class VALUES('510','73','��ҵ/ҵ��չ����','0','');
INSERT INTO phpyun_job_class VALUES('511','73','��ҵ�߻���Ա','0','');
INSERT INTO phpyun_job_class VALUES('512','73','����','0','');
INSERT INTO phpyun_job_class VALUES('513','74','���ؾ���','0','');
INSERT INTO phpyun_job_class VALUES('514','74','��������','0','');
INSERT INTO phpyun_job_class VALUES('515','74','����רԱ','0','');
INSERT INTO phpyun_job_class VALUES('516','74','����/��չ����','0','');
INSERT INTO phpyun_job_class VALUES('517','74','����/��չ����','0','');
INSERT INTO phpyun_job_class VALUES('518','74','����/��չרԱ','0','');
INSERT INTO phpyun_job_class VALUES('519','74','ý�龭��','0','');
INSERT INTO phpyun_job_class VALUES('520','74','ý������','0','');
INSERT INTO phpyun_job_class VALUES('521','74','ý��רԱ','0','');
INSERT INTO phpyun_job_class VALUES('522','74','����/ý������','0','');
INSERT INTO phpyun_job_class VALUES('523','74','ý������','0','');
INSERT INTO phpyun_job_class VALUES('524','74','��߻�','0','');
INSERT INTO phpyun_job_class VALUES('525','74','����','0','');
INSERT INTO phpyun_job_class VALUES('526','75','�г�/Ӫ��/��չ�ܼ�','0','');
INSERT INTO phpyun_job_class VALUES('527','75','�г�/Ӫ��/��չ����','0','');
INSERT INTO phpyun_job_class VALUES('528','75','�г�/Ӫ��/��չ����','0','');
INSERT INTO phpyun_job_class VALUES('529','75','�г�/Ӫ��/��չרԱ','0','');
INSERT INTO phpyun_job_class VALUES('530','75','�г�����','0','');
INSERT INTO phpyun_job_class VALUES('531','75','�г�����/������Ա','0','');
INSERT INTO phpyun_job_class VALUES('532','75','��Ʒ/Ʒ�ƾ���','0','');
INSERT INTO phpyun_job_class VALUES('533','75','��Ʒ/Ʒ������','0','');
INSERT INTO phpyun_job_class VALUES('534','75','��Ʒ/Ʒ��רԱ','0','');
INSERT INTO phpyun_job_class VALUES('535','75','�г�ͨ·����/����','0','');
INSERT INTO phpyun_job_class VALUES('536','75','�г�ͨ·רԱ','0','');
INSERT INTO phpyun_job_class VALUES('537','75','�г��󻮾���/����','0','');
INSERT INTO phpyun_job_class VALUES('538','75','�г���רԱ','0','');
INSERT INTO phpyun_job_class VALUES('539','75','��������','0','');
INSERT INTO phpyun_job_class VALUES('540','75','��������/����','0','');
INSERT INTO phpyun_job_class VALUES('541','75','����Ա/����','0','');
INSERT INTO phpyun_job_class VALUES('542','75','ѡַ��չ/�µ꿪��','0','');
INSERT INTO phpyun_job_class VALUES('543','75','����','0','');
INSERT INTO phpyun_job_class VALUES('544','76','Ӱ�Ӳ߻�/������Ա','0','');
INSERT INTO phpyun_job_class VALUES('545','76','����/�ർ','0','');
INSERT INTO phpyun_job_class VALUES('546','76','����/����ܼ�','0','');
INSERT INTO phpyun_job_class VALUES('547','76','������/��̽','0','');
INSERT INTO phpyun_job_class VALUES('548','76','��Ա/ģ��/������','0','');
INSERT INTO phpyun_job_class VALUES('549','76','��Ӱʦ/����ʦ','0','');
INSERT INTO phpyun_job_class VALUES('550','76','��������','0','');
INSERT INTO phpyun_job_class VALUES('551','76','��Чʦ','0','');
INSERT INTO phpyun_job_class VALUES('552','76','����Ա','0','');
INSERT INTO phpyun_job_class VALUES('553','76','��ӳ����/����','0','');
INSERT INTO phpyun_job_class VALUES('554','76','��ӳԱ','0','');
INSERT INTO phpyun_job_class VALUES('555','76','��ױʦ/����ʦ','0','');
INSERT INTO phpyun_job_class VALUES('556','76','����','0','');
INSERT INTO phpyun_job_class VALUES('557','77','�ܱ�/���ܱ�','0','');
INSERT INTO phpyun_job_class VALUES('558','77','�༭','0','');
INSERT INTO phpyun_job_class VALUES('559','77','����/׫����','0','');
INSERT INTO phpyun_job_class VALUES('560','77','����','0','');
INSERT INTO phpyun_job_class VALUES('561','77','�绰�ɱ�','0','');
INSERT INTO phpyun_job_class VALUES('562','77','�����༭','0','');
INSERT INTO phpyun_job_class VALUES('563','77','�Ű����','0','');
INSERT INTO phpyun_job_class VALUES('564','77','У��/¼��','0','');
INSERT INTO phpyun_job_class VALUES('565','77','����/����','0','');
INSERT INTO phpyun_job_class VALUES('566','77','��ֲ���Ա','0','');
INSERT INTO phpyun_job_class VALUES('567','77','ӡˢ�Ű�/�ư�','0','');
INSERT INTO phpyun_job_class VALUES('568','77','����ֱӡ/�������','0','');
INSERT INTO phpyun_job_class VALUES('569','77','��������Ա','0','');
INSERT INTO phpyun_job_class VALUES('570','77','��ī��ʦ','0','');
INSERT INTO phpyun_job_class VALUES('571','77','ӡˢ��е����','0','');
INSERT INTO phpyun_job_class VALUES('572','77','ɹ��/ƴ��/װ��/�̽𼼹�','0','');
INSERT INTO phpyun_job_class VALUES('573','77','����','0','');
INSERT INTO phpyun_job_class VALUES('574','78','ƽ������ܼ�','0','');
INSERT INTO phpyun_job_class VALUES('575','78','ƽ����ƾ���/����','0','');
INSERT INTO phpyun_job_class VALUES('576','78','ƽ�����ʦ','0','');
INSERT INTO phpyun_job_class VALUES('577','78','�滭','0','');
INSERT INTO phpyun_job_class VALUES('578','78','����/3D���','0','');
INSERT INTO phpyun_job_class VALUES('579','78','ԭ��ʦ','0','');
INSERT INTO phpyun_job_class VALUES('580','78','չ��/չʾ/�������','0','');
INSERT INTO phpyun_job_class VALUES('581','78','��ý�����','0','');
INSERT INTO phpyun_job_class VALUES('582','78','��װ���','0','');
INSERT INTO phpyun_job_class VALUES('583','78','��ҵ/��Ʒ���','0','');
INSERT INTO phpyun_job_class VALUES('584','78','����Ʒ/�鱦��Ƽ���','0','');
INSERT INTO phpyun_job_class VALUES('585','78','�Ҿ�/�Ҿ���Ʒ���','0','');
INSERT INTO phpyun_job_class VALUES('586','78','������','0','');
INSERT INTO phpyun_job_class VALUES('587','78','����','0','');
INSERT INTO phpyun_job_class VALUES('588','79','�߼���������ʦ/�ܹ�','0','');
INSERT INTO phpyun_job_class VALUES('589','79','��������ʦ','0','');
INSERT INTO phpyun_job_class VALUES('590','79','�������ʦ','0','');
INSERT INTO phpyun_job_class VALUES('591','79','��������ʦ','0','');
INSERT INTO phpyun_job_class VALUES('592','79','�ṹ/��ľ/��������ʦ','0','');
INSERT INTO phpyun_job_class VALUES('593','79','��·/����/�ۿ�/�������','0','');
INSERT INTO phpyun_job_class VALUES('594','79','��������','0','');
INSERT INTO phpyun_job_class VALUES('595','79','¥���Զ���','0','');
INSERT INTO phpyun_job_class VALUES('596','79','�������繤��ʦ','0','');
INSERT INTO phpyun_job_class VALUES('597','79','��������ʦ','0','');
INSERT INTO phpyun_job_class VALUES('598','79','����ˮ/ůͨ����','0','');
INSERT INTO phpyun_job_class VALUES('599','79','Ļǽ����ʦ','0','');
INSERT INTO phpyun_job_class VALUES('600','79','�滮�����','0','');
INSERT INTO phpyun_job_class VALUES('601','79','������װ�����','0','');
INSERT INTO phpyun_job_class VALUES('602','79','԰��/԰��/�������','0','');
INSERT INTO phpyun_job_class VALUES('603','79','���/����','0','');
INSERT INTO phpyun_job_class VALUES('604','79','������ͼ','0','');
INSERT INTO phpyun_job_class VALUES('605','79','��������','0','');
INSERT INTO phpyun_job_class VALUES('606','79','�������ʦ/Ԥ���㾭��','0','');
INSERT INTO phpyun_job_class VALUES('607','79','Ԥ����Ա','0','');
INSERT INTO phpyun_job_class VALUES('608','79','�������̹���/��Ŀ����','0','');
INSERT INTO phpyun_job_class VALUES('609','79','������������','0','');
INSERT INTO phpyun_job_class VALUES('610','79','���̼���','0','');
INSERT INTO phpyun_job_class VALUES('611','79','��ͬ����','0','');
INSERT INTO phpyun_job_class VALUES('612','79','��ȫԱ','0','');
INSERT INTO phpyun_job_class VALUES('613','79','����Ա','0','');
INSERT INTO phpyun_job_class VALUES('614','79','ʩ��Ա','0','');
INSERT INTO phpyun_job_class VALUES('615','79','����','0','');
INSERT INTO phpyun_job_class VALUES('616','80','���ز���Ŀ/����/�߻�����','0','');
INSERT INTO phpyun_job_class VALUES('617','80','���ز���Ŀ/����/�߻�����/רԱ','0','');
INSERT INTO phpyun_job_class VALUES('618','80','������Ŀ���׹���ʦ','0','');
INSERT INTO phpyun_job_class VALUES('619','80','���ز���Ŀ��Ͷ��','0','');
INSERT INTO phpyun_job_class VALUES('620','80','���ز�����','0','');
INSERT INTO phpyun_job_class VALUES('621','80','���ز��н�/����','0','');
INSERT INTO phpyun_job_class VALUES('622','80','���ز����۾���/����','0','');
INSERT INTO phpyun_job_class VALUES('623','80','���ز�������Ա','0','');
INSERT INTO phpyun_job_class VALUES('624','80','����','0','');
INSERT INTO phpyun_job_class VALUES('625','81','�߼���ҵ����/��ҵ����','0','');
INSERT INTO phpyun_job_class VALUES('626','81','��ҵ������/����','0','');
INSERT INTO phpyun_job_class VALUES('627','81','��ҵ����רԱ/����','0','');
INSERT INTO phpyun_job_class VALUES('628','81','��ҵ����/����/����','0','');
INSERT INTO phpyun_job_class VALUES('629','81','��ҵ��ʩ������Ա','0','');
INSERT INTO phpyun_job_class VALUES('630','81','��ҵ���繤��ʦ','0','');
INSERT INTO phpyun_job_class VALUES('631','81','��ҵά����Ա','0','');
INSERT INTO phpyun_job_class VALUES('632','81','����','0','');
INSERT INTO phpyun_job_class VALUES('633','82','�����ܼ�','0','');
INSERT INTO phpyun_job_class VALUES('634','82','���¾���','0','');
INSERT INTO phpyun_job_class VALUES('635','82','��������','0','');
INSERT INTO phpyun_job_class VALUES('636','82','����רԱ','0','');
INSERT INTO phpyun_job_class VALUES('637','82','��������','0','');
INSERT INTO phpyun_job_class VALUES('638','82','��Ƹ����/����','0','');
INSERT INTO phpyun_job_class VALUES('639','82','��ƸרԱ/����','0','');
INSERT INTO phpyun_job_class VALUES('640','82','н�ʸ�������/����','0','');
INSERT INTO phpyun_job_class VALUES('641','82','н�ʸ���רԱ/����','0','');
INSERT INTO phpyun_job_class VALUES('642','82','��Ч���˾���/����','0','');
INSERT INTO phpyun_job_class VALUES('643','82','��Ч����רԱ/����','0','');
INSERT INTO phpyun_job_class VALUES('644','82','��ѵ����/����','0','');
INSERT INTO phpyun_job_class VALUES('645','82','��ѵרԱ/����/��ѵʦ','0','');
INSERT INTO phpyun_job_class VALUES('646','82','��ҵ�Ļ�/Ա����ϵ/�������','0','');
INSERT INTO phpyun_job_class VALUES('647','82','������Դ��ϢϵͳרԱ','0','');
INSERT INTO phpyun_job_class VALUES('648','82','����','0','');
INSERT INTO phpyun_job_class VALUES('649','83','��ϯִ�й�CEO/�ܲ�/�ܾ���','0','');
INSERT INTO phpyun_job_class VALUES('650','83','��ϯ��Ӫ��COO','0','');
INSERT INTO phpyun_job_class VALUES('651','83','���ܾ���/���ܲ�','0','');
INSERT INTO phpyun_job_class VALUES('652','83','�ϻ���','0','');
INSERT INTO phpyun_job_class VALUES('653','83','�ܼ�/���ž���','0','');
INSERT INTO phpyun_job_class VALUES('654','83','���Է�չ�ܼ�','0','');
INSERT INTO phpyun_job_class VALUES('655','83','���´���ϯ����','0','');
INSERT INTO phpyun_job_class VALUES('656','83','���´�/�ֹ�˾/��֧��������','0','');
INSERT INTO phpyun_job_class VALUES('657','83','�ܲ�����/�ܾ�������','0','');
INSERT INTO phpyun_job_class VALUES('658','83','����','0','');
INSERT INTO phpyun_job_class VALUES('659','84','�����ܼ�','0','');
INSERT INTO phpyun_job_class VALUES('660','84','��������/����/�칫������','0','');
INSERT INTO phpyun_job_class VALUES('661','84','����רԱ/����','0','');
INSERT INTO phpyun_job_class VALUES('662','84','��������/����','0','');
INSERT INTO phpyun_job_class VALUES('663','84','ǰ̨�Ӵ�/�ܻ�/�Ӵ���','0','');
INSERT INTO phpyun_job_class VALUES('664','84','����','0','');
INSERT INTO phpyun_job_class VALUES('665','84','ͼ�����Ա/���Ϲ���Ա','0','');
INSERT INTO phpyun_job_class VALUES('666','84','���Բ���Ա/����Ա','0','');
INSERT INTO phpyun_job_class VALUES('667','84','����','0','');
INSERT INTO phpyun_job_class VALUES('668','85','רҵ����','0','');
INSERT INTO phpyun_job_class VALUES('669','85','��ѯ�ܼ�','0','');
INSERT INTO phpyun_job_class VALUES('670','85','��ѯ����','0','');
INSERT INTO phpyun_job_class VALUES('671','85','רҵ��ѵʦ','0','');
INSERT INTO phpyun_job_class VALUES('672','85','��ѯԱ','0','');
INSERT INTO phpyun_job_class VALUES('673','85','����Ա','0','');
INSERT INTO phpyun_job_class VALUES('674','85','��ͷ/�˲��н�','0','');
INSERT INTO phpyun_job_class VALUES('675','85','�鱨��Ϣ������Ա','0','');
INSERT INTO phpyun_job_class VALUES('676','85','����','0','');
INSERT INTO phpyun_job_class VALUES('677','86','��ʦ/���ɹ���','0','');
INSERT INTO phpyun_job_class VALUES('678','86','��ʦ����','0','');
INSERT INTO phpyun_job_class VALUES('679','86','������','0','');
INSERT INTO phpyun_job_class VALUES('680','86','��������/רԱ','0','');
INSERT INTO phpyun_job_class VALUES('681','86','��������','0','');
INSERT INTO phpyun_job_class VALUES('682','86','�Ϲ澭��','0','');
INSERT INTO phpyun_job_class VALUES('683','86','�Ϲ�����/רԱ','0','');
INSERT INTO phpyun_job_class VALUES('684','86','֪ʶ��Ȩ/ר������/רԱ','0','');
INSERT INTO phpyun_job_class VALUES('685','86','����','0','');
INSERT INTO phpyun_job_class VALUES('686','87','У��','0','');
INSERT INTO phpyun_job_class VALUES('687','87','��ѧ����','0','');
INSERT INTO phpyun_job_class VALUES('688','87','��ʦ/����','0','');
INSERT INTO phpyun_job_class VALUES('689','87','��ѧ��ʦ','0','');
INSERT INTO phpyun_job_class VALUES('690','87','Сѧ��ʦ','0','');
INSERT INTO phpyun_job_class VALUES('691','87','�׽�','0','');
INSERT INTO phpyun_job_class VALUES('692','87','ԺУ���������Ա','0','');
INSERT INTO phpyun_job_class VALUES('693','87','��ְ��ʦ','0','');
INSERT INTO phpyun_job_class VALUES('694','87','�ҽ�','0','');
INSERT INTO phpyun_job_class VALUES('695','87','ְҵ������ʦ','0','');
INSERT INTO phpyun_job_class VALUES('696','87','����','0','');
INSERT INTO phpyun_job_class VALUES('697','88','��ѵ����','0','');
INSERT INTO phpyun_job_class VALUES('698','88','��ѵ��ʦ','0','');
INSERT INTO phpyun_job_class VALUES('699','88','��ѵ�߻�','0','');
INSERT INTO phpyun_job_class VALUES('700','88','��ѵ��Ʒ����','0','');
INSERT INTO phpyun_job_class VALUES('701','88','��ѵ/�γ̹���','0','');
INSERT INTO phpyun_job_class VALUES('702','88','��ѵ����','0','');
INSERT INTO phpyun_job_class VALUES('703','88','����','0','');
INSERT INTO phpyun_job_class VALUES('704','89','���й�����Ա','0','');
INSERT INTO phpyun_job_class VALUES('705','89','������Ա','0','');
INSERT INTO phpyun_job_class VALUES('707','90','����/���ֹ���','0','');
INSERT INTO phpyun_job_class VALUES('708','90','����/�������/����','0','');
INSERT INTO phpyun_job_class VALUES('709','90','����/���ַ���Ա','0','');
INSERT INTO phpyun_job_class VALUES('710','90','��������/����Ա','0','');
INSERT INTO phpyun_job_class VALUES('711','90','����/ӭ��','0','');
INSERT INTO phpyun_job_class VALUES('712','90','˾��','0','');
INSERT INTO phpyun_job_class VALUES('713','90','��������/��ʦ��','0','');
INSERT INTO phpyun_job_class VALUES('714','90','��ʦ/���ʦ','0','');
INSERT INTO phpyun_job_class VALUES('715','90','����ʦ/��̨Ա','0','');
INSERT INTO phpyun_job_class VALUES('716','90','����ʦ','0','');
INSERT INTO phpyun_job_class VALUES('717','90','����','0','');
INSERT INTO phpyun_job_class VALUES('718','91','�Ƶ�/���ݾ���','0','');
INSERT INTO phpyun_job_class VALUES('719','91','�Ƶ�/����Ӫ��','0','');
INSERT INTO phpyun_job_class VALUES('720','91','������','0','');
INSERT INTO phpyun_job_class VALUES('721','91','���þ���','0','');
INSERT INTO phpyun_job_class VALUES('722','91','���ͷ�����','0','');
INSERT INTO phpyun_job_class VALUES('723','91','¥�澭��','0','');
INSERT INTO phpyun_job_class VALUES('724','91','ǰ���Ӵ�','0','');
INSERT INTO phpyun_job_class VALUES('725','91','Ԥ��������','0','');
INSERT INTO phpyun_job_class VALUES('726','91','Ԥ��Ա','0','');
INSERT INTO phpyun_job_class VALUES('727','91','�ͷ�����Ա/¥�����Ա','0','');
INSERT INTO phpyun_job_class VALUES('728','91','��������','0','');
INSERT INTO phpyun_job_class VALUES('729','91','����Ա','0','');
INSERT INTO phpyun_job_class VALUES('730','91','�ܼҲ�����/����','0','');
INSERT INTO phpyun_job_class VALUES('731','91','��������Ա','0','');
INSERT INTO phpyun_job_class VALUES('732','91','��������','0','');
INSERT INTO phpyun_job_class VALUES('733','91','���β�Ʒ����','0','');
INSERT INTO phpyun_job_class VALUES('734','91','����/���й���','0','');
INSERT INTO phpyun_job_class VALUES('735','91','�г̹���/����','0','');
INSERT INTO phpyun_job_class VALUES('736','91','Ʊ��/��������','0','');
INSERT INTO phpyun_job_class VALUES('737','91','ǩ֤רԱ','0','');
INSERT INTO phpyun_job_class VALUES('738','91','����','0','');
INSERT INTO phpyun_job_class VALUES('739','92','���ݹ���/��ױ','0','');
INSERT INTO phpyun_job_class VALUES('740','92','��ױ��ѵʦ','0','');
INSERT INTO phpyun_job_class VALUES('741','92','ר���ױ����(BA)','0','');
INSERT INTO phpyun_job_class VALUES('742','92','��������/��ϯ����ʦ','0','');
INSERT INTO phpyun_job_class VALUES('743','92','�������','0','');
INSERT INTO phpyun_job_class VALUES('744','92','����ʦ','0','');
INSERT INTO phpyun_job_class VALUES('745','92','��������/ѧͽ','0','');
INSERT INTO phpyun_job_class VALUES('746','92','����ʦ','0','');
INSERT INTO phpyun_job_class VALUES('747','92','��Ħ/����','0','');
INSERT INTO phpyun_job_class VALUES('748','92','�������/����','0','');
INSERT INTO phpyun_job_class VALUES('749','92','�����˶�����','0','');
INSERT INTO phpyun_job_class VALUES('750','92','����Ա','0','');
INSERT INTO phpyun_job_class VALUES('751','92','�٤/�赸��ʦ','0','');
INSERT INTO phpyun_job_class VALUES('752','92','���ﻤ��/����','0','');
INSERT INTO phpyun_job_class VALUES('753','92','����','0','');
INSERT INTO phpyun_job_class VALUES('754','93','�곤/��������/¥�����','0','');
INSERT INTO phpyun_job_class VALUES('755','93','Ʒ�ྭ��','0','');
INSERT INTO phpyun_job_class VALUES('756','93','��Ա/ӪҵԱ','0','');
INSERT INTO phpyun_job_class VALUES('757','93','��������','0','');
INSERT INTO phpyun_job_class VALUES('758','93','����Ա/�ڱ�','0','');
INSERT INTO phpyun_job_class VALUES('759','93','��������/����Ա','0','');
INSERT INTO phpyun_job_class VALUES('760','93','���Ա/����Ա/�ջ�Ա','0','');
INSERT INTO phpyun_job_class VALUES('761','93','����Ա','0','');
INSERT INTO phpyun_job_class VALUES('762','93','����ʦ/������ӹ�','0','');
INSERT INTO phpyun_job_class VALUES('763','93','����ʳƷ�ӹ�/����','0','');
INSERT INTO phpyun_job_class VALUES('764','93','��ʳ�ӹ�','0','');
INSERT INTO phpyun_job_class VALUES('765','93','��ְ��Ա','0','');
INSERT INTO phpyun_job_class VALUES('766','93','����','0','');
INSERT INTO phpyun_job_class VALUES('767','94','�ɻ�����/������','0','');
INSERT INTO phpyun_job_class VALUES('768','94','�ճ���Ա','0','');
INSERT INTO phpyun_job_class VALUES('769','94','������Ա','0','');
INSERT INTO phpyun_job_class VALUES('770','94','�г�/��������','0','');
INSERT INTO phpyun_job_class VALUES('771','94','�г�/����˾��','0','');
INSERT INTO phpyun_job_class VALUES('772','94','����/������','0','');
INSERT INTO phpyun_job_class VALUES('773','94','��Ա','0','');
INSERT INTO phpyun_job_class VALUES('774','94','����Ա','0','');
INSERT INTO phpyun_job_class VALUES('775','94','˾��','0','');
INSERT INTO phpyun_job_class VALUES('776','94','����','0','');
INSERT INTO phpyun_job_class VALUES('777','95','��������','0','');
INSERT INTO phpyun_job_class VALUES('778','95','������Ա','0','');
INSERT INTO phpyun_job_class VALUES('779','95','����','0','');
INSERT INTO phpyun_job_class VALUES('780','95','Ѱ��Ա/����Ա','0','');
INSERT INTO phpyun_job_class VALUES('781','95','���˹�','0','');
INSERT INTO phpyun_job_class VALUES('782','95','��๤','0','');
INSERT INTO phpyun_job_class VALUES('783','95','��������/��ķ','0','');
INSERT INTO phpyun_job_class VALUES('784','95','����','0','');
INSERT INTO phpyun_job_class VALUES('785','96','����Ա','0','');
INSERT INTO phpyun_job_class VALUES('786','97','Ӣ�﷭��','0','');
INSERT INTO phpyun_job_class VALUES('787','97','���﷭��','0','');
INSERT INTO phpyun_job_class VALUES('788','97','���﷭��','0','');
INSERT INTO phpyun_job_class VALUES('789','97','���﷭��','0','');
INSERT INTO phpyun_job_class VALUES('790','97','���﷭��','0','');
INSERT INTO phpyun_job_class VALUES('791','97','������﷭��','0','');
INSERT INTO phpyun_job_class VALUES('792','97','�������﷭��','0','');
INSERT INTO phpyun_job_class VALUES('793','97','�������﷭��','0','');
INSERT INTO phpyun_job_class VALUES('794','97','�������﷭��','0','');
INSERT INTO phpyun_job_class VALUES('795','97','����/�����﷭��','0','');
INSERT INTO phpyun_job_class VALUES('796','97','̩�﷭��','0','');
INSERT INTO phpyun_job_class VALUES('797','97','�й����Է���','0','');
INSERT INTO phpyun_job_class VALUES('798','97','�������ַ���','0','');
INSERT INTO phpyun_job_class VALUES('821','98','�о���','0','');
INSERT INTO phpyun_job_class VALUES('800','99','�����ɲ�','0','');
INSERT INTO phpyun_job_class VALUES('801','99','��ѵ��','0','');
INSERT INTO phpyun_job_class VALUES('802','99','ʵϰ��','0','');
INSERT INTO phpyun_job_class VALUES('803','100','��ְ','0','');
INSERT INTO phpyun_job_class VALUES('804','101','ѱ��ʦ/����ѱ��ʦ','0','');
INSERT INTO phpyun_job_class VALUES('805','101','־Ը��','0','');
INSERT INTO phpyun_job_class VALUES('806','101','���� ','0','');
INSERT INTO phpyun_job_class VALUES('807','102','��������ʦ','0','');
INSERT INTO phpyun_job_class VALUES('808','102','����Ӱ�����۹���ʦ','0','');
INSERT INTO phpyun_job_class VALUES('809','102','�������','0','');
INSERT INTO phpyun_job_class VALUES('810','102','ˮ�ʼ��Ա','0','');
INSERT INTO phpyun_job_class VALUES('811','102','��ˮ������ʦ','0','');
INSERT INTO phpyun_job_class VALUES('812','102','�̷Ϲ���ʦ','0','');
INSERT INTO phpyun_job_class VALUES('813','102','����','0','');
INSERT INTO phpyun_job_class VALUES('814','103','��ֳ������','0','');
INSERT INTO phpyun_job_class VALUES('815','103','����(ũ/��/��/��ҵ)','0','');
INSERT INTO phpyun_job_class VALUES('816','103','ũ��ʦ','0','');
INSERT INTO phpyun_job_class VALUES('817','103','����ʦ','0','');
INSERT INTO phpyun_job_class VALUES('818','103','����Ա','0','');
INSERT INTO phpyun_job_class VALUES('819','103','����Ӫ��/�����з�','0','');
INSERT INTO phpyun_job_class VALUES('820','103','����','0','');
INSERT INTO phpyun_job_class VALUES('822','98','��ѧ/��רӦ���ҵ��','0','');
INSERT INTO phpyun_job_class VALUES('823','98','��ר/ְУ��','0','');
INSERT INTO phpyun_job_class VALUES('824','98','����','0','');
INSERT INTO phpyun_job_class VALUES('826','52','���ɵ�·IC���/Ӧ�ù���ʦ','0','');
INSERT INTO phpyun_job_class VALUES('827','52','���Ӽ����з�����ʦ','0','');
INSERT INTO phpyun_job_class VALUES('828','52','��Ƶ����ʦ','0','');
INSERT INTO phpyun_job_class VALUES('829','52','����/����ά�޹���ʦ/��ʦ','0','');
INSERT INTO phpyun_job_class VALUES('830','52','��ѹ����ŵ繤��ʦ','0','');
INSERT INTO phpyun_job_class VALUES('831','52','����','0','');
INSERT INTO phpyun_job_class VALUES('836','0','����/��Դ','3','');
INSERT INTO phpyun_job_class VALUES('835','0','ó��/�ٻ�','1','');
INSERT INTO phpyun_job_class VALUES('850','847','��·����ʦ','0','');
INSERT INTO phpyun_job_class VALUES('837','0','��е/�豸/����','2','');
INSERT INTO phpyun_job_class VALUES('839','0','ͨ��/����','2','');
INSERT INTO phpyun_job_class VALUES('847','836','����/��Դ/����/���','0','');
INSERT INTO phpyun_job_class VALUES('848','847','����/��������ʦ','0','');
INSERT INTO phpyun_job_class VALUES('849','847','�յ�/���ܹ���ʦ','0','');
INSERT INTO phpyun_job_class VALUES('844','835','��װ/��֯/Ƥ��','0','');
INSERT INTO phpyun_job_class VALUES('845','835','�ٻ�/����/����','0','');
INSERT INTO phpyun_job_class VALUES('851','847','��������ʦ','0','');
INSERT INTO phpyun_job_class VALUES('852','847','����ά�޼���Ա','0','');
INSERT INTO phpyun_job_class VALUES('853','847','����/ůͨ����ʦ','0','');
INSERT INTO phpyun_job_class VALUES('854','847','ǿ��ά�޼���','0','');
INSERT INTO phpyun_job_class VALUES('856','847','��ѹ/��Ƶ/�ŵ�','0','');
INSERT INTO phpyun_job_class VALUES('857','847','�����̽/���ʿ��⹤��ʦ','0','');
INSERT INTO phpyun_job_class VALUES('858','847','ú��/ú̿/ú��','0','');
INSERT INTO phpyun_job_class VALUES('859','847','��������ʦ','0','');
INSERT INTO phpyun_job_class VALUES('860','847','��Դ����������','0','');
INSERT INTO phpyun_job_class VALUES('861','847','ˮ��/ˮ�繤��ʦ','0','');
INSERT INTO phpyun_job_class VALUES('862','847','��繤��ʦ','0','');
INSERT INTO phpyun_job_class VALUES('863','847','���ϵͳ����ʦ','0','');
INSERT INTO phpyun_job_class VALUES('864','847','ȼ���ֻ�����ʦ','0','');
INSERT INTO phpyun_job_class VALUES('865','71','��������ʦ','0','');
INSERT INTO phpyun_job_class VALUES('866','71','��ˮ������ʦ','0','');
INSERT INTO phpyun_job_class VALUES('867','71','����Ӱ�����۹���ʦ','0','');
INSERT INTO phpyun_job_class VALUES('868','71','�������','0','');
INSERT INTO phpyun_job_class VALUES('869','71','ˮ�ʼ��Ա','0','');
INSERT INTO phpyun_job_class VALUES('870','71','�̷Ϲ���ʦ','0','');
INSERT INTO phpyun_job_class VALUES('871','835','ó��','0','');
INSERT INTO phpyun_job_class VALUES('872','871','��ó/�����ھ���/����','0','');
INSERT INTO phpyun_job_class VALUES('873','871','��ó/������רԱ/����','0','');
INSERT INTO phpyun_job_class VALUES('874','871','��ó/������רԱ/����','0','');
INSERT INTO phpyun_job_class VALUES('875','871','����ó�׾���/����','0','');
INSERT INTO phpyun_job_class VALUES('876','871','����ó��רԱ/����','0','');
INSERT INTO phpyun_job_class VALUES('877','871','ҵ���������/����','0','');
INSERT INTO phpyun_job_class VALUES('878','871','ҵ�����רԱ/����','0','');
INSERT INTO phpyun_job_class VALUES('879','871','��֤Ա','0','');
INSERT INTO phpyun_job_class VALUES('880','871','����/����Ա','0','');
INSERT INTO phpyun_job_class VALUES('881','844','��װ/��֯����ܼ�','0','');
INSERT INTO phpyun_job_class VALUES('882','844','��װ/��֯���','0','');
INSERT INTO phpyun_job_class VALUES('883','844','��װ/��֯/Ƥ�﹤��ʦ','0','');
INSERT INTO phpyun_job_class VALUES('884','844','���ϸ��Ͽ���/�ɹ�','0','');
INSERT INTO phpyun_job_class VALUES('885','844','��װ/��֯/Ƥ�����','0','');
INSERT INTO phpyun_job_class VALUES('886','844','��������/���Ա(QA/QC)','0','');
INSERT INTO phpyun_job_class VALUES('887','844','�巿/�ͷ/�׸����ʦ','0','');
INSERT INTO phpyun_job_class VALUES('888','844','����/�ư�','0','');
INSERT INTO phpyun_job_class VALUES('889','844','���Է���Ա','4','');
INSERT INTO phpyun_job_class VALUES('890','844','ֽ��ʦ/���幤4','4','');
INSERT INTO phpyun_job_class VALUES('891','844','�ô�','0','');
INSERT INTO phpyun_job_class VALUES('892','845','�곤/��������/¥�����','0','');
INSERT INTO phpyun_job_class VALUES('893','845','Ʒ�ྭ��','0','');
INSERT INTO phpyun_job_class VALUES('894','845','��Ա/ӪҵԱ','0','');
INSERT INTO phpyun_job_class VALUES('895','845','����Ա/�ڱ�','0','');
INSERT INTO phpyun_job_class VALUES('896','845','��������/����Ա','0','');
INSERT INTO phpyun_job_class VALUES('897','845','���Ա/����Ա/�ջ�Ա','0','');
INSERT INTO phpyun_job_class VALUES('898','845','����Ա','0','');
INSERT INTO phpyun_job_class VALUES('899','845','����ʦ/������ӹ�','0','');
INSERT INTO phpyun_job_class VALUES('900','845','����ʳƷ�ӹ�/����','0','');
INSERT INTO phpyun_job_class VALUES('901','845','��ʳ�ӹ�','0','');
INSERT INTO phpyun_job_class VALUES('902','845','��ְ��Ա','0','');
INSERT INTO phpyun_job_class VALUES('903','845','�곤����','0','');
INSERT INTO phpyun_job_class VALUES('904','845','������/����','0','');
INSERT INTO phpyun_job_class VALUES('905','845','��������','0','');
INSERT INTO phpyun_job_class VALUES('906','837','��е/�豸','0','');
INSERT INTO phpyun_job_class VALUES('907','837','����','0','');
INSERT INTO phpyun_job_class VALUES('908','906','ģ�߹���ʦ','0','');
INSERT INTO phpyun_job_class VALUES('909','906','��е����ʦ','0','');
INSERT INTO phpyun_job_class VALUES('910','906','���繤��ʦ','0','');
INSERT INTO phpyun_job_class VALUES('911','906','����/����','0','');
INSERT INTO phpyun_job_class VALUES('912','906','��ѹ����ʦ/��ʦ','0','');
INSERT INTO phpyun_job_class VALUES('913','906','ע�ܹ���ʦ/��ʦ','0','');
INSERT INTO phpyun_job_class VALUES('914','906','CNC����ʦ','0','');
INSERT INTO phpyun_job_class VALUES('915','906','�����ͨ����ʦ/����Ա','0','');
INSERT INTO phpyun_job_class VALUES('916','906','��¯����ʦ/��ʦ','0','');
INSERT INTO phpyun_job_class VALUES('917','906','��������ʦ','0','');
INSERT INTO phpyun_job_class VALUES('918','906','���������������','0','');
INSERT INTO phpyun_job_class VALUES('919','906','�о�','0','');
INSERT INTO phpyun_job_class VALUES('920','906','����/��е��ͼԱ','0','');
INSERT INTO phpyun_job_class VALUES('921','906','�ṹ����ʦ','0','');
INSERT INTO phpyun_job_class VALUES('922','906','�豸����ʦ','0','');
INSERT INTO phpyun_job_class VALUES('923','906','����','0','');
INSERT INTO phpyun_job_class VALUES('924','906','��е/�豸ά��','0','');
INSERT INTO phpyun_job_class VALUES('925','906','����/����','0','');
INSERT INTO phpyun_job_class VALUES('926','906','�����з�����/���� ','0','');
INSERT INTO phpyun_job_class VALUES('927','906','�����з�����ʦ','0','');
INSERT INTO phpyun_job_class VALUES('928','906','��Ʒ����/�Ƴ̹���ʦ','0','');
INSERT INTO phpyun_job_class VALUES('929','906','��Ʒ�滮����ʦ ','0','');
INSERT INTO phpyun_job_class VALUES('930','906','ʵ���Ҹ�����/����ʦ','0','');
INSERT INTO phpyun_job_class VALUES('931','906','����/�豸����/����','0','');
INSERT INTO phpyun_job_class VALUES('932','906','��ҵ����ʦ','0','');
INSERT INTO phpyun_job_class VALUES('933','906','���Ϲ���ʦ','0','');
INSERT INTO phpyun_job_class VALUES('934','906','ά�޾���/����','0','');
INSERT INTO phpyun_job_class VALUES('935','906','ά�޹���ʦ','0','');
INSERT INTO phpyun_job_class VALUES('936','906','װ�乤��ʦ/��ʦ','0','');
INSERT INTO phpyun_job_class VALUES('937','907','�չ�','0','');
INSERT INTO phpyun_job_class VALUES('938','907','�ӽ�/���޹�/��ѹ��','0','');
INSERT INTO phpyun_job_class VALUES('939','907','�纸��/í����/ǯ��','0','');
INSERT INTO phpyun_job_class VALUES('940','907','����/ĥ��/ϳ���๤','0','');
INSERT INTO phpyun_job_class VALUES('941','907','�и��','0','');
INSERT INTO phpyun_job_class VALUES('942','907','ģ�߹�','0','');
INSERT INTO phpyun_job_class VALUES('943','907','����/�泵��','0','');
INSERT INTO phpyun_job_class VALUES('944','907','�յ���/���ݹ�/��¯��','0','');
INSERT INTO phpyun_job_class VALUES('945','907','�繤/ˮ��/ľ��/���Ṥ','0','');
INSERT INTO phpyun_job_class VALUES('946','907','ƬƤ��/��Ƥ��','0','');
INSERT INTO phpyun_job_class VALUES('947','907','�÷�ӡ������','0','');
INSERT INTO phpyun_job_class VALUES('948','907','���ܹ�','0','');
INSERT INTO phpyun_job_class VALUES('949','907','�ͱ߹�/̨�湤','0','');
INSERT INTO phpyun_job_class VALUES('950','907','����','0','');
INSERT INTO phpyun_job_class VALUES('951','907','��������','0','');
INSERT INTO phpyun_job_class VALUES('952','907','������','3','');

INSERT INTO phpyun_look_job VALUES('1','2','1','1','1423202453','0','0');

INSERT INTO phpyun_look_resume VALUES('1','2','1','1','1425185929','0','0');
INSERT INTO phpyun_look_resume VALUES('2','0','1','0','1425182932','0','1');
INSERT INTO phpyun_look_resume VALUES('3','0','1','2','1425038412','0','1');

INSERT INTO phpyun_member VALUES('1','wangsircompany','1052b70297be09094c7c1faa8fe1aa6b','820591677@qq.com','15920258490','127.0.0.1','1423041056','127.0.0.1','1425442425','2','12','098969','','0','','1','0','0','','','','','','','0','','1','0');
INSERT INTO phpyun_member VALUES('2','wangsirperson','a6eddf9d85e774b625dfbe7b2d56a1c8','820591677@qq.com','15920258490','127.0.0.1','1423041139','127.0.0.1','1423294581','1','4','38583d','','0','','1','0','0','','','','','','','0','','1','0');

INSERT INTO phpyun_member_log VALUES('1','2','7','0','1','�޸Ļ�����Ϣ','127.0.0.1','1423041191');
INSERT INTO phpyun_member_log VALUES('2','1','0','0','2','�µ��ɹ�,����ID142319101842772','127.0.0.1','1423191018');
INSERT INTO phpyun_member_log VALUES('3','1','0','0','2','�޸Ķ�����������','127.0.0.1','1423191024');
INSERT INTO phpyun_member_log VALUES('4','1','7','0','2','�޸���ҵ��Ϣ','127.0.0.1','1423191134');
INSERT INTO phpyun_member_log VALUES('5','1','0','0','2','������ҵ��ͼ','127.0.0.1','1423191170');
INSERT INTO phpyun_member_log VALUES('6','1','0','0','2','�����ҵ����','127.0.0.1','1423191185');
INSERT INTO phpyun_member_log VALUES('7','1','0','0','2','�����ҵ��Ʒ','127.0.0.1','1423191225');
INSERT INTO phpyun_member_log VALUES('8','1','0','0','2','��ӻ���չʾ','127.0.0.1','1423191241');
INSERT INTO phpyun_member_log VALUES('9','1','0','0','2','�ϴ���ҵ���','127.0.0.1','1423191266');
INSERT INTO phpyun_member_log VALUES('10','1','1','1','2','���ְλ����ơ�','127.0.0.1','1423191399');
INSERT INTO phpyun_member_log VALUES('11','1','0','0','2','�޸�ְλ����״̬','127.0.0.1','1423191406');
INSERT INTO phpyun_member_log VALUES('12','2','0','0','1','���������','127.0.0.1','1423191851');
INSERT INTO phpyun_member_log VALUES('13','2','2','1','1','����һ�ݼ���','127.0.0.1','1423191973');
INSERT INTO phpyun_member_log VALUES('14','2','0','0','1','��ע�˲�����ҵ�������޹�˾','127.0.0.1','1423192149');
INSERT INTO phpyun_member_log VALUES('15','2','0','0','1','ȡ���˶Բ�����ҵ�������޹�˾��ע','127.0.0.1','1423192152');
INSERT INTO phpyun_member_log VALUES('16','2','0','0','1','��ע�˲�����ҵ�������޹�˾','127.0.0.1','1423192153');
INSERT INTO phpyun_member_log VALUES('17','1','0','0','2','������ҵģ��','127.0.0.1','1423201401');
INSERT INTO phpyun_member_log VALUES('18','1','0','0','2','������ҵģ��','127.0.0.1','1423201432');
INSERT INTO phpyun_member_log VALUES('19','1','3','0','2','�����˼���������','127.0.0.1','1423201575');
INSERT INTO phpyun_member_log VALUES('20','1','4','0','2','�������˲ţ�����','127.0.0.1','1423201612');
INSERT INTO phpyun_member_log VALUES('21','1','0','0','2','��ע�˲�','127.0.0.1','1423201629');
INSERT INTO phpyun_member_log VALUES('22','1','0','0','2','����ְλ�Զ�ˢ�¹���','127.0.0.1','1423201842');
INSERT INTO phpyun_member_log VALUES('23','1','0','0','2','����ˢ��ְλ����','127.0.0.1','1423201849');
INSERT INTO phpyun_member_log VALUES('24','1','0','0','2','�޸�ְλ����״̬','127.0.0.1','1423201873');
INSERT INTO phpyun_member_log VALUES('25','1','0','0','2','�����Ķ�����ְλ���˲�','127.0.0.1','1423292579');
INSERT INTO phpyun_member_log VALUES('26','1','4','0','2','�������˲ţ�','127.0.0.1','1425007150');
INSERT INTO phpyun_member_log VALUES('27','1','0','0','2','��ӻ���չʾ','127.0.0.1','1425021563');
INSERT INTO phpyun_member_log VALUES('28','1','0','0','2','ɾ����ҵ����չʾ','127.0.0.1','1425021580');
INSERT INTO phpyun_member_log VALUES('29','1','0','0','2','��ӻ���չʾ','127.0.0.1','1425021614');
INSERT INTO phpyun_member_log VALUES('30','1','0','0','2','��ӻ���չʾ','127.0.0.1','1425021767');
INSERT INTO phpyun_member_log VALUES('31','1','0','0','2','ɾ����ҵ����չʾ','127.0.0.1','1425021780');
INSERT INTO phpyun_member_log VALUES('32','1','0','0','2','��ӻ���չʾ','127.0.0.1','1425022006');
INSERT INTO phpyun_member_log VALUES('33','1','0','0','2','��ӻ���չʾ','127.0.0.1','1425030787');
INSERT INTO phpyun_member_log VALUES('34','1','0','0','2','��ӻ���չʾ','127.0.0.1','1425032603');
INSERT INTO phpyun_member_log VALUES('35','1','0','0','2','��ӻ���չʾ','127.0.0.1','1425032778');
INSERT INTO phpyun_member_log VALUES('36','1','0','0','2','��ӻ���չʾ','127.0.0.1','1425033040');
INSERT INTO phpyun_member_log VALUES('37','1','0','0','2','��ӻ���չʾ','127.0.0.1','1425033175');
INSERT INTO phpyun_member_log VALUES('38','1','0','0','2','��ӻ���չʾ','127.0.0.1','1425033775');
INSERT INTO phpyun_member_log VALUES('39','1','0','0','2','��ӻ���չʾ','127.0.0.1','1425034081');
INSERT INTO phpyun_member_log VALUES('40','1','0','0','2','��ӻ���չʾ','127.0.0.1','1425038406');
INSERT INTO phpyun_member_log VALUES('41','1','0','0','2','��ӻ���չʾ','127.0.0.1','1425042637');
INSERT INTO phpyun_member_log VALUES('42','1','0','0','2','��ӻ���չʾ','127.0.0.1','1425042773');
INSERT INTO phpyun_member_log VALUES('43','1','0','0','2','��ӻ���չʾ','127.0.0.1','1425043058');
INSERT INTO phpyun_member_log VALUES('44','1','0','0','2','��ӻ���չʾ','127.0.0.1','1425043156');
INSERT INTO phpyun_member_log VALUES('45','1','0','0','2','�ϴ�����','127.0.0.1','1425043564');
INSERT INTO phpyun_member_log VALUES('46','1','0','0','2','�ϴ�����','127.0.0.1','1425043684');
INSERT INTO phpyun_member_log VALUES('47','1','0','0','2','�ϴ�����','127.0.0.1','1425043852');
INSERT INTO phpyun_member_log VALUES('48','1','0','0','2','�ϴ�����','127.0.0.1','1425043933');
INSERT INTO phpyun_member_log VALUES('49','1','0','0','2','�ϴ�����','127.0.0.1','1425043986');
INSERT INTO phpyun_member_log VALUES('50','1','3','3','2','ɾ���ղؼ����˲�','127.0.0.1','1425179437');
INSERT INTO phpyun_member_log VALUES('51','1','0','0','2','ɾ�������������¼(ID:3)','127.0.0.1','1425179456');
INSERT INTO phpyun_member_log VALUES('52','1','0','0','2','ɾ�������������¼(ID:2)','127.0.0.1','1425179460');
INSERT INTO phpyun_member_log VALUES('53','1','3','3','2','ɾ���ղؼ����˲�','127.0.0.1','1425179870');
INSERT INTO phpyun_member_log VALUES('54','1','3','0','2','�����˼�����','127.0.0.1','1425180497');
INSERT INTO phpyun_member_log VALUES('55','1','0','0','2','�ϴ�����','127.0.0.1','1425180745');
INSERT INTO phpyun_member_log VALUES('56','1','3','3','2','ɾ�������ؼ����˲�','127.0.0.1','1425182023');
INSERT INTO phpyun_member_log VALUES('57','1','0','0','2','ɾ����ҵ����չʾ','127.0.0.1','1425182442');
INSERT INTO phpyun_member_log VALUES('58','1','0','0','2','ɾ����ҵ����չʾ','127.0.0.1','1425182467');
INSERT INTO phpyun_member_log VALUES('59','1','0','0','2','ɾ����ҵ����չʾ','127.0.0.1','1425183043');
INSERT INTO phpyun_member_log VALUES('60','1','0','0','2','ɾ���ϴ��ļ���','127.0.0.1','1425183075');
INSERT INTO phpyun_member_log VALUES('61','1','0','0','2','ɾ����ҵ����չʾ','127.0.0.1','1425183164');
INSERT INTO phpyun_member_log VALUES('62','1','0','0','2','ɾ����ҵ����չʾ','127.0.0.1','1425183171');
INSERT INTO phpyun_member_log VALUES('63','1','0','0','2','ɾ����ҵ����չʾ','127.0.0.1','1425183175');
INSERT INTO phpyun_member_log VALUES('64','1','0','0','2','ɾ����ҵ����չʾ','127.0.0.1','1425183180');

INSERT INTO phpyun_member_statis VALUES('2','120','0.00','1','0','0','0','0');




INSERT INTO phpyun_navigation VALUES('1','1','��ҳ','index.php','1','1','0','1','index.php','','','1','','');
INSERT INTO phpyun_navigation VALUES('2','1','�ҹ���','index.php?m=com','2','1','0','1','m_com.html','','','1','','');
INSERT INTO phpyun_navigation VALUES('3','1','���˲�','index.php?m=user','3','1','0','1','m_user.html','','','','','');
INSERT INTO phpyun_navigation VALUES('4','1','ְ����Ѷ','index.php?m=news','7','1','0','1','m_news.html','','','0','','');
INSERT INTO phpyun_navigation VALUES('5','1','΢��Ƹ','index.php?m=once','6','1','0','1','m_once.html','','','','','');
INSERT INTO phpyun_navigation VALUES('6','2','ע��Э��','about/service.html','98','1','1','1','','','','','','');
INSERT INTO phpyun_navigation VALUES('7','2','��������','about/about.html','54','1','1','1','','','','','','');
INSERT INTO phpyun_navigation VALUES('8','3','��������','about/about.html','99','1','0','1','','','','0','','');
INSERT INTO phpyun_navigation VALUES('9','3','��ҳ','index.html','55','1','0','1','','','','','','');
INSERT INTO phpyun_navigation VALUES('17','5','��ͼ','index.php?m=map','10','1','1','1','m_map.html','','','0','','');
INSERT INTO phpyun_navigation VALUES('11','1','�����̳�','index.php?m=redeem','9','1','0','1','m_redeem.html','','new','0','','');
INSERT INTO phpyun_navigation VALUES('15','1','��Ƹ��','index.php?m=zph','7','1','0','1','m_zph.html','','','0','','');
INSERT INTO phpyun_navigation VALUES('53','2','��վ��ͼ','sitemap.html','10','1','0','1','sitemap.html','#E53333','','0','','');
INSERT INTO phpyun_navigation VALUES('23','4','ְ���ʴ�','ask/index.php','15','1','0','1','','','','','','');
INSERT INTO phpyun_navigation VALUES('24','4','�˲�����ҳ','index.php','16','1','0','1','','','','','','');
INSERT INTO phpyun_navigation VALUES('32','5','�ʴ�','ask/index.php','0','1','1','1','','','','0','','');
INSERT INTO phpyun_navigation VALUES('26','1','΢����','index.php?m=tiny','6','1','0','1','m_tiny.html','','','','','');
INSERT INTO phpyun_navigation VALUES('34','2','��������','about/phpyun.html','3','1','0','1','','','','','','');
INSERT INTO phpyun_navigation VALUES('52','2','���Ͷ��','about/gg.html','5','1','1','1','about/gg.html','','','0','24','');
INSERT INTO phpyun_navigation VALUES('54','2','�շѱ�׼','about/charge.html','5','1','0','1','about/charge.html','','','0','23','');
INSERT INTO phpyun_navigation VALUES('55','2','�ͷ�����','about/kf.html','5','1','0','1','about/kf.html','','','0','22','');
INSERT INTO phpyun_navigation VALUES('56','1','������','index.php?m=hr','8','1','0','1','','','new','0','','');
INSERT INTO phpyun_navigation VALUES('60','12','������','index.php?c=wap','1','1','0','2','c_wap.html','','','0','','');
INSERT INTO phpyun_navigation VALUES('63','12','΢��','index.php?c=weixin','3','1','0','2','c_weixin.html','','','0','','');
INSERT INTO phpyun_navigation VALUES('64','1','��ҵ��ҳ','index.php?m=firm','7','1','0','1','m_firm.html','','','0','','');

INSERT INTO phpyun_navigation_type VALUES('1','ͷ������');
INSERT INTO phpyun_navigation_type VALUES('2','�ײ�����');
INSERT INTO phpyun_navigation_type VALUES('3','��ҵ�ײ�����');
INSERT INTO phpyun_navigation_type VALUES('5','ͷ���������Ҳࣩ');
INSERT INTO phpyun_navigation_type VALUES('12','�ײ��ͻ��˵���');

INSERT INTO phpyun_navmap VALUES('1','0','�ҹ���','index.php?m=com','99','1','0','1','m_com.html');
INSERT INTO phpyun_navmap VALUES('2','0','���˲�','index.php?m=user','98','1','0','1','m_user.html');
INSERT INTO phpyun_navmap VALUES('3','0','��Ѷ','new.html','97','1','0','1','m_news.html ');
INSERT INTO phpyun_navmap VALUES('4','1','��ͼ��Ƹ','index.php?m=map','91','1','0','1','m_map.html');
INSERT INTO phpyun_navmap VALUES('5','1','΢��Ƹ','index.php?m=once','92','1','0','1','m_once.html');
INSERT INTO phpyun_navmap VALUES('6','1','��ҵ��ҳ','index.php?m=firm','93','1','0','1','m_firm.html');
INSERT INTO phpyun_navmap VALUES('7','2','΢����','index.php?m=tiny','81','1','0','1','m_tiny.html');
INSERT INTO phpyun_navmap VALUES('8','2','������','index.php?m=hr','82','1','0','1','m_hr.html');
INSERT INTO phpyun_navmap VALUES('9','3','�ʴ�','ask/index.php','71','1','0','1','');
INSERT INTO phpyun_navmap VALUES('10','0','��վ��ɫ','','9','1','1','2','');
INSERT INTO phpyun_navmap VALUES('12','10','���ֶһ�','index.php?m=redeem','11','1','0','1','m_redeem.html');



INSERT INTO phpyun_news_group VALUES('1','0','ְҵָ��','20','0','0','1');
INSERT INTO phpyun_news_group VALUES('2','0','��������','0','1','0','1');
INSERT INTO phpyun_news_group VALUES('3','0','����ٿ�','10','1','0','1');
INSERT INTO phpyun_news_group VALUES('4','0','�߶˷�̸','0','1','0','1');
INSERT INTO phpyun_news_group VALUES('5','0','�Ͷ�����','0','0','0','1');
INSERT INTO phpyun_news_group VALUES('6','0','����ָ��','0','0','0','1');
INSERT INTO phpyun_news_group VALUES('7','0','�ֳ���Ƹ��','1','0','0','1');
INSERT INTO phpyun_news_group VALUES('8','0','��ְ����','3','0','0','1');
INSERT INTO phpyun_news_group VALUES('9','0','�����ؼ�','3','0','0','0');
INSERT INTO phpyun_news_group VALUES('10','0','н������','2','0','0','0');
INSERT INTO phpyun_news_group VALUES('17','0','���ֽ�Ŀ','0','0','0','0');


INSERT INTO phpyun_outside VALUES('5','������ҵ','company','10','10','uid desc','5','&lt;ul&gt;\r\n    &lt;!--ѭ����ʼ--&gt;\r\n    &lt;loop&gt;\r\n        &lt;li&gt;\r\n��˾���� ���룺{companyname} &lt;br/&gt; \r\n���� ���룺{url} \r\n&lt;br/&gt;��ҵ ���룺{hy} \r\n&lt;br/&gt;��ҵ���� ���룺{hy_url} \r\n&lt;br/&gt;��˾���� ���룺{pr}&lt;br/&gt;\r\n ��ҵ��ַ ���룺{city} \r\n&lt;br/&gt;��ҵ��ģ ���룺{mun} \r\n&lt;br/&gt;��ҵ��ַ ���룺{address} \r\n&lt;br/&gt;�̶��绰 ���룺{linkphone}&lt;br/&gt;\r\n ��ϵ���� ���룺{linkmail} \r\n&lt;br/&gt;����ʱ�� ���룺{sdate} \r\n&lt;br/&gt;ע���ʽ� ���룺{money}&lt;br/&gt;\r\n �������� ���룺{zip} \r\n&lt;br/&gt;��ϵ�� ���룺{linkman} \r\n&lt;br/&gt;ְλ�� ���룺{job_num} \r\n&lt;br/&gt;��ϵQQ ���룺{linkqq} \r\n&lt;br/&gt;��ϵ�绰 ���룺{linktel}&lt;br/&gt;\r\n ��ҵ��ַ ���룺{website} &lt;br/&gt;\r\n��ҵLOGO ���룺{logo}&lt;br/&gt;\r\n&lt;/li&gt;\r\n    &lt;/loop&gt;\r\n    &lt;!--ѭ������--&gt;\r\n&lt;/ul&gt;','0','1414208771','2','Y-m-d','');
INSERT INTO phpyun_outside VALUES('4','���¼���','resume','20','4','hits desc','5','&lt;ul&gt;\r\n    &lt;!- -ѭ����ʼ- -&gt;\r\n    &lt;loop&gt;\r\n        &lt;li&gt;\r\n\r\n�������� ���룺{resumename} &lt;br/&gt;\r\n���� ���룺{name} \r\n&lt;br/&gt;���� ���룺{url} \r\n&lt;br/&gt;���� ���룺{birthday}\r\n&lt;br/&gt; ѧ�� ���룺{edu}\r\n&lt;br/&gt; ����ʱ�� ���룺{lastedit} \r\n&lt;br/&gt;������� ���룺{hits} \r\n&lt;br/&gt;��ͷ�� ���룺{big_pic} \r\n&lt;br/&gt;Сͷ�� ���룺{small_pic} \r\n&lt;br/&gt;EMAIL ���룺{email} \r\n&lt;br/&gt;�绰 ���룺{tel} \r\n&lt;br/&gt;�ֻ� ���룺{moblie}\r\n&lt;br/&gt; ����������ҵ ���룺{hy} \r\n&lt;br/&gt;����������ҵ���� ���룺{hyurl} \r\n&lt;br/&gt;��������ְλ ���룺{job_classid} \r\n&lt;br/&gt;����ʱ�� ���룺{report} \r\n&lt;br/&gt;����нˮ ���룺{salary} \r\n&lt;br/&gt;������������ ���룺{type} \r\n&lt;br/&gt;���������ص�(����-�Ͼ�) ���룺{gz_city} \r\n&lt;br/&gt;�������ڵ�(����-�Ͼ�) ���룺{domicile} \r\n&lt;br/&gt;�־�ס��(����-�Ͼ�) ���룺{living} \r\n&lt;br/&gt;�������� ���룺{exp} \r\n&lt;br/&gt;��ϸ��ַ ���룺{address} \r\n&lt;br/&gt;���˼�� ���룺{description} \r\n&lt;br/&gt;���֤���� ���룺{idcard} \r\n&lt;br/&gt;������ҳ/���� ���룺{homepage}\r\n&lt;/li&gt;\r\n    &lt;/loop&gt;\r\n    &lt;!- -ѭ������- -&gt;\r\n&lt;/ul&gt;','0','1411361573','1','Y-m-d','');
INSERT INTO phpyun_outside VALUES('6','ְλ����','job','10','10','id desc','5','&lt;ul&gt;\r\n    &lt;!--ѭ����ʼ--&gt;\r\n    &lt;loop&gt;\r\n        &lt;li&gt;\r\nְλ���� ���룺{jobname} &lt;br/&gt;\r\n��˾���� ���룺{companyname}  &lt;br/&gt;\r\nְλ���� ���룺{url}  &lt;br/&gt;\r\n��˾���� ���룺{com_url}  &lt;br/&gt;\r\n������ҵ ���룺{hy}  &lt;br/&gt;\r\n��ҵ���� ���룺{hy_url}  &lt;br/&gt;\r\n��Ƹ���� ���룺{num}  &lt;br/&gt;\r\nְλ���� ���룺{jobtype}  &lt;br/&gt;\r\nѧ��Ҫ�� ���룺{edu}  &lt;br/&gt;\r\n����Ҫ�� ���룺{age}  &lt;br/&gt;\r\n����ʱ�� ���룺{report}  &lt;br/&gt;\r\n�������� ���룺{exp}  &lt;br/&gt;\r\n����Ҫ�� ���룺{lang}  &lt;br/&gt;\r\n�ṩ��н ���룺{salary}  &lt;br/&gt;\r\n�������� ���룺{welfare}  &lt;br/&gt;\r\n��Ч���� ���룺{time}  &lt;br/&gt;\r\n�����ص� ���룺{city} &lt;br/&gt;\r\n&lt;/li&gt;\r\n    &lt;/loop&gt;\r\n    &lt;!--ѭ������--&gt;\r\n&lt;/ul&gt;','0','1398735558','1','Y-m-d H:i','');
INSERT INTO phpyun_outside VALUES('7','��Ƹ�����','zph','10','10','id desc','5','&lt;ul&gt;\r\n    &lt;!--ѭ����ʼ--&gt;\r\n    &lt;loop&gt;\r\n        &lt;li&gt;\r\n&lt;a href=&quot;{url}&quot; {target}&gt;��Ƹ�����&lt;/a&gt; ���룺{title} &lt;br/&gt;\r\n���� ���룺{url} &lt;br/&gt;\r\n���췽 ���룺{organizers} &lt;br/&gt;\r\n�ٰ�ʱ�� ���룺{time} &lt;br/&gt;\r\n�ٰ�᳡ ���룺{address} &lt;br/&gt;\r\n��ѯ�绰 ���룺{phone} &lt;br/&gt;\r\n��ϵ�� ���룺{linkman} &lt;br/&gt;\r\n��ַ ���룺{website} &lt;br/&gt;\r\n��Ƹ��LOGO ���룺{logo} &lt;br/&gt;\r\n������ҵ�� ���룺{com_num}\r\n&lt;/li&gt;\r\n    &lt;/loop&gt;\r\n    &lt;!--ѭ������--&gt;\r\n&lt;/ul&gt;','0','1398735559','1','Y-m-d','');
INSERT INTO phpyun_outside VALUES('8','���Ų���','news','10','10','a.hits desc','5','&lt;ul&gt;\r\n    &lt;!--ѭ����ʼ--&gt;\r\n    &lt;loop&gt;\r\n        &lt;li&gt;\r\n���ű��� ���룺{title} &lt;br/&gt;\r\n���� ���룺{url} &lt;br/&gt;\r\n�ؼ��� ���룺{keyword} &lt;br/&gt;\r\n���� ���룺{author} &lt;br/&gt;\r\n����ʱ�� ���룺{time} &lt;br/&gt;\r\n����� ���룺{hits} &lt;br/&gt;\r\n���� ���룺{description} &lt;br/&gt;\r\n����ͼ ���룺{thumb} &lt;br/&gt;\r\n��Դ ���룺{source}&lt;br/&gt;&lt;/li&gt;\r\n    &lt;/loop&gt;\r\n    &lt;!--ѭ������--&gt;\r\n&lt;/ul&gt;','0','1398735559','1','Y-m-d H:i','');
INSERT INTO phpyun_outside VALUES('9','�ʴ����','ask','10','10','answer_num desc','5','&lt;ul&gt;\r\n    &lt;!--ѭ����ʼ--&gt;\r\n    &lt;loop&gt;\r\n        &lt;li&gt;�ʴ���� ���룺{title} &lt;br/&gt;\r\n�ʴ����� ���룺{url} \r\n&lt;br/&gt;\r\n�ʴ����� ���룺{content} \r\n&lt;br/&gt;\r\n������ ���룺{name} \r\n&lt;br/&gt;\r\n����ʱ�� ���룺{time} \r\n&lt;br/&gt;\r\n�ش����� ���룺{answer_num} \r\n&lt;br/&gt;\r\n������ͷ�� ���룺{img} \r\n&lt;br/&gt;\r\n���������� ���룺{user_url}&lt;/li&gt;\r\n    &lt;/loop&gt;\r\n    &lt;!--ѭ������--&gt;\r\n&lt;/ul&gt;','0','1398735559','1','Y-m-d H:i','');
INSERT INTO phpyun_outside VALUES('10','��ͷְλ','lt_job','10','10','a.hits desc','5','&lt;ul&gt;\r\n    &lt;!--ѭ����ʼ--&gt;\r\n    &lt;loop&gt;\r\n        &lt;li&gt;\r\nְλ���� ���룺{jobname} &lt;br/&gt;\r\nְλ���� ���룺{url}&lt;br/&gt;\r\n��Ƹ��ҵ ���룺{companyname}  &lt;br/&gt;\r\n��ҵ���� ���룺{com_url}  &lt;br/&gt;\r\n�����ص�(����-�Ͼ�) ���룺{address}  &lt;br/&gt;\r\n�������� ���룺{department}  &lt;br/&gt;\r\n������ҵ ���룺{hy}  &lt;br/&gt;\r\n��ҵ��ģ ���룺{mun}  &lt;br/&gt;\r\n��ҵ���� ���룺{pr}  &lt;br/&gt;\r\n�㱨���� ���룺{report}  &lt;br/&gt;\r\nְλ��� ���룺{jobtype}  &lt;br/&gt;\r\nн�ʹ��� ���룺{constitute}  &lt;br/&gt;\r\n��ٸ��� ���룺{years}  &lt;br/&gt;\r\n�籣���� ���룺{social}  &lt;br/&gt;\r\n��ס���� ���룺{live}  &lt;br/&gt;\r\n����ʱ�� ���룺{sdate}  &lt;br/&gt;\r\n��ֹ���� ���룺{edate}  &lt;br/&gt;\r\nְλ���� ���룺{job_desc}  &lt;br/&gt;\r\n��н ���룺{salary}  &lt;br/&gt;\r\nѧ��Ҫ�� ���룺{edu}  &lt;br/&gt;\r\n�Ա�Ҫ�� ���룺{sex}  &lt;br/&gt;\r\n����Ҫ�� ���룺{language}  &lt;br/&gt;\r\n�Ƿ�ͳ��ȫ���� ���룺{full}  &lt;br/&gt;\r\n����Ҫ�� ���룺{age}  &lt;br/&gt;\r\n�ܹ������� ���룺{exp}  &lt;br/&gt;\r\n������ҵ ���룺{qw_hy}  &lt;br/&gt;\r\n��ְ�ʸ� ���룺{eligible}  &lt;br/&gt;\r\n��ҵ���� ���룺{desc}  &lt;br/&gt;\r\nְλ������ ���룺{name} &lt;br/&gt;\r\n&lt;/li&gt;\r\n    &lt;/loop&gt;\r\n    &lt;!--ѭ������--&gt;\r\n&lt;/ul&gt;','0','1398735559','1','Y-m-d','');
INSERT INTO phpyun_outside VALUES('11','�������Ӳ���','link','10','10','link_sorting asc','5','&lt;ul&gt;\r\n    &lt;!--ѭ����ʼ--&gt;\r\n    &lt;loop&gt;\r\n        &lt;li&gt;\r\n���� ���룺{link_name}&lt;br/&gt;\r\n���� ���룺{link_url} &lt;br/&gt;\r\nͼƬ��ַ(ͼƬ����ʹ��) ���룺{link_src}&lt;br/&gt;\r\n&lt;/li&gt;\r\n    &lt;/loop&gt;\r\n    &lt;!--ѭ������--&gt;\r\n&lt;/ul&gt;','0','1414217981','1','Y-m-d','img_type_1');
INSERT INTO phpyun_outside VALUES('12','һ�仰��Ƹ����','once','10','10','id desc','5','&lt;ul&gt;\r\n    &lt;!--ѭ����ʼ--&gt;\r\n    &lt;loop&gt;\r\n        &lt;li&gt;ְλ���� ���룺{jobname} &lt;br/&gt;\r\n��˾���� ���룺{companyname} &lt;br/&gt;\r\n���� ���룺{url} &lt;br/&gt;\r\n��Ƹ���� ���룺{mans} &lt;br/&gt;\r\n��ƸҪ�� ���룺{require} &lt;br/&gt;\r\n��ϵ�绰 ���룺{phone} &lt;br/&gt;\r\n��ϵ�� ���룺{linkman} &lt;br/&gt;\r\n��ϵ��ַ ���룺{address} &lt;br/&gt;\r\n����ʱ�� ���룺{time}&lt;br/&gt;&lt;/li&gt;\r\n    &lt;/loop&gt;\r\n    &lt;!--ѭ������--&gt;\r\n&lt;/ul&gt;','0','1398735559','1','Y-m-d','');
INSERT INTO phpyun_outside VALUES('13','΢��������','tiny','10','10','id desc','5','&lt;ul&gt;\r\n    &lt;!--ѭ����ʼ--&gt;\r\n    &lt;loop&gt;\r\n        &lt;li&gt;���� ���룺{name} &lt;br/&gt;\r\n���� ���룺{url}&lt;br/&gt;\r\n�Ա� ���룺{sex} &lt;br/&gt;\r\n�������� ���룺{exp} &lt;br/&gt;\r\nӦƸְλ ���룺{job} &lt;br/&gt;\r\n��ϵ�绰 ���룺{mobile} &lt;br/&gt;\r\n����˵�� ���룺{describe} &lt;br/&gt;\r\n����ʱ�� ���룺{time}&lt;br/&gt;&lt;/li&gt;\r\n    &lt;/loop&gt;\r\n    &lt;!--ѭ������--&gt;\r\n&lt;/ul&gt;','0','1398735559','1','Y-m-d','');
INSERT INTO phpyun_outside VALUES('17','�����ֲ���','keyword','10','10','num desc','5','&lt;ul&gt;\r\n    &lt;!--ѭ����ʼ--&gt;\r\n    &lt;loop&gt;\r\n        &lt;li&gt;�ؼ������� ���룺{name} ���� ���룺{url} �������� ���룺{num}&lt;/li&gt;\r\n    &lt;/loop&gt;\r\n    &lt;!--ѭ������--&gt;\r\n&lt;/ul&gt;','0','1398735559','1','Y-m-d','keytype_3');
INSERT INTO phpyun_outside VALUES('18','�û�����','member','10','10','login_hits desc','5','<ul>\r\n    <!--ѭ����ʼ-->\r\n    <loop>\r\n        <li>\r\n�û��� ���룺{name} <br>\r\n���� ���룺{url}<br>\r\n EMAIL ���룺{email} <br>\r\n �ֻ� ���룺{moblie} <br>\r\n �û����� ���룺{usertype} <br>\r\n ��¼���� ���룺{hits} <br>\r\n ע��ʱ�� ���룺{reg_date} <br>\r\n ��¼ʱ�� ���룺{login_date}<br>\r\n</li>\r\n    </loop>\r\n    <!--ѭ������-->\r\n</ul>','0','1423192456','1','Y-m-d','usertype_1');

INSERT INTO phpyun_property VALUES('29','��ҳ�Ƽ�','indextj');
INSERT INTO phpyun_property VALUES('16','ͷ��','t');
INSERT INTO phpyun_property VALUES('28','�Ƽ�','tj');

INSERT INTO phpyun_q_class VALUES('30','����','0','upload/question_class/20131127/13917454237.PNG','0','','1374638563');
INSERT INTO phpyun_q_class VALUES('31','����','30','upload/question_class/20130808/13834858827.JPG','0','������һ�������Ӳ���������˶���ÿ�ӳ���5����Ա��Ŀ���ǽ������Է������÷֣�����ֹ�Է�������÷֡��ɽ������κη��򴫡�Ͷ���ġ������ˣ���Ҫ��\r\n��������ơ������������ʽ���ֶ�����Ҳ�������еĽ�ͷ���������������������ı��������������˼�����������������ˮƽ��ߵ������������Ĺ�������Э��\r\n��NBA����','1374638676');
INSERT INTO phpyun_q_class VALUES('32','������','0','','0','&lt;b&gt;������&lt;/b&gt;��Ӣ�&lt;b&gt;Internet&lt;/b&gt;��������ĸСд��internet������������ǻ����������ֳ�&lt;b&gt;������·&lt;/b&gt;������&lt;b&gt;������&lt;/b&gt;��&lt;b&gt;Ӣ����&lt;/b&gt;��������������֮���������ɵ��Ӵ����磬������һ��ͨ�õ�Э���������γ��߼��ϵĵ�һ�޴�������硣','1374652186');
INSERT INTO phpyun_q_class VALUES('33','����ѧ','0','upload/question_class/20130725/13820777424.JPG','0','����ѧ��Ӣ�Physics����һ����Ȼ��ѧ����Ҫ�о�����ʱ���е����ʼ����˶���������������������������ظ���������˵������ѧ̽����������Ȼ\r\n������������Ŀ����Ҫ�˽����������ѧ������ϵ�ѧ��֮һ���ڹ�ȥ��ǧ���������������Ȼ��ѧ��ֱ��ʮ�����Ϳ�ѧ����֮������ѧ�ŵ�����Ϊһ����\r\nȻ��ѧ��&lt;br /&gt;\r\n____&lt;br /&gt;\r\n������������ά���ٿƣ�&lt;a href=&quot;http://t.cn/a3CbeJ&quot; class=&quot; wrap external&quot; target=&quot;_blank&quot; rel=&quot;nofollow&quot;&gt;����ѧ&lt;/a&gt;����������ɾ����','1374652195');
INSERT INTO phpyun_q_class VALUES('34','����ѧ','33','','22','Խ����ᣬ͵������','1374652302');
INSERT INTO phpyun_q_class VALUES('35','΢��','32','upload/question_class/20130808/13853427866.JPG','0','ȫ�����ȵ��ƶ���ʱͨѶ���ߣ���ֹ 2013�� 1 ��ע���û������� 3�ڡ�','1374652316');
INSERT INTO phpyun_q_class VALUES('36','����΢��','32','upload/question_class/20130808/13816011729.JPG','1','����΢����һ�����������Ƴ����ṩ΢�Ͳ��ͷ�����վ����һ���ṩ���ɷ������ۡ�ͼƬ����Ƶ�ĵ�����ƽ̨��','1374652327');
INSERT INTO phpyun_q_class VALUES('37','�ƶ�������','32','upload/question_class/20130808/13808971357.JPG','0','�ƶ������������ǽ��ƶ�ͨ�źͻ��������߽����������Ϊһ�塣�����������ƶ�ͨ�źͻ�������Ϊ�������緢չ��졢�г�Ǳ�����ǰ�������˵�����ҵ�����ǵ������ٶȶ����κ�Ԥ���δ��Ԥ�ϵ��ģ������ƶ�����������Ԥ�����ᴴ�������ľ����񻰡�','1374652340');
INSERT INTO phpyun_q_class VALUES('38','��ë��','30','upload/question_class/20130808/13789559602.JPG','0','��ë����һ�����������ʹ�ó�����״���Ļ���ƽ�ڶ�����һȦ��ë�İ���״��ľ�������˶�����1992������ë���Ϊ���˻����ʽ������Ŀ��','1374652366');
INSERT INTO phpyun_q_class VALUES('39','��������ѧ','33','upload/question_class/20130808/13769078738.JPG','0','<b>��������ѧ</b>���о����������ѧ�������������������ʣ���ȣ��ܶȣ��¶ȣ���ѧ�ɷֵȵȣ�������������˴�֮����໥���á�Ӧ�����������뷽������������ѧ̽�ֺ��ǽṹ�������ݻ���̫��ϵ����Դ����������ѧ��ص����⡣','1374652389');
INSERT INTO phpyun_q_class VALUES('40','��������','33','upload/question_class/20130808/13807214153.JPG','0','<b>������ѧ</b>����д΢�����ʵ�һ������ѧ���ۣ��������һ����Ϊ���ִ�����ѧ���������֧�����������ѧ���ۺͿ�ѧ��ԭ������ѧ����������ѧ��������ѧ����������ѧ�Լ�������ص�ѧ�ƶ�����������ѧΪ������','1374652399');
INSERT INTO phpyun_q_class VALUES('42','��Ӱ','0','upload/question_class/20130725/13820768107.PNG','0','��Ӱ��һ�ֱ����������Ӿ��������������������ý���¼�������λý�彫Ӱ���������׽��','1374733040');
INSERT INTO phpyun_q_class VALUES('43','������Ӱ','42','upload/question_class/20130808/13834787833.JPG','0','19����ĩ20���ͳ��������ĳ��й�ҵ���ú����²��������Ѹ��������������Ӱ��Ϊ��Ӧ����ƽ����Ҫ��һ�ִ������֡�','1374733117');
INSERT INTO phpyun_q_class VALUES('44','�ƻõ�Ӱ','42','upload/question_class/20130808/13814439425.JPG','0','�ƻ�Ƭ�ǵ�Ӱ���͵�һ�֣�����ɫ����ڰ����˿�ѧ���롣 ���Ρ�÷�ﰮ�ġ�����֮�á��ǵ�Ӱʷ�������һ���ƻ�Ƭ��','1374733167');
INSERT INTO phpyun_q_class VALUES('45','iOSӦ��','0','upload/question_class/20131118/13883581262.JPG','0','iPhone, iPod Touch, iPad apps.','1374733246');
INSERT INTO phpyun_q_class VALUES('46','iPhone Ӧ��','45','upload/question_class/20130808/13824121725.JPG','0','Apps for iPhone / iPod touch, can be used on iPad as well.','1374733285');
INSERT INTO phpyun_q_class VALUES('47','iPad Ӧ��','45','','0','Apps for iPad, but not for iPhone/iPod touch.','1374733338');
INSERT INTO phpyun_q_class VALUES('48','iOS ��Ϸ����','45','','0','iOS ��Ϸ�������ǻ���Ҳ����ս��ϣ�����һͬ������','1374733405');
INSERT INTO phpyun_q_class VALUES('49','��������','32','upload/question_class/20130808/13810276938.JPG','0','��������Electronic Commerce���Ķ��壺�������������ü�������������缼����Զ��ͨ�ż����ȣ�ʵ�ֵ��ӻ������ֻ������绯������������̡�','1374733489');
INSERT INTO phpyun_q_class VALUES('50','�������ǣ�FC Barcelona��','30','upload/question_class/20130807/13857552261.JPG','0','��������������ֲ�����ư�����������1899��11��29�գ���λ�����������������еĴ���ᣬ���״�ͳ����֮һ��Ҳ���ֽ�ŷ������������̳��ɹ��ľ��ֲ�֮һ��','1375864816');
INSERT INTO phpyun_q_class VALUES('51','��ɼ���ˣ�Los Angeles Lakers��','30','upload/question_class/20130807/13816861607.JPG','0','���˶���1948�����NBA��ԭ���������ᰢ����˹����1960���Ǩ������ɼ����ɼ���˶���NBA��ʷ��Ϊ������ĳ�����֮һ���öӵĶ�ڴ��������ڿ������˶ӣ������16���ܹھ���','1375864850');
INSERT INTO phpyun_q_class VALUES('52','���籭','30','upload/question_class/20130807/13802840119.JPG','0','���籭��World Cup,FIFA World Cup���������������籭����������������������������������߹�����ˮƽ���������������˻Ტ��Ϊȫ���������󶥼����¡�','1375864891');
INSERT INTO phpyun_q_class VALUES('53','���','0','upload/question_class/20140421/13996007059.JPG','34','','1385621221');
INSERT INTO phpyun_q_class VALUES('54','����','53','','1','','1388382934');
INSERT INTO phpyun_q_class VALUES('55','�ֻ���վ','0','','1','�ֻ�','1398821512');
INSERT INTO phpyun_q_class VALUES('65','aphone6','55','','1','','1416281233');


INSERT INTO phpyun_reason VALUES('1','�ǽ���������');
INSERT INTO phpyun_reason VALUES('2','���������ۡ����������벻�������۵�����');
INSERT INTO phpyun_reason VALUES('3','���������ʻ�������ⲻ��ȷ');
INSERT INTO phpyun_reason VALUES('4','������ʧЧ�����');
INSERT INTO phpyun_reason VALUES('5','����������Ϣ');
INSERT INTO phpyun_reason VALUES('6','Υ��Υ������');
INSERT INTO phpyun_reason VALUES('7','���˹������۵���������');


INSERT INTO phpyun_resume VALUES('2','����','6','1988-08-08','','','','','','15920258490','','820591677@qq.com','14','','','��ʵ','','','0','1','24','1','','0','0','0','','','0','0','0','0','��ݸ�ж������Ļ�·�Ļ���԰','','1','','1');



INSERT INTO phpyun_resume_edu VALUES('1','2','1','ũ����ѧԺ','1013097600','1107964800','������Ϣ����','','������Ϣ����');

INSERT INTO phpyun_resume_expect VALUES('1','2','����ƹ�����10�깤������','35','158','20','239','786','30','58','45','0','1','0','0','0','32','1423191972','','','','69','0','','','0','','0','','m0,m1,m2,m3,m4,m5,m6','','1','2','1423191972','1');

INSERT INTO phpyun_resume_file VALUES('5','5','./upload/show/20150206/14247537483.JPG','','1423191238','1','0');
INSERT INTO phpyun_resume_file VALUES('6','6','./upload/show/20150206/14281912483.JPG','','1423191238','1','0');
INSERT INTO phpyun_resume_file VALUES('82','ss1','./uploads_resume_file/ss1.doc','\r\n\r\n\r\n\r\n\r\n\r\n\r\nPrint\r\n\r\n\r\n����\r\n\r\n\r\ntable{border-collapse:collapse;line-height:20px; background:#ffffff; margin:0 auto}\r\ntable td{ white-space:normal;word-break:break-all}\r\ntable tr{ background:#ffffff}\r\n\r\n\r\n  \r\n    \r\n      ���� ���˼��� (������ţ�NO.1)\r\n    \r\n    \r\n      ���˻�����Ϣ\r\n    \r\n    \r\n      ����\r\n      ����\r\n      �Ա�\r\n      ��\r\n      ��������\r\n      1988��08��08��\r\n    \r\n    \r\n       ���֤��\r\n    \r\n      \r\n    ����\r\n    \r\n     \r\n  \r\n    ���\r\n    cm\r\n    ����\r\n    kg\r\n    ����\r\n    \r\n   \r\n   \r\n  \r\n    ����״��\r\n    \r\n  \r\n    \r\n    ѧ��\r\n    ��ר\r\n    ��������\r\n    10������\r\n   \r\n  \r\n  \r\n    ��ϸ��ַ\r\n    \r\n  \r\n    \r\n    �����ڵ�\r\n    ��ݸ�ж������Ļ�·�Ļ���԰\r\n  \r\n  \r\n    ������ҳ\r\n    \r\n  \r\n    \r\n    ��������\r\n    ��ʵ\r\n  \r\n  \r\n     ��ְ����\r\n  \r\n  \r\n    ������ҵ\r\n    �����/������\r\n    ��������\r\n    �㶫 ��ݸ �ϳ���\r\n  \r\n  \r\n    ְλ����\r\n    ȫְ\r\n    ����Ҫ��\r\n     ���� \r\n  \r\n  \r\n    ����ְλ\r\n    ��׼������ʦ\r\n    ����ʱ��\r\n    ��ʱ����\r\n  \r\n    \r\n  \r\n    \r\n     ��������\r\n  \r\n    \r\n    ��ҵʱ��\r\n    2002��02�� - 2005��02��\r\n    רҵ\r\n    ������Ϣ����\r\n  \r\n  \r\n    ѧУ����\r\n    ũ����ѧԺ\r\n    ����ְλ\r\n    \r\n  \r\n  \r\n    רҵ����\r\n    ������Ϣ����\r\n  \r\n            \r\n      \r\n     ��������\r\n  \r\n    \r\n    ��λ����\r\n    һͨ����\r\n    ����ְλ\r\n    �������\r\n  \r\n  \r\n    ��������\r\n    ���\r\n    ����ʱ��\r\n    2005��02�� -2010��02��\r\n  \r\n  \r\n    ��������\r\n    ���\r\n  \r\n      \r\n  \r\n  \r\n  \r\n      \r\n    ��ϵ��ʽ\r\n  \r\n  \r\n    �ֻ�\r\n    15920258490\r\n  \r\n    \r\n    ����\r\n    \r\n  \r\n    \r\n    �����ʼ�\r\n    820591677@qq.com\r\n  \r\n    \r\n  \r\n\r\n\r\n\r','1425043985','1','0');
INSERT INTO phpyun_resume_file VALUES('83','����ƹ�����10�깤������','./uploads_resume_file/����ƹ�����10�깤������.doc','\r\n\r\n\r\n\r\n\r\n\r\n\r\nPrint\r\n\r\n\r\n����\r\n\r\n\r\ntable{border-collapse:collapse;line-height:20px; background:#ffffff; margin:0 auto}\r\ntable td{ white-space:normal;word-break:break-all}\r\ntable tr{ background:#ffffff}\r\n\r\n\r\n  \r\n    \r\n      ���� ���˼��� (������ţ�NO.1)\r\n    \r\n    \r\n      ���˻�����Ϣ\r\n    \r\n    \r\n      ����\r\n      ����\r\n      �Ա�\r\n      ��\r\n      ��������\r\n      1988��08��08��\r\n    \r\n    \r\n       ���֤��\r\n    \r\n      \r\n    ����\r\n    \r\n     \r\n  \r\n    ���\r\n    cm\r\n    ����\r\n    kg\r\n    ����\r\n    \r\n   \r\n   \r\n  \r\n    ����״��\r\n    \r\n  \r\n    \r\n    ѧ��\r\n    ��ר\r\n    ��������\r\n    10������\r\n   \r\n  \r\n  \r\n    ��ϸ��ַ\r\n    \r\n  \r\n    \r\n    �����ڵ�\r\n    ��ݸ�ж������Ļ�·�Ļ���԰\r\n  \r\n  \r\n    ������ҳ\r\n    \r\n  \r\n    \r\n    ��������\r\n    ��ʵ\r\n  \r\n  \r\n     ��ְ����\r\n  \r\n  \r\n    ������ҵ\r\n    �����/������\r\n    ��������\r\n    �㶫 ��ݸ �ϳ���\r\n  \r\n  \r\n    ְλ����\r\n    ȫְ\r\n    ����Ҫ��\r\n     ���� \r\n  \r\n  \r\n    ����ְλ\r\n    ��׼������ʦ\r\n    ����ʱ��\r\n    ��ʱ����\r\n  \r\n    \r\n  \r\n    \r\n     ��������\r\n  \r\n    \r\n    ��ҵʱ��\r\n    2002��02�� - 2005��02��\r\n    רҵ\r\n    ������Ϣ����\r\n  \r\n  \r\n    ѧУ����\r\n    ũ����ѧԺ\r\n    ����ְλ\r\n    \r\n  \r\n  \r\n    רҵ����\r\n    ������Ϣ����\r\n  \r\n            \r\n      \r\n     ��������\r\n  \r\n    \r\n    ��λ����\r\n    һͨ����\r\n    ����ְλ\r\n    �������\r\n  \r\n  \r\n    ��������\r\n    ���\r\n    ����ʱ��\r\n    2005��02�� -2010��02��\r\n  \r\n  \r\n    ��������\r\n    ���\r\n  \r\n      \r\n  \r\n  \r\n  \r\n      \r\n    ��ϵ��ʽ\r\n  \r\n  \r\n    �ֻ�\r\n    15920258490\r\n  \r\n    \r\n    ����\r\n    \r\n  \r\n    \r\n    �����ʼ�\r\n    820591677@qq.com\r\n  \r\n    \r\n  \r\n\r\n\r\n\r','1425180743','1','0');





INSERT INTO phpyun_resume_tiny VALUES('1','����','e80b5017098950fc58aad83c8c14978e','7','24','1','���','15920258490','820591677','���ҽ���','1423191549','1','127.0.0.1');


INSERT INTO phpyun_resume_work VALUES('1','2','1','һͨ����','1108483200','1266249600','���','�������','���');


INSERT INTO phpyun_reward_class VALUES('1','�����ֵ');
INSERT INTO phpyun_reward_class VALUES('4','���￨��');
INSERT INTO phpyun_reward_class VALUES('5','�칫��Ʒ');
INSERT INTO phpyun_reward_class VALUES('7','�������');

INSERT INTO phpyun_seo VALUES('1','��ҳ','index','{webname}_������Ƹ��Ϣ_�ҹ���','{webname}����Ƹ����Ƹ�����ҹ���','{webname}��{weburl}����Ʒ�Ƶ���Ƹ��վ���ҹ���������ѡ�񣬹�ģ����Ϣ��ʵ��רҵ��Ƹ��վ����ѯ�˲���������Ƹ��Ϣ���ҹ�������{webname}!','1418728718','0,13','','');
INSERT INTO phpyun_seo VALUES('106','������','wap','������','�ҹ���,�˲�,����,��ְ,��Ƹ,����,����,��н,����,ӦƸ,��ְ','hr135�˲���Ϊ�����ṩ��ȫ������׼ȷ����ҵְλ��Ƹ��Ϣ��Ϊ��ҵ�ṩȫ��λ��������Դ���񣬰���������ְ�߿��ٵ��ҵ�������','1418607884','0','','');
INSERT INTO phpyun_seo VALUES('2','��ҵ��Ƹ','com','{webname}������Ƹ��Ϣ|��Ƹ - {webname}','{webname},��Ƹ,��Ƹ������Ϣ','{webname}- {webname}��ƸƵ����Ϊ��ְ���ṩ������ȫ����Ƹ��Ϣ����Ƹ���ҹ���������{webname}','1418729213','0','','');
INSERT INTO phpyun_seo VALUES('5','�˲�չʾ','user','����ְ|�ҹ���|��ְ��Ϣ����-{webname}','��ְ,�ҹ���,��ְ��Ϣ��,�˲���ְ','{webname}��ְƵ������ѵ���ְ��Ϣ�˲���ְ��Ϣ����ƽ̨��ÿ������ʮ����ְ�߷������ۡ��ͷ������������ز���������������������ҵ��ְ��Ϣ���ҹ�����ѡ{webname}��ְƵ����','1418731921','0','','');
INSERT INTO phpyun_seo VALUES('6','������ҳ','news','ְ����Ѷ_{webname}','�˲ţ���Ƹ����������������ְ��ӦƸ����н����ְ����ͷ��н�꣬н�ʣ���ѵ������������','{webname}ְ��ָ��Ƶ��Ϊ���ṩ�����ʵ�ְ����Ѷ����ʵ�õ�ְ�����ɡ���ǰ�ص�ְ����̬����ǿ���ְ������ȫ��Ϊ������ʿ����ְ���ٱ���','1418729537','0','','');
INSERT INTO phpyun_seo VALUES('7','�����б�','newslist','{news_class} - ְ����Ѷ- 	{webname}','{news_class} �����ۣ��˲ţ���Ƹ����������������ְ��ӦƸ����н����ְ����ͷ��н�꣬н�ʣ���ѵ������������','{news_class} - ְ����Ѷ- 	{webname}','1418729697','0','','');
INSERT INTO phpyun_seo VALUES('8','һ�仰��Ƹ','once','һ�仰��Ƹ-{webname}','�ҹ���,�˲�,����,��ְ,��Ƹ,����,����,��н,����,ӦƸ,��ְ','{webname}Ϊ�����ṩ��ȫ������׼ȷ����ҵְλ��Ƹ��Ϣ��Ϊ��ҵ�ṩȫ��λ��������Դ���񣬰���������ְ�߿��ٵ��ҵ�������','1418734479','0','','');
INSERT INTO phpyun_seo VALUES('9','�߼�����','search','�߼�����','�ҹ���,�˲�,����,��ְ,��Ƹ,����,����,��н,����,ӦƸ,��ְ','hr135�˲���Ϊ�����ṩ��ȫ������׼ȷ����ҵְλ��Ƹ��Ϣ��Ϊ��ҵ�ṩȫ��λ��������Դ���񣬰���������ְ�߿��ٵ��ҵ�������','1332841128','','','');
INSERT INTO phpyun_seo VALUES('11','��������','forgetpw','{webname}-��������','��������,�ҹ���,�˲�,����,��ְ,��Ƹ,����,����,��н,����,ӦƸ,��ְ','{webname}Ϊ�����ṩ��ȫ������׼ȷ����ҵְλ��Ƹ��Ϣ��Ϊ��ҵ�ṩȫ��λ��������Դ���񣬰���������ְ�߿��ٵ��ҵ�������','1418730967','0','','');
INSERT INTO phpyun_seo VALUES('12','��������','friend','��������_�˲���','�ҹ���,�˲�,����,��ְ,��Ƹ,����,����,��н,����,ӦƸ,��ְ','{webdesc}','1418735396','0','','');
INSERT INTO phpyun_seo VALUES('13','��¼','login','{webname}-��¼','��¼,�ҹ���,�˲�,����,��ְ,��Ƹ,����,����,��н,����,ӦƸ,��ְ','{webname}Ϊ�����ṩ��ȫ������׼ȷ����ҵְλ��Ƹ��Ϣ��Ϊ��ҵ�ṩȫ��λ��������Դ���񣬰���������ְ�߿��ٵ��ҵ�������','1418730865','0','','');
INSERT INTO phpyun_seo VALUES('14','QQ��¼','qqlogin','QQ��¼','�ҹ���,�˲�,����,��ְ,��Ƹ,����,����,��н,����,ӦƸ,��ְ','���ò���','1332841075','','','');
INSERT INTO phpyun_seo VALUES('15','ע��','register','{webname}-ע��','ע��,�ҹ���,�˲�,����,��ְ,��Ƹ,����,����,��н,����,ӦƸ,��ְ','{webname}Ϊ�����ṩ��ȫ������׼ȷ����ҵְλ��Ƹ��Ϣ��Ϊ��ҵ�ṩȫ��λ��������Դ���񣬰���������ְ�߿��ٵ��ҵ�������','1418730900','0','','');
INSERT INTO phpyun_seo VALUES('16','����','resume','{resume_username}-��{resume_username}�ļ�����','�ҹ���,�˲�,����,��ְ,��Ƹ,����,����,��н,����,ӦƸ,��ְ','{webname}Ϊ�����ṩ��ȫ������׼ȷ����ҵְλ��Ƹ��Ϣ��Ϊ��ҵ�ṩȫ��λ��������Դ���񣬰���������ְ�߿��ٵ��ҵ�������','1418732220','0','','');
INSERT INTO phpyun_seo VALUES('17','��Ƹ��','zph','��Ƹ��_�˲��г�_ {webname}','��Ƹ��,�˲��г�, ���½����˲���Ƹ��,{webname}','{webname}�˲��г�����Ϥ������Ƹ����Ϣ����{webname}�˲��г���{webname}�˲��г�������ѡ��','1418729909','0','','');
INSERT INTO phpyun_seo VALUES('18','΢��Ƹ','wzp','΢����Ƹ,΢��Ƹ,������Ƹ','΢����Ƹ,΢��Ƹ,������Ƹ������΢����Դ','΢����Ƹ,΢��Ƹ,������Ƹ������΢����Դ΢����Ƹ,΢��Ƹ,������Ƹ������΢����Դ΢����Ƹ,΢��Ƹ,������Ƹ������΢����Դ΢����Ƹ,΢��Ƹ,������Ƹ������΢����Դ','1343117651','','','');
INSERT INTO phpyun_seo VALUES('19','��ҵ��ҳ','firm','����ҵ_��ҵ��Ϣ_��ҵ��Ƹ-{webname}','��ҵ��Ƹ,��ҵ��Ƹ��Ϣ,{webname}','{webname}Ϊ���ṩ��ȫ�ĵ���ҵ��Ƹ��Ϣ�㼯ȫ���ϰ������ҵ��Ƹ��Ϣ��Ϊ�и߶��˲��ṩ���ʵĹ������ᣬѡ��ҵ���ҹ�������{webname}','1418735619','0','','');
INSERT INTO phpyun_seo VALUES('20','ְλҳ��','comapply','��Ƹ{job_name}_{company_name}��Ƹ{job_name}-{webname}','��Ƹ{job_name}��Ƹ��Ϣ,{company_name}��Ƹ{job_name},{webname}','{company_name}��Ƹ{job_name}{job_name}��Ƹ��Ϣ������ݰ��������ʴ���ְλ���������ص��λְ�𣬹������ݵ�{job_name}��Ϣ','1418730694','0','','');
INSERT INTO phpyun_seo VALUES('22','��������ҳ','news_article','{news_class} - {news_title} - {webname}','{news_keyword}','{news_desc}','1418202743','0','','');
INSERT INTO phpyun_seo VALUES('23','����ҳ','announcement','{news_title}-{webname} ','{webname} - {webkeyword}','{webname} - {webdesc}','1418734438','0','','');
INSERT INTO phpyun_seo VALUES('24','�������','resume_share','�������--{resume_username}','�������','�������','1358582606','0','','');
INSERT INTO phpyun_seo VALUES('25','��ͼ��Ƹ','map','��ͼ��Ƹ - {webname}','�ҹ���,�˲�,����,��ְ,��Ƹ,����,����,��н,����,ӦƸ,��ְ','��ͼ��Ƹ-{webdesc}','1418735445','0','','');
INSERT INTO phpyun_seo VALUES('32','΢����','tiny','΢����-{webname}','΢����-{webname}','΢����-{webdesc}','1418804000','0','','');
INSERT INTO phpyun_seo VALUES('33','�ʴ���ҳ','ask_index','�ʴ���ҳ-{webname}','{webkeyword}','{webdesc}','1374717488','','','');
INSERT INTO phpyun_seo VALUES('34','�ʴ�����ҳ','ask_search','�ʴ�����ҳ-{webname}','{webkeyword}','{webdesc}','1374717569','','','');
INSERT INTO phpyun_seo VALUES('35','�ʴ���ҳ','ask_topic','�ʴ���ҳ-{webname}','{webkeyword}','{webdesc}','1374717643','','','');
INSERT INTO phpyun_seo VALUES('36','�ʴ�һ���ȵ�','ask_hot_week','һ���ȵ�-{webname}','{webkeyword}','{webdesc}','1374717730','','','');
INSERT INTO phpyun_seo VALUES('37','�ҵ��ʴ�','ask_my_question','�ҵ��ʴ�-{webname}','{webkeyword}','{webdesc}','1374717808','','','');
INSERT INTO phpyun_seo VALUES('38','�ʴ�̬','seo_dynamic','��̬-�ʴ�-{webname}','{webkeyword}','{webdesc}','1374717951','','','');
INSERT INTO phpyun_seo VALUES('39','�ҵĻش�','ask_my_answer','�ҵĻش�-{webname}','{webkeyword}','{webdesc}','1374718013','','','');
INSERT INTO phpyun_seo VALUES('40','��Ҫ����','ask_add_question','��Ҫ����-{webname}','{webkeyword}','{webdesc}','1374718098','','','');
INSERT INTO phpyun_seo VALUES('42','���΢����','tinyadd','����΢����-{webname}','{webkeyword}','{webdesc}','1374746423','','','');
INSERT INTO phpyun_seo VALUES('43','��������ҳ','fri_index','{webname}-����Ȧ��ҳ-����-����','{webname}-����Ȧ��ҳ-����-����','{webname}-����Ȧ��ҳ-����-����','1418736468','0','','');
INSERT INTO phpyun_seo VALUES('44','����Ȧ������ҳ','fri_profile','{webname}-����Ȧ-������ҳ-����-����','{webname}-����Ȧ-������ҳ-����-����','{webname}-����Ȧ-������ҳ-����-����','1418736499','0','','');
INSERT INTO phpyun_seo VALUES('45','�ҵĺ���','fri_myfriend','{webname}-�ҵĺ���-����-����','{webname}-�ҵĺ���-����-����','{webname}-�ҵĺ���-����-����','1418736417','0','','');
INSERT INTO phpyun_seo VALUES('46','��Ӻ���','fri_addfriend','{webname}-��Ӻ���-����-����','{webname}-��Ӻ���-����-����','{webname}-��Ӻ���-����-����','1418736283','0','','');
INSERT INTO phpyun_seo VALUES('47','��������','fri_applyfriend','{webname}-��������-����-����','{webname}-��������-����-����','{webname}-��������-����-����','1418736315','0','','');
INSERT INTO phpyun_seo VALUES('48','�ҵ����԰�','fri_messagelist','{webname}-���԰�-����-����-����','{webname}-���԰�-����-����-����','{webname}-���԰�-����-����-����','1418736379','0','','');
INSERT INTO phpyun_seo VALUES('49','�޸�����','fri_info','{webname}-�޸�����-����-����','{webname}-�޸�����-����-����','{webname}-�޸�����-����-����','1418736345','0','','');
INSERT INTO phpyun_seo VALUES('50','�޸�ͷ��','fri_photo','�޸�ͷ��-����Ȧ-����-����-{webname}','�޸�ͷ��-����Ȧ-����-����','�޸�ͷ��-����Ȧ-����-����','1418735734','0','','');
INSERT INTO phpyun_seo VALUES('51','�ҹ�ע������','atten_question','�ҹ�ע������-{webname}','{webkeyword}','{webdesc}','1375839339','0','','');
INSERT INTO phpyun_seo VALUES('53','ְλ�Ƽ�','recommend','{webname}ְλ�Ƽ�','{webname}ְλ�Ƽ�','{webname}ְλ�Ƽ�','1376310278','0','','');
INSERT INTO phpyun_seo VALUES('54','���а�','top','���а� - {webname}','{webkeyword}','{webdesc}','1377312541','','','');
INSERT INTO phpyun_seo VALUES('55','���Է���wap','moblie','wap - {webname}','{webkeyword}','{webdesc}','1377312613','','','');
INSERT INTO phpyun_seo VALUES('56','΢����-����ҳ','tiny_cont','{tiny_username} -{tiny_job},΢����','{tiny_job},΢����','{tiny_desc}΢����','1418803949','0','','');
INSERT INTO phpyun_seo VALUES('61','��˾��ҳ','company_index','{company_name}-��˾��ҳ-{webname}','{company_name}-��˾��ҳ-{webname}','Ϊ�����ṩ��ȫ������׼ȷ����ҵְλ��Ƹ��Ϣ��Ϊ��ҵ�ṩȫ��λ��������Դ���񣬰���������ְ�߿��ٵ��ҵ�����{company_name_desc}','1400117095','0','','');
INSERT INTO phpyun_seo VALUES('62','��˾��Ƹְλ','company_post','{company_name}-��Ƹְλ-{webname}','{company_name}-��Ƹְλ-{webname}','Ϊ�����ṩ��ȫ������׼ȷ����ҵְλ��Ƹ��Ϣ��Ϊ��ҵ�ṩȫ��λ��������Դ���񣬰���������ְ�߿��ٵ��ҵ�����','1383274106','','','');
INSERT INTO phpyun_seo VALUES('63','��ҵ����','company_show','{company_name}-��ҵ����-{webname}','{company_name}-��ҵ����-{webname}','Ϊ�����ṩ��ȫ������׼ȷ����ҵְλ��Ƹ��Ϣ��Ϊ��ҵ�ṩȫ��λ��������Դ���񣬰���������ְ�߿��ٵ��ҵ�����','1383274202','','','');
INSERT INTO phpyun_seo VALUES('64','��ҵ��Ʒչʾ','company_product','{company_name}-��Ʒչʾ-{webname}','{company_name}-��Ʒչʾ-{webname}','Ϊ�����ṩ��ȫ������׼ȷ����ҵְλ��Ƹ��Ϣ��Ϊ��ҵ�ṩȫ��λ��������Դ���񣬰���������ְ�߿��ٵ��ҵ�����','1383275001','','','');
INSERT INTO phpyun_seo VALUES('65','��˾���','company_intro','{company_name}-��˾���-{webname}','{company_name}-��˾���-{webname}','Ϊ�����ṩ��ȫ������׼ȷ����ҵְλ��Ƹ��Ϣ��Ϊ��ҵ�ṩȫ��λ��������Դ���񣬰���������ְ�߿��ٵ��ҵ�����','1383275058','','','');
INSERT INTO phpyun_seo VALUES('66','��˾����','company_news','{company_name}-��˾����-{webname}','{company_name}-��˾����-{webname}','Ϊ�����ṩ��ȫ������׼ȷ����ҵְλ��Ƹ��Ϣ��Ϊ��ҵ�ṩȫ��λ��������Դ���񣬰���������ְ�߿��ٵ��ҵ�����','1400118386','','','');
INSERT INTO phpyun_seo VALUES('67','����λ��','company_position','{company_name}-����λ��-{webname}','{company_name}-����λ��-{webname}','{webname}Ϊ�����ṩ��ȫ������׼ȷ����ҵְλ��Ƹ��Ϣ��Ϊ��ҵ�ṩȫ��λ��������Դ���񣬰���������ְ�߿��ٵ��ҵ�����','1417248916','','','');
INSERT INTO phpyun_seo VALUES('68','��ϵ����','company_connection','{company_name}-��ϵ����-{webname}','{company_name}-��ϵ����-{webname}','Ϊ�����ṩ��ȫ������׼ȷ����ҵְλ��Ƹ��Ϣ��Ϊ��ҵ�ṩȫ��λ��������Դ���񣬰���������ְ�߿��ٵ��ҵ�����','1383275186','','','');
INSERT INTO phpyun_seo VALUES('69','��ҵ��Ʒ����ҳ','company_productshow','{company_name}-{company_product}-{webname}','{company_name}-{company_product}-{webname}','Ϊ�����ṩ��ȫ������׼ȷ����ҵְλ��Ƹ��Ϣ��Ϊ��ҵ�ṩȫ��λ��������Դ���񣬰���������ְ�߿��ٵ��ҵ�����','1383276043','','','');
INSERT INTO phpyun_seo VALUES('70','��ҵ��������ҳ','company_newsshow','{company_name}-{company_news}-{webname}','{company_name}-{company_news}-{webname}','Ϊ�����ṩ��ȫ������׼ȷ����ҵְλ��Ƹ��Ϣ��Ϊ��ҵ�ṩȫ��λ��������Դ���񣬰���������ְ�߿��ٵ��ҵ�����','1399293165','','','');
INSERT INTO phpyun_seo VALUES('72','�ҹ����б�ҳ','com_search','{webname}������Ƹ��Ϣ|��Ƹ - {webname}- {seacrh_class}','{webname},��Ƹ,��Ƹ������Ϣ-{seacrh_class} ','{webname}- {webname}��ƸƵ����Ϊ��ְ���ṩ������ȫ����Ƹ��Ϣ����Ƹ���ҹ���������{webname}','1418729172','0','','');
INSERT INTO phpyun_seo VALUES('73','���˲��б�ҳ','user_search','�˲��б�-{webname}-{seacrh_class}','{webkeyword}- {seacrh_class}','{webname}���˼�����Ϊ���ṩ��������ĸ��˼����������������ۡ��ͷ�����Ա��������ְλ�˲ŵĸ��˼���.�Ѽ������˲ž���{webname}���˼����⡣','1418732104','0','','');
INSERT INTO phpyun_seo VALUES('78','��Ƹ������ҳ','zph_show','{zph_title}-��Ƹ��-{webname} ','���˲�,��ǧ������λ,��ְ�߿ɵ�¼{webname}�鿴ְλ','{zph_desc}���˲���ǧ������λ��ְ�߿ɵ�¼{webname}�鿴ְλ','1418730320','0','','');
INSERT INTO phpyun_seo VALUES('80','��������','activate','�������� - {webname}','��������','��������','1414053810','0','','');
INSERT INTO phpyun_seo VALUES('82','��ҵ����','commsg','��ҵ����-{webname}','{webkeyword}','{webdesc}','1413421373','0','','');
INSERT INTO phpyun_seo VALUES('83','���ֶһ�','redeem','���ֶһ�-{webname}','{webkeyword}','{webdesc}','1413892396','0','','');
INSERT INTO phpyun_seo VALUES('85','�ʼ�����','subscribe','{webname}-�ʼ�����','{webname}-�ʼ�����','{webname}-�ʼ�����','1418269274','0','','');
INSERT INTO phpyun_seo VALUES('86','����ע��','invitereg','{webname}����ע��','{webkeyword}����ע��','{webdesc}����ע��','1418734191','0','','');
INSERT INTO phpyun_seo VALUES('87','�����ʼ�','sendcert','{webname}�����ʼ�','{webkeyword}�����ʼ�','{webdesc}�����ʼ�','1418734168','0','/index.php?m=sendcert','/sendcert.html');
INSERT INTO phpyun_seo VALUES('88','������','hrindex','{webname}������','{webkeyword}������','{webdesc}������','1418734140','0','','');
INSERT INTO phpyun_seo VALUES('89','�������б�','hrlist','{hr_class}-{webname}','{hr_class}-{webname}','{hr_class}-{hr_desc}','1418734251','0','','');
INSERT INTO phpyun_seo VALUES('107','΢��','weixin','΢��','�ҹ���,�˲�,����,��ְ,��Ƹ,����,����,��н,����,ӦƸ,��ְ','hr135�˲���Ϊ�����ṩ��ȫ������׼ȷ����ҵְλ��Ƹ��Ϣ��Ϊ��ҵ�ṩȫ��λ��������Դ���񣬰���������ְ�߿��ٵ��ҵ�������','1418608367','0','','');
INSERT INTO phpyun_seo VALUES('110','��λ�û���','integral','{webname}-��λ�û���','{webkeyword}-��λ�û���','{webdesc}-��λ�û���','1418709520','0','','');


INSERT INTO phpyun_sysmsg VALUES('1','�û� wangsirperson ��ע���㣡','1','','1423192149','1');
INSERT INTO phpyun_sysmsg VALUES('2','�û� wangsirperson ȡ���˶���Ĺ�ע��','1','','1423192151','1');
INSERT INTO phpyun_sysmsg VALUES('3','�û� wangsirperson ��ע���㣡','1','','1423192153','1');

INSERT INTO phpyun_talent_pool VALUES('1','2','1','1','1423201570','�ѱ�ע');

INSERT INTO phpyun_templates VALUES('1','emailreg','{webname}ע���Ա!','{webname}{weburl}');
INSERT INTO phpyun_templates VALUES('2','emailfkcg','��������-{webname}','���ѳɹ�Ϊ������{order_id}���֧����{price}Ԫ���������ʣ��벦��{webtel}��ϵ��վ��');
INSERT INTO phpyun_templates VALUES('3','emailyqms','{webname}-��������','{webname}-{company} �����������ԣ��������¼{weburl}&lt;br /&gt;');
INSERT INTO phpyun_templates VALUES('4','msgyqms','','��ã�{company}���������ԣ�ְλ��{jobname}��');
INSERT INTO phpyun_templates VALUES('5','emailzzshtg','{webname}{weburl}','&lt;p&gt;\r\n	��ӭ��ʹ��{webname}\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	��ַ��{weburl}\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	�绰��{webtel}\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	��������ְλ {jobname} ͨ������ˡ�\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	ʱ�䣺{date}\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;');
INSERT INTO phpyun_templates VALUES('6','msgreg','','{webname}ע��֪ͨ��{weburl}�û�����{username}���룺{password}');
INSERT INTO phpyun_templates VALUES('7','msgzzshtg','','{webname}{webtel}{date}');
INSERT INTO phpyun_templates VALUES('8','emailgetpass','{webname}�һ�����!','&lt;p&gt;\r\n	�����ʺ�{username} ��֤�룺{password}\r\n&lt;/p&gt;');
INSERT INTO phpyun_templates VALUES('9','msggetpass','','{webname}{weburl}{webtel}{password}');
INSERT INTO phpyun_templates VALUES('10','emailsqzw','{webname}ְλ���룺{jobname}','&lt;p&gt;\r\n	���ã���������ְλ��{jobname} ����Ͷ���˼������뾡���¼ {weburl} �鿴 ����������{webname} ��ְλ����֪ͨ��\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	ʱ�䣺{date}\r\n&lt;/p&gt;');
INSERT INTO phpyun_templates VALUES('11','msgsqzw','','���ã����û���{webname}�ϳɹ���������������ְλ��{jobname}����ϸ���¼��{weburl}');
INSERT INTO phpyun_templates VALUES('19','email_userstatus','{webname}-��Ա���','&lt;p&gt;\r\n	{webname}-{status_info}\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	{date}\r\n&lt;/p&gt;');
INSERT INTO phpyun_templates VALUES('12','msgfkcg','','���ѳɹ�Ϊ������{order_id}���֧����{price}Ԫ���������ʣ��벦��{webtel}��ϵ��վ��');
INSERT INTO phpyun_templates VALUES('13','emailcert','{webname}������֤','&lt;p&gt;\r\n	{webname}{weburl}\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	��ϵ���ǣ�{webtel}\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	�����ַ��{url}\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	ʱ�䣺{date}\r\n&lt;/p&gt;');
INSERT INTO phpyun_templates VALUES('14','msgcert','','{webname}{code}');
INSERT INTO phpyun_templates VALUES('15','emaillock','��Ա�˺�����˵��','{lock_info}');
INSERT INTO phpyun_templates VALUES('16','emailcomcert','��ҵӪҵִ������ʼ��ظ�--{webname}','&lt;p&gt;\r\n	{comname}��\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;{certinfo}\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	{webname} {weburl} {webtel}\r\n&lt;/p&gt;');
INSERT INTO phpyun_templates VALUES('17','emailusercert','���������֤����ʼ��ظ�--{webname}','&lt;p&gt;\r\n	{username} ��\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;{certinfo}\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	{webname} {weburl} {webtel}\r\n&lt;/p&gt;');
INSERT INTO phpyun_templates VALUES('18','emailjobed','{com_name}','&lt;p&gt;\r\n	���ã���˾��{com_name}��������ְλ��{job_name}���ѹ��ڡ�\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	---{webname}{weburl}{webtel}\r\n&lt;/p&gt;');
INSERT INTO phpyun_templates VALUES('20','emailuserstatus','{webname}-��Ա���','&lt;p&gt;\r\n	{webname}\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	{status_info}\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	{date}\r\n&lt;/p&gt;');
INSERT INTO phpyun_templates VALUES('21','emailzzshwtg','{webname}--ְλ���δͨ��','&lt;p&gt;\r\n	����{webname}�Ϸ����� {jobname} û��ͨ����ˣ���ʲô���⣬������ͨ��{webtel}��ϵ���ǡ�\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	���ԭ��{status_info}\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	ʱ�䣺{date}\r\n&lt;/p&gt;');
INSERT INTO phpyun_templates VALUES('22','emailremind','�ʼ�����-{webname}','���Ѿ��ܳ�ʱ��û���� {webname} ��&lt;br /&gt;');
INSERT INTO phpyun_templates VALUES('23','msgremind','','���ã����Ѿ��ܳ�ʱ��û����{webname}');
INSERT INTO phpyun_templates VALUES('24','msgcomdy','','{webname} �������µ��˲� {resumename}����ַ��{weburl}����վ�绰��{webtel}');
INSERT INTO phpyun_templates VALUES('25','msguserdy','','{webname} �������µ�ְλ {jobname}����ַ��{weburl}����վ�绰��{webtel}');
INSERT INTO phpyun_templates VALUES('26','emailuserdy','{webname}-�ʼ�����','{webname},���˷�����{jobname}���������¼{weburl} ����վ�绰��{webtel}<br />');
INSERT INTO phpyun_templates VALUES('27','emailcomdy','{webname}-�ʼ�����','{webname}���˷����� &lt;span&gt;{resumename}&lt;/span&gt;���������¼{weburl} ����վ�绰��{webtel}');
INSERT INTO phpyun_templates VALUES('28','emailnotice','ְλ����','&lt;span&gt;{webname}&lt;/span&gt; ְλ��&lt;span&gt;{jobname}&lt;/span&gt;&lt;br /&gt;');
INSERT INTO phpyun_templates VALUES('29','msgnotice','','{webname} ְλ���ƣ�{jobname}');
INSERT INTO phpyun_templates VALUES('30','msgregcode','','{webname}��ӭ��������ע����֤��Ϊ��{code}');

INSERT INTO phpyun_toolbox_class VALUES('7','��Ƹ/����','��������������Ƹ���˲�����ר�ñ���ĵ�����ƸרԱ�ɸ���������������hr���ϣ�ʵ������Ƹ��һ����','upload/hrclass/20141114/14160140867.PNG');
INSERT INTO phpyun_toolbox_class VALUES('8','н���ƶ�','hr������ʱ�ο��������ڵ����ϱ����ƶ��������Ե�н���ƶȣ����ڶ���Ƹ��ҵ��һ����ʤ��','upload/hrclass/20141211/14206742821.PNG');
INSERT INTO phpyun_toolbox_class VALUES('10',' ���µ��� ',' �Ա���������ʽ��¼��ҵ��Ա������Ҫ������������ò�������Ļ������ݣ���Ϊ��ҵ�Ļ�������ƾ֤��','upload/hrclass/20141114/14184851391.PNG');
INSERT INTO phpyun_toolbox_class VALUES('11','�Ӱ�/����','���������ṩ������ʽ�Ŀ��ڱ��hr�ο�����ά����ҵ�����Ĺ�������������ҵ���ɡ� ','upload/hrclass/20141114/14223214394.PNG');
INSERT INTO phpyun_toolbox_class VALUES('12','Ա������','�����������ݡ�Ա�����ɵ�һϵ��ֱ���漰Ա�������͹������ʵ����ϡ�����hr����רҵ����ʵ�˲Ź�����','upload/hrclass/20141114/14227189698.PNG');
INSERT INTO phpyun_toolbox_class VALUES('13','��ͬ/����','hr���غ��ʵĺ�ͬ������Ϊ���˲�֮�����ԼЭ��ǩ�����ɹ�ʵ����ҵ���˲�֮���˫��ѡ��  ','upload/hrclass/20141114/14180306464.PNG');
INSERT INTO phpyun_toolbox_class VALUES('14',' ����','��Թ�˾�������⣬�ṩ��صĳ���涨�����������¼��ȣ�׼ȷ����Ա��������̬��������˾�����嵥��','upload/hrclass/20141114/14177901288.PNG');
INSERT INTO phpyun_toolbox_class VALUES('15',' Ա����ѵ','�ṩ����Ա����ѵ�ο�������������ѵ���½�ְԱ��ѵ�ȣ�Ϊ��ҵ�ṩ��������ѵ��������Ա������������ ','upload/hrclass/20141114/14176882761.PNG');
INSERT INTO phpyun_toolbox_class VALUES('16','Ч������','���ּ�Ч���˰취��׼��Ϊ��ҵ�ṩȫ��Ĳο�����������Ա���Ĺ�����Ϊ�͹���ҵ����ʵ����ҵս��Ŀ�ꡣ','upload/hrclass/20141114/14167299477.PNG');
INSERT INTO phpyun_toolbox_class VALUES('17','�ƽ�/����','���������ṩ���ִ�ְ���뷶������ҵ���Խ��вο����ƶ��������ְ���̡�','upload/hrclass/20141114/14171978886.PNG');
INSERT INTO phpyun_toolbox_class VALUES('18','����','��ҵhr��������������Ĳο���׼�������Զ���ѡ����ӡ�','upload/hrclass/20141114/14185027369.PNG');


INSERT INTO phpyun_user_resume VALUES('1','2','1','1','0','1','0','1','0','0','0');

INSERT INTO phpyun_userclass VALUES('1','0','�Ա�','user_sex','0');
INSERT INTO phpyun_userclass VALUES('2','0','����״��','user_marriage','0');
INSERT INTO phpyun_userclass VALUES('3','0','�����̶�','user_edu','0');
INSERT INTO phpyun_userclass VALUES('4','0','��������','user_word','0');
INSERT INTO phpyun_userclass VALUES('6','1','��','','1');
INSERT INTO phpyun_userclass VALUES('7','1','Ů','','3');
INSERT INTO phpyun_userclass VALUES('8','2','�ѻ�','','0');
INSERT INTO phpyun_userclass VALUES('9','3','����','','0');
INSERT INTO phpyun_userclass VALUES('25','0','����','user_skill','0');
INSERT INTO phpyun_userclass VALUES('11','2','δ��','','2');
INSERT INTO phpyun_userclass VALUES('12','3','����','','1');
INSERT INTO phpyun_userclass VALUES('13','3','��ר','','3');
INSERT INTO phpyun_userclass VALUES('14','3','��ר','','4');
INSERT INTO phpyun_userclass VALUES('15','3','����','','5');
INSERT INTO phpyun_userclass VALUES('16','3','˶ʿ','','6');
INSERT INTO phpyun_userclass VALUES('17','3','��ʿ','','7');
INSERT INTO phpyun_userclass VALUES('18','4','Ӧ���ҵ��','','1');
INSERT INTO phpyun_userclass VALUES('19','4','1������','','2');
INSERT INTO phpyun_userclass VALUES('20','4','2������','','3');
INSERT INTO phpyun_userclass VALUES('21','4','3������','','4');
INSERT INTO phpyun_userclass VALUES('22','4','5������','','5');
INSERT INTO phpyun_userclass VALUES('23','4','8������','','6');
INSERT INTO phpyun_userclass VALUES('24','4','10������','','7');
INSERT INTO phpyun_userclass VALUES('26','25','����','','1');
INSERT INTO phpyun_userclass VALUES('27','25','�����','','2');
INSERT INTO phpyun_userclass VALUES('28','25','����','','3');
INSERT INTO phpyun_userclass VALUES('29','0','�ڴ�н��','user_salary','0');
INSERT INTO phpyun_userclass VALUES('30','29','����','','1');
INSERT INTO phpyun_userclass VALUES('31','29','1000����','','2');
INSERT INTO phpyun_userclass VALUES('32','29','1000 - 1999','','3');
INSERT INTO phpyun_userclass VALUES('33','29','2000 - 2999','','4');
INSERT INTO phpyun_userclass VALUES('34','29','3000 - 4499','','5');
INSERT INTO phpyun_userclass VALUES('35','29','4500 - 5999','','6');
INSERT INTO phpyun_userclass VALUES('36','29','6000 - 7999','','7');
INSERT INTO phpyun_userclass VALUES('37','29','8000 - 9999','','8');
INSERT INTO phpyun_userclass VALUES('38','29','10000������','','9');
INSERT INTO phpyun_userclass VALUES('39','0','���̶ܳ�','user_ing','0');
INSERT INTO phpyun_userclass VALUES('40','39','һ��','','1');
INSERT INTO phpyun_userclass VALUES('41','39','����','','2');
INSERT INTO phpyun_userclass VALUES('42','39','����','','3');
INSERT INTO phpyun_userclass VALUES('43','39','��ͨ','','4');
INSERT INTO phpyun_userclass VALUES('44','0','����ʱ��','user_report','0');
INSERT INTO phpyun_userclass VALUES('45','44','��ʱ����','','1');
INSERT INTO phpyun_userclass VALUES('46','44','1������','','2');
INSERT INTO phpyun_userclass VALUES('47','44','3������','','3');
INSERT INTO phpyun_userclass VALUES('48','44','1����֮��','','4');
INSERT INTO phpyun_userclass VALUES('50','44','3����֮��','','5');
INSERT INTO phpyun_userclass VALUES('51','44','��ȷ��','','6');
INSERT INTO phpyun_userclass VALUES('52','0','���˷�������','user_message','0');
INSERT INTO phpyun_userclass VALUES('53','52','��ѯ','','1');
INSERT INTO phpyun_userclass VALUES('54','52','����','','2');
INSERT INTO phpyun_userclass VALUES('55','52','���','','3');
INSERT INTO phpyun_userclass VALUES('56','0','��������','user_type','0');
INSERT INTO phpyun_userclass VALUES('57','56','����','','0');
INSERT INTO phpyun_userclass VALUES('58','56','ȫְ','','1');
INSERT INTO phpyun_userclass VALUES('59','56','��ְ','','2');
INSERT INTO phpyun_userclass VALUES('100','4','4������','','5');
INSERT INTO phpyun_userclass VALUES('101','4','6������','','7');
INSERT INTO phpyun_userclass VALUES('112','4','����','','0');


INSERT INTO phpyun_userid_msg VALUES('1','2','��������','�ǵô�����Ʒ','1','������ҵ�������޹�˾','0','1423201612','0','2','�㶫ʡ��ݸ���ϳ��������������','3��15��','����','15920258490','1','���');
INSERT INTO phpyun_userid_msg VALUES('2','0','��������','�ǵô�����Ʒ','1','������ҵ�������޹�˾','0','1425007150','0','1','�㶫ʡ��ݸ���ϳ��������������','3��15��','����','15920258490','1','���');




INSERT INTO phpyun_wxnav VALUES('1','�ҵĲ˵�','0','','','click','1');
INSERT INTO phpyun_wxnav VALUES('2','�ҹ���','0','','','click','2');
INSERT INTO phpyun_wxnav VALUES('3','���๦��','0','','','click','3');
INSERT INTO phpyun_wxnav VALUES('4','�ҵ��ʺ�','1','�ҵ��ʺ�','','click','4');
INSERT INTO phpyun_wxnav VALUES('5','�ҵ���Ϣ','1','�ҵ���Ϣ','','click','5');
INSERT INTO phpyun_wxnav VALUES('6','��������','1','��������','','click','6');
INSERT INTO phpyun_wxnav VALUES('7','�����鿴','1','�����鿴','','click','7');
INSERT INTO phpyun_wxnav VALUES('8','ˢ�¼���','1','ˢ�¼���','','click','8');
INSERT INTO phpyun_wxnav VALUES('9','ְλ����','2','ְλ����','','click','9');
INSERT INTO phpyun_wxnav VALUES('10','�Ƽ�ְλ','2','�Ƽ�ְλ','','click','10');
INSERT INTO phpyun_wxnav VALUES('11','�ܱ�ְλ','2','�ܱ�ְλ','','click','11');
INSERT INTO phpyun_wxnav VALUES('12','΢��Ƹ','3','','http://www.hr135.com/index.php?m=once','view','12');
INSERT INTO phpyun_wxnav VALUES('13','΢����','3','','	http://www.hr135.com/index.php?m=tiny','view','13');
INSERT INTO phpyun_wxnav VALUES('14','ְ����Ѷ','3','','http://www.hr135.com/index.php?m=news','view','14');




