drop table role;
drop table credential;
drop table js_master;
drop table jp_master;
drop table jp_job;
drop table js_achievement;
drop table js_experience;
drop table js_academic;
drop table js_project;
drop table js_reference;
drop table js_skill;
drop table js_activity;
drop table js_saved_job;
drop table js_applied_job;
drop table js_referred_job;

-------------------------

drop table accept_not;
drop table js_approved_job;
drop table js_connection;
drop table js_notification;
drop table js_preferences;
drop table not_type;
drop table request;



drop SEQUENCE user_id;
drop SEQUENCE role_id;
drop SEQUENCE con_id;
drop SEQUENCE req_id;
drop SEQUENCE not_id;
drop SEQUENCE type_id;
drop SEQUENCE achieve_id;
drop SEQUENCE academic_id;
drop SEQUENCE exp_id;
drop SEQUENCE project_id;
drop SEQUENCE ref_id;
drop SEQUENCE skill_id;
drop SEQUENCE activity_id;
drop SEQUENCE job_id;
drop SEQUENCE apply_id;
drop SEQUENCE save_id;
drop SEQUENCE referred_id;
drop SEQUENCE approve_id;

/*-----------------------------------------------------------*/

drop table role;

CREATE SEQUENCE role_id INCREMENT BY 1;

CREATE TABLE role (
  role_id 		int 		NOT NULL PRIMARY KEY,
  role_type 	varchar(50)	NOT NULL
);

select * from role;
/*-----------------------------------------------------------*/

CREATE SEQUENCE user_id INCREMENT BY 1;


CREATE TABLE credential (
  user_id	NUMBER(38)  PRIMARY KEY,
  username 	varchar(15)	NOT NULL,
  pw 	varchar(15)	NOT NULL,
  seq_que 	varchar(50)	NOT NULL,
  ans 		varchar(20) NOT NULL,
  role_id 	NUMBER(10) 		NOT NULL,
  CONSTRAINT FK_cred_role FOREIGN KEY(role_id) REFERENCES role(role_id) on delete cascade,
  CONSTRAINT con_user_id CHECK(REGEXp_LIKE(username,'\w[a-z:A-Z:0-9]{5,10}'))
);

select * from credential;
/*--------------------------------------------------------*/
--CREATE SEQUENCE js_id INCREMENT BY 1;

CREATE TABLE js_master (
--    js_id number(38) not null primary key,
  js_user_id	 NUMBER(38)	 not null primary key,
  fname			 varchar(50)	NOT NULL,
  mname		     varchar(50)	NOT NULL,
  lname			 varchar(50)	NOT NULL,
  profile_photo_url varchar(1000)	NULL,
  mobile_no		 varchar(10)	NULL,
  email			 varchar(50)	NOT NULL,
  gender 		 NUMBER(1)		NOT NULL,
  city			 varchar(20)	NULL,
  state			 varchar(20)	NULL,
  pincode		 varchar(6)		NULL,
  street		 varchar(50)	NULL,
  landmark	 	 varchar(50)	NULL,
  is_fresher	 NUMBER(38)			NOT NULL,
  date_of_birth  date,
  age 			 NUMBER(38),
  CONSTRAINT FK_cred_js FOREIGN KEY(js_user_id) REFERENCES credential(user_id) on delete cascade
);

select * from js_master;

/*-------------------------------------------------------------*/


CREATE SEQUENCE con_id INCREMENT BY 1;

CREATE TABLE js_connection (
  con_id number(38) 	NOT NULL PRIMARY KEY,
  src_user_id number(38)	NOT NULL,
  des_user_id number(38)	NOT NULL,
  CONSTRAINT FK_num_q_src_js FOREIGN KEY(src_user_id) REFERENCES js_master(js_user_id) on delete cascade,
  CONSTRAINT FK_re_dest_js FOREIGN KEY(des_user_id) REFERENCES js_master(js_user_id) 
);

SELECT * FROM JS_CONNECTION;
/*-------------------------------------------------------------*/

CREATE SEQUENCE req_id INCREMENT BY 1;

CREATE TABLE request (
  req_id 		number(38)	NOT NULL PRIMARY KEY,
  src_user_id 	number(38)	NOT NULL,
  dest_user_id 	number(38)	NOT NULL,
  CONSTRAINT FK_number_q_src_js FOREIGN KEY(src_user_id) REFERENCES js_master(js_user_id) on delete cascade,
  CONSTRAINT FK_req_dest_js FOREIGN KEY(dest_user_id) REFERENCES js_master(js_user_id)
);

select * from request;
/* ----------------------------------------*/

CREATE SEQUENCE type_id INCREMENT BY 1;

CREATE TABLE not_type (
  type_id	int 		PRIMARY KEY NOT NULL,
  type_nm	varchar(25) NOT NULL
);

select * from not_type;

-------------js_notification table-------------                                     

CREATE SEQUENCE not_id INCREMENT BY 1;

CREATE TABLE js_notification (
  not_id 		number(38) 		NOT NULL PRIMARY KEY,
  type_id		number(38) 		NOT NULL,
 time_stamp	timestamp	NOT NULL,
  js_user_id	number(38)			NOT NULL,
  is_open		number(1)			NOT NULL,
  CONSTRAINT FK_not_type FOREIGN KEY(type_id) REFERENCES not_type(type_id) on delete cascade,
  CONSTRAINT FK_not_js FOREIGN KEY(js_user_id) REFERENCES js_master(js_user_id)on delete cascade
);

select * from js_notification;

--------

-------------Accept_Not Table-------------

CREATE SEQUENCE accept_id INCREMENT BY 1;

--drop table accept_not;

CREATE TABLE accept_not (
  accept_id number(38) primary key,
  not_id 		number(38) 		NOT NULL,
  src_user_id 	number(38)			NOT NULL,
  type_id number(38) not null,
  CONSTRAINT FK_not_accept FOREIGN KEY(type_id) REFERENCES js_notification(not_id) on delete cascade
);

select * from accept_not;

-------------js_academic table-------------

CREATE SEQUENCE academic_id INCREMENT BY 1;


CREATE TABLE js_academic (
  academic_id 		number(38)			NOT NULL PRIMARY KEY,
  institute_name	varchar(50)	NOT NULL,
  degree 			varchar(50)	NOT NULL,
  is_percentage 	number(1)		NOT NULL,
  mark 				number(38)	NOT NULL,
  pr 				number(38)		NULL,
  branch 			varchar(50)		NULL,
  passing_year 		numeric(4,0) NOT NULL,
  js_user_id 		number(38)			NOT NULL,
  CONSTRAINT FK_academic_js FOREIGN KEY(js_user_id) REFERENCES js_master(js_user_id) on delete cascade
);

select * from js_academic;
-------------js_skill table-------------

CREATE SEQUENCE skill_id INCREMENT BY 1;

CREATE TABLE js_skill (

 skill_id 		number(38)			NOT NULL PRIMARY KEY,
  skill 		varchar(200)	NOT NULL,
  js_user_id 	number(38)				NOT NULL,
  CONSTRAINT FK_skill_js FOREIGN KEY(js_user_id) REFERENCES js_master(js_user_id) on delete cascade
);
select * from js_skill;

/* ----------------------------------------*/


CREATE SEQUENCE pref_id INCREMENT BY 1;

CREATE TABLE js_preference (
  pref_id 		number(38)	NOT NULL PRIMARY KEY,
  industry1		varchar(50)	NULL,
  industry2		varchar(50)	NULL,
  industry3		varchar(50)	NULL,
  location1		varchar(50)	NULL,
  location2		varchar(50)	NULL,
  location3		varchar(50)	NULL,
  designation1	varchar(50)	NULL,
  designation2	varchar(50)	NULL,
  designation3	varchar(50)	NULL,
  min_salary 	number(38) NULL,
  max_salary 	number(38) NULL,
  startup 		number(1) default 0,
  min_size_in_emp number(38),
  js_user_id number(38) not null,
  CONSTRAINT FK_exp_js FOREIGN KEY(js_user_id) REFERENCES js_master(js_user_id) on delete cascade
);

select * from js_preference;
-------------js_experience table-------------                                  
CREATE SEQUENCE exp_id INCREMENT BY 1;


CREATE TABLE js_experience (
  exp_id 			number(38)			NOT NULL PRIMARY KEY,
  institute_name	varchar(50)	NOT NULL,	
  designation 		varchar(50)	NOT NULL,
  is_working		number(1)		NOT NULL,
  exp_from 				date		NOT NULL,
  exp_to 				date,
  year_exp			number(1)		NOT NULL,
  achievement 		varchar(1000)	NULL,
  js_user_id 		number(38)			NOT NULL,
  CONSTRAINT FK_exp_js_exp FOREIGN KEY(js_user_id) REFERENCES js_master(js_user_id) on delete cascade
);

select * from js_experience;
-------------js_project table-------------
CREATE SEQUENCE proj_id INCREMENT BY 1;

CREATE TABLE js_project (
  project_id 	int 		NOT NULL PRIMARY KEY,
  title 		varchar(50)	NOT NULL,
  description 	varchar(2000)	NULL,
  team_size		int			NOT NULL,
  role 			varchar(50)		NULL,
  duration 		varchar(50)	NOT NULL,
  js_user_id 	int			NOT NULL,
  CONSTRAINT FK_proj_js FOREIGN KEY(js_user_id) REFERENCES js_master(js_user_id) on delete cascade
);


select * from js_project;

-------------js_achievement table-------------
CREATE SEQUENCE achieve_id INCREMENT BY 1;

CREATE TABLE js_achievement (
  achieve_id 	number(38) 			NOT NULL PRIMARY KEY,
  achieved 		varchar(1000)	NOT NULL,
  js_user_id	number(38)				NOT NULL,
  CONSTRAINT FK_achieve_js FOREIGN KEY(js_user_id) REFERENCES js_master(js_user_id) on delete cascade
);


select * from js_achievement;

-------------js_activity table-------------
CREATE SEQUENCE activity_id INCREMENT BY 1;

CREATE TABLE js_activity (
  activity_id 	number(38) 			NOT NULL PRIMARY KEY,
  activity		varchar(1000)	NOT NULL,
  js_user_id	number(38)				NOT NULL,
  CONSTRAINT FK_activity_js FOREIGN KEY(js_user_id) REFERENCES js_master(js_user_id) on delete cascade
);

select * from js_activity;
-------------js_reference table-------------
CREATE SEQUENCE ref_id INCREMENT BY 1;

CREATE TABLE js_reference (
  ref_id			 number(38) 			NOT NULL PRIMARY KEY,
  name 				 varchar(50)	NOT NULL,
  designation		 varchar(50)	NOT NULL,
  institute_name	 varchar(50)	NULL,
  mobile_no			 varchar(10)	NULL,
  email				 varchar(100)	NOT NULL,
  js_user_id		 number(38) 			NOT NULL,
  CONSTRAINT FK_ref_js FOREIGN KEY(js_user_id) REFERENCES js_master(js_user_id) on delete cascade
);

select * from js_reference;


-------------jp_master table------------- 

--CREATE SEQUENCE jp_id INCREMENT BY 1;

CREATE TABLE jp_master (
--    jp_id  number(38) primary key,
  jp_user_id 			number(38) NOT NULL primary key,
  profile_photo_url 	varchar2(200)	NULL,
  company_name			varchar2(15)		NOT NULL,
  industry 				varchar2(100)	NOT NULL,
  size_in_emp 			number(38)				NOT NULL,
  description 			varchar2(500)	NULL,
  website_url 			varchar2(500)	NOT NULL,
  about 			    varchar2(200)	NULL,
  founded_on_year		numeric(4,0)	NULL,
  street 				varchar2(100)	NULL,
  landmark 				varchar2(50)		NULL,
  city 					varchar2(20)		NULL,
  state 				varchar2(20)		NULL,
  pincode 				varchar2(6)		NULL,
  contact_person 		VARCHAR2(100)	NOT NULL,
  mobile_no 			varchar2(10)		NULL,
  email 				varchar2(100)	NOT NULL,
  CONSTRAINT FK_cred_jp FOREIGN KEY(jp_user_id) REFERENCES credential(user_id) on delete cascade
);


select * from jp_master;

-------------jp_job table-------------     
CREATE SEQUENCE job_id INCREMENT BY 1;

CREATE TABLE jp_job (
  job_id 		number(38) 		NOT NULL PRIMARY KEY,
  designation 	varchar(50)	NOT NULL,
  job_descr 	varchar2(200)	NULL,
  vacancy 		number(38)	NOT NULL,
  age_min 		numeric(2,0)	NULL,
  age_max 		numeric(2,0)	NULL,
  salary_avg 	number(38)				NULL,
  exp_year 		numeric(2,0)	NULL,
  jp_user_id 	number(38)			NOT NULL,
  post_date 	date		NOT NULL,
  due_date 		date		NOT NULL,
  venue_desc 	varchar2(200)	NULL,
 
  CONSTRAINT FK_job1_jp FOREIGN KEY(jp_user_id) REFERENCES jp_master(jp_user_id) on delete cascade
);

select * from jp_job;



-------------js_referred_job table-------------
CREATE SEQUENCE referred_id INCREMENT BY 1;

CREATE TABLE js_referred_job (
    referred_id number(38) not null primary key,
  con_id 			number(38) NOT NULL,
  job_id 			number(38)	NOT NULL,
  referred_by_id 	number(38)	NOT NULL,
  CONSTRAINT FK_refej_con FOREIGN KEY(con_id) REFERENCES js_connection(con_id) on delete cascade ,
  CONSTRAINT FK_refej_job FOREIGN KEY(job_id) REFERENCES jp_job(job_id) on delete cascade
  --PRIMARY KEY (js_user_id,job_id)
);
	
    
select * from js_referred_job;

-------------js_approved_job table-------------          
CREATE SEQUENCE approve_id INCREMENT BY 1;

CREATE TABLE js_approved_job (
        approve_id number(38) not null PRIMARY KEY,
  js_user_id 	int NOT NULL ,
  job_id 		int	NOT NULL,
  CONSTRAINT FK_approvej_js FOREIGN KEY(js_user_id) REFERENCES js_master(js_user_id) on delete cascade,
  CONSTRAINT FK_approvej_job FOREIGN KEY(job_id) REFERENCES jp_job(job_id) on delete cascade

);


select * from js_approved_job;

-------------js_saved_job table-------------
CREATE SEQUENCE save_id INCREMENT BY 1;

CREATE TABLE js_saved_job (
    save_id number(38) not null PRIMARY KEY,
  js_user_id number(38) NOT NULL,
  job_id 	 number(38) NOT NULL,
  CONSTRAINT FK_savej_js FOREIGN KEY(js_user_id) REFERENCES js_master(js_user_id) on delete cascade,
  CONSTRAINT FK_savej_job FOREIGN KEY(job_id) REFERENCES jp_job(job_id) on delete cascade

);

select * from js_saved_job;
select * from jp_master;


select * from js_saved_job;


------------------js_applied_job ---------------------------------
CREATE SEQUENCE apply_id INCREMENT BY 1;

CREATE TABLE js_applied_job (
  apply_id number(38) not null primary key,
  js_user_id number(38) NOT NULL,
  job_id 	 number(38) NOT NULL,
  
  CONSTRAINT FK_save1j_js FOREIGN KEY(js_user_id) REFERENCES js_master(js_user_id) on delete cascade,
  CONSTRAINT FK_save2j_job FOREIGN KEY(job_id) REFERENCES jp_job(job_id) on delete cascade
  
);

---------------------------The End-----------------------------

----------------------   DML  ------------------------------





