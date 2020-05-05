------------------ROLE TABLE-------------
DROP SEQUENCE role_id;
CREATE SEQUENCE role_id INCREMENT BY 1;

drop table role;

CREATE TABLE role (
  role_id 		int 		NOT NULL PRIMARY KEY,
  role_type 	VARCHAR2(50) 	NOT NULL
);

select * from role;

INSERT INTO role (role_id,role_type)
VALUES (role_id.NEXTVAL,'job_seeker');
 
INSERT INTO role (role_id,role_type)
VALUES (role_id.NEXTVAL,'job_provider');
 
 ---------------Credential Table-------------
 drop SEQUENCE user_id;
 
 CREATE SEQUENCE user_id INCREMENT BY 1;

drop table credential;

CREATE TABLE credential (
  user_id	NUMBER(38)  PRIMARY KEY,
  username 	varchar(15)	NOT NULL,
  password 	varchar(15)	NOT NULL,
  seq_que 	varchar(50)	NOT NULL,
  ans 		varchar(20) NOT NULL,
  role_id 	NUMBER(10) 		NOT NULL,
  CONSTRAINT FK_cred_role FOREIGN KEY(role_id) REFERENCES role(role_id) on delete cascade,
  CONSTRAINT con_user_id CHECK(REGEXp_LIKE(username,'\w[a-z:A-Z:0-9]{5,10}'))
);

select * from credential;

INSERT INTO credential (user_id,username,password,seq_que,ans,role_id)
VALUES (user_id.NEXTVAL,'jobseeker1','jobseeker1','js1_que','js1_ans',2);
 
 
INSERT INTO credential (user_id,username,password,seq_que,ans,role_id)
VALUES (user_id.NEXTVAL,'jobseeker2','jobseeker2','js2_que','js2_ans',2);
 
 
INSERT INTO credential (user_id,username,password,seq_que,ans,role_id)
VALUES (user_id.NEXTVAL,'jobprovider1','jobprovider1','jp1_que','jp1_ans',1);
	
INSERT INTO credential (user_id,username,password,seq_que,ans,role_id)
VALUES (user_id.NEXTVAL,'jobprovider2','jobprovider2','jp2_que','jp2_ans',1);
 
 ----------------JP MASTER-------------
 
drop table jp_master;

 CREATE TABLE jp_master (
  jp_user_id 			number(38) NOT NULL primary key,
  profile_photo_url 	varchar2(200)	NULL,
  company_name			varchar2(15)		NOT NULL,
  industry 				varchar2(100)	NOT NULL,
  size_in_emp 			number(38)				NOT NULL,
  description 			varchar2(2000)	NULL,
  website_url 			varchar2(500)	NOT NULL,
  founded_on_year		numeric(4,0)	NULL,
  street 				varchar2(100)	NULL,
  landmark 				varchar2(50)		NULL,
  city 					varchar2(20)		NULL,
  state 				varchar2(20)		NULL,
  pincode 				number(6)		NULL,
  contact_person 		VARCHAR2(100)	NOT NULL,
  mobile_no 			number(10)		NULL,
  email 				varchar2(100)	NOT NULL,
  CONSTRAINT FK_cred_jp FOREIGN KEY(jp_user_id) REFERENCES credential(user_id) on delete cascade
);


select * from jp_master;

INSERT INTO  jp_master (jp_user_id,profile_photo_url,company_name,industry,size_in_emp,description,website_url,founded_on_year,street,landmark,city,state,pincode,contact_person,mobile_no,email)
VALUES (3,'/project/proPics/3.jpeg','ABC PVT. LTD','Petrolium',35000,'ABC descr','www.abc.com',2000,'35/Gujarat Industrial','VIP Circle','Surat','Gujarat',345673,'Rajat',9856238756,'rajat45@yahoo.com');

INSERT INTO  jp_master (jp_user_id,profile_photo_url,company_name,industry,size_in_emp,description,website_url,founded_on_year,street,landmark,city,state,pincode,contact_person,mobile_no,email)
VALUES (4,'/project/proPics/4.jpg','XYZ PVT. LTD','IT',32451,'XYZ descr','www.XYZ.com',2001,'35/Silicon Valley Park','FB Circle','Bombay','Maharashtra',345573,'Akash',9556238756,'akki45@yahoo.com');

  ----------------JP JOB-------------
 
 drop SEQUENCE job_id;
 
 CREATE SEQUENCE job_id INCREMENT BY 1;
 
 drop table jp_job;
 
 CREATE TABLE jp_job (
  job_id 		number(38) 		NOT NULL PRIMARY KEY,
  designation 	varchar(50)	NOT NULL,
  job_descr 	varchar2(2000)	NULL,
  vacancy 		number(38)	NOT NULL,
  age_min 		numeric(2,0)	NULL,
  age_max 		numeric(2,0)	NULL,
  salary_avg 	number(38)				NULL,
  exp_year 		numeric(2,0)	NULL,
  jp_user_id 	number(38)			NOT NULL,
  post_date 	date		NOT NULL,
  --due_date 		date		NOT NULL,
  venue_desc 	varchar2(2000)	NULL,
 
  CONSTRAINT FK_job1_jp FOREIGN KEY(jp_user_id) REFERENCES jp_master(jp_user_id) on delete cascade
);

select * from jp_job;

INSERT INTO  jp_job (job_id,designation,job_descr,vacancy,age_min,age_max,salary_avg,exp_year,jp_user_id,post_date,venue_desc)
VALUES (job_id.NEXTVAL,'Product Manager','Vacancy for product manager',4,24,34,35000,4,3,TO_DATE(sysdate, 'dd/mm/yyyy'),'HQ Address');

INSERT INTO  jp_job (job_id,designation,job_descr,vacancy,age_min,age_max,salary_avg,exp_year,jp_user_id,post_date,venue_desc)
VALUES (job_id.NEXTVAL,'Project Manager','Vacancy for project manager',4,25,30,4000,5,4,TO_DATE(sysdate,'dd/mm/yyyy'),'HQ Address1');


-------------js MASTER-----------------
 
 drop table js_master;


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

INSERT INTO js_master (js_user_id,fname,mname,lname,profile_photo_url,mobile_no,email,gender,city,state,pincode,street,landmark,is_fresher,date_of_birth)
VALUES (1,'Jaydeep','V','Patel','/project/proPics,1.jpeg',9832453322,'mymail23@gmail.com',0,'Surat','Gujarat',395010,'54/Bhumipark Society','Punagam',0,'14-JUN-1998');
 
UPDATE js_master SET age = trunc(months_between(sysdate,date_of_birth) / 12) WHERE js_user_id = 1;
 
INSERT INTO js_master (js_user_id,fname,mname,lname,profile_photo_url,mobile_no,email,gender,city,state,pincode,street,landmark,is_fresher,date_of_birth)
VALUES (2,'Abhishek','R','Patel','/project/proPics,2.jpeg',9832343322,'abhimail23@gmail.com',0,'Vadodara','Gujarat',395310,'54/Sunrise Society','Padar Road',1,'15-JUL-1999');
 
UPDATE js_master SET age = trunc(months_between(sysdate,date_of_birth) / 12) WHERE js_user_id = 2;






-------------js_academic table-------------
drop SEQUENCE academic_id;

CREATE SEQUENCE academic_id INCREMENT BY 1;

drop table js_academic;

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


INSERT INTO  js_academic (academic_id,institute_name,degree,is_percentage,mark,pr,branch,passing_year,js_user_id)
VALUES (academic_id.NEXTVAL,'Institue1','Degree1',1,95,99,'Branch1',2017,1);


INSERT INTO  js_academic (academic_id,institute_name,degree,is_percentage,mark,pr,branch,passing_year,js_user_id)
VALUES (academic_id.NEXTVAL,'Institue2','Degree2',0,9,98.77,'Branch1',2013,2);


--------------------JS SKILL------------------------
 drop SEQUENCE skill_id;
 
 CREATE SEQUENCE skill_id INCREMENT BY 1;
 
 drop table js_skill;
 
 CREATE TABLE js_skill (

 skill_id 		number(38)			NOT NULL PRIMARY KEY,
  skill 		varchar(200)	NOT NULL,
  js_user_id 	number(38)				NOT NULL,
  CONSTRAINT FK_skill_js FOREIGN KEY(js_user_id) REFERENCES js_master(js_user_id) on delete cascade
);

select * from js_skill;

INSERT INTO  js_skill (skill_id,skill,js_user_id)
VALUES (skill_id.NEXTVAL,'C++',1);

INSERT INTO  js_skill (skill_id,skill,js_user_id)
VALUES (skill_id.NEXTVAL,'Java',2);


-----------------------JS ACTIVITY-------------------

 drop SEQUENCE activity_id;
 
 CREATE SEQUENCE activity_id INCREMENT BY 1;
 
 drop table js_activity;
 
 CREATE TABLE js_activity (
  activity_id 	number(38) 			NOT NULL PRIMARY KEY,
  activity		varchar(1000)	NOT NULL,
  js_user_id	number(38)				NOT NULL,
  CONSTRAINT FK_activity_js FOREIGN KEY(js_user_id) REFERENCES js_master(js_user_id) on delete cascade
);

select * from js_activity;

 
INSERT INTO  js_activity (activity_id,activity,js_user_id)
VALUES (activity_id.NEXTVAL,'SOCIAL SERVICES',1);

INSERT INTO  js_activity (activity_id,activity,js_user_id)
VALUES (activity_id.NEXTVAL,'Football Champion National Level',2);


-------------js_achievement table-------------
 drop SEQUENCE achieve_id;

CREATE SEQUENCE achieve_id INCREMENT BY 1;

 drop table js_achievement;
 
CREATE TABLE js_achievement (
  achieve_id 	number(38) 			NOT NULL PRIMARY KEY,
  achieved 		varchar(1000)	NOT NULL,
  js_user_id	number(38)				NOT NULL,
  CONSTRAINT FK_achieve_js FOREIGN KEY(js_user_id) REFERENCES js_master(js_user_id) on delete cascade
);


select * from js_achievement;

INSERT INTO  js_achievement (achieve_id,achieved,js_user_id)
VALUES (achieve_id.NEXTVAL,'Best Award',1);

INSERT INTO  js_achievement (achieve_id,achieved,js_user_id)
VALUES (achieve_id.NEXTVAL,'Best Award',2);


-------------js_project table-------------
 drop SEQUENCE proj_id;
 
CREATE SEQUENCE proj_id INCREMENT BY 1;

 drop table js_project;

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

INSERT INTO  js_project (project_id,title,description,team_size,role,duration,js_user_id)
VALUES (proj_id.NEXTVAL,'ONLINE JOB PORTAL','online platform for job',3,NULL,'5 months',1);

INSERT INTO  js_project (project_id,title,description,team_size,role,duration,js_user_id)
VALUES (proj_id.NEXTVAL,'HOTEL MANAGEMENT SYSTEM','online hotel management',1,NULL,'1 year',2);





-------------js_experience table-------------  
 drop SEQUENCE exp_id;

CREATE SEQUENCE exp_id INCREMENT BY 1;

drop table js_experience;

CREATE TABLE js_experience (
  exp_id 			number(38)			NOT NULL PRIMARY KEY,
  institute_name	varchar(50)	NOT NULL,	
  designation 		varchar(50)	NOT NULL,
  is_working		number(1)		NOT NULL,
  exp_from 				date		NOT NULL,
  exp_to 				date,
  year_exp			number(1)		NULL,
  achievement 		varchar(1000)	NULL,
  js_user_id 		number(38)			NOT NULL,
  CONSTRAINT FK_exp_js_exp FOREIGN KEY(js_user_id) REFERENCES js_master(js_user_id) on delete cascade
);

select * from js_experience;

INSERT INTO  js_experience (exp_id,institute_name,designation,is_working,exp_from,exp_to,achievement,js_user_id)
VALUES (exp_id.NEXTVAL,'Company1','Product Manager',0,'31-MAR-2006','13-MAR-2010',NULL,1);

UPDATE js_experience SET year_exp = trunc(months_between(exp_to,exp_from) / 12) WHERE exp_id = 1;

INSERT INTO  js_experience (exp_id,institute_name,designation,is_working,exp_from,exp_to,achievement,js_user_id)
VALUES (exp_id.NEXTVAL,'Company2','Manager',1,'31-MAR-2007',NULL,NULL,2);

UPDATE js_experience SET year_exp = trunc(months_between(exp_to,exp_from) / 12) WHERE exp_id = 2;



-------------js_preferences table-------------  
 drop SEQUENCE pref_id;

CREATE SEQUENCE pref_id INCREMENT BY 1;

drop table js_preferences;

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

INSERT INTO js_preference (pref_id,js_user_id,industry1,industry2,industry3,location1,location2,location3,designation1,designation2,designation3,min_salary,max_salary,startup,MIN_SIZE_IN_EMP)
VALUES  (pref_id.NEXTVAL,1,'IT',NULL,NULL,'Surat',NULL,NULL,'DEVELOPER',NULL,NULL,25000,40000,0,35000);

INSERT INTO js_preference (pref_id,js_user_id,industry1,industry2,industry3,location1,location2,location3,designation1,designation2,designation3,min_salary,max_salary,startup,min_size_in_emp)
VALUES  (pref_id.NEXTVAL,2,'Petrolium',NULL,NULL,'Surat',NULL,NULL,'INSTRUCTIONM MANAGER',NULL,NULL,22000,40000,0,35000);

-------------js_reference table-------------
drop SEQUENCE ref_id;

CREATE SEQUENCE ref_id INCREMENT BY 1;

drop table js_reference;

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
 
 INSERT INTO  js_reference (ref_id,name,designation,institute_name,mobile_no,email,js_user_id)
VALUES (ref_id.NEXTVAL,'ABC','Teacher','XYZ','9876543210','abc123@yahoo.com',1);

INSERT INTO  js_reference (ref_id,name,designation,institute_name,mobile_no,email,js_user_id)
VALUES (ref_id.NEXTVAL,'MNL','Product Manager','EFG','9376543311','mnl123@gmail.com',2);

-------------not_type table-------------         
drop SEQUENCE type_id;

CREATE SEQUENCE type_id INCREMENT BY 1;

drop table not_type;

CREATE TABLE not_type (
  type_id	int 		PRIMARY KEY NOT NULL,
  type_nm	varchar(25) NOT NULL
);

select * from not_type;


INSERT INTO  not_type (type_id,type_nm)
VALUES (type_id.NEXTVAL,'Accept');

-------------js_notification table-------------                                     
drop SEQUENCE not_id;

CREATE SEQUENCE not_id INCREMENT BY 1;

drop table js_notification;

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

INSERT INTO  js_notification (not_id,type_id,is_open,time_stamp,js_user_id)
VALUES (not_id.NEXTVAL,1,0,CURRENT_TIMESTAMP,1);

INSERT INTO  js_notification (not_id,type_id,is_open,time_stamp,js_user_id)
VALUES (not_id.NEXTVAL,1,0,CURRENT_TIMESTAMP,2);



-------------Accept_Not Table-------------
drop SEQUENCE accept_id;

CREATE SEQUENCE accept_id INCREMENT BY 1;

drop table accept_not;

CREATE TABLE accept_not (
  accept_id number(38) primary key,
  not_id 		number(38) 		NOT NULL,
  dest_user_id 	number(38)			NOT NULL,
  type_id number(38) not null,
  CONSTRAINT FK_not_accept FOREIGN KEY(type_id) REFERENCES js_notification(not_id) on delete cascade
);

select * from accept_not;

INSERT INTO  accept_not (accept_id,not_id,dest_user_id,type_id)
VALUES (ACCEPT_ID.NEXTVAL,1,2,1);

INSERT INTO  accept_not (accept_id,not_id,dest_user_id,type_id)
VALUES (ACCEPT_ID.NEXTVAL,2,1,1);


--------------------------REQUEST TABLE-----------------------------------
drop SEQUENCE req_id;

CREATE SEQUENCE req_id INCREMENT BY 1;

drop table request;

CREATE TABLE request (
  req_id 		number(38)	NOT NULL PRIMARY KEY,
  src_user_id 	number(38)	NOT NULL,
  dest_user_id 	number(38)	NOT NULL,
  CONSTRAINT FK_number_q_src_js FOREIGN KEY(src_user_id) REFERENCES js_master(js_user_id) on delete cascade,
  CONSTRAINT FK_req_dest_js FOREIGN KEY(dest_user_id) REFERENCES js_master(js_user_id)
);

select * from request;

INSERT INTO  request (req_id,src_user_id,dest_user_id)
VALUES (req_id.NEXTVAL,1,2);

INSERT INTO  request (req_id,src_user_id,dest_user_id)
VALUES (req_id.NEXTVAL,2,1);

------------------------js_connection------------------
drop SEQUENCE con_id;

CREATE SEQUENCE con_id INCREMENT BY 1;

drop table js_connection;

CREATE TABLE js_connection (
  con_id number(38) 	NOT NULL PRIMARY KEY,
  src_user_id number(38)	NOT NULL,
  des_user_id number(38)	NOT NULL,
  CONSTRAINT FK_num_q_src_js FOREIGN KEY(src_user_id) REFERENCES js_master(js_user_id) on delete cascade,
  CONSTRAINT FK_re_dest_js FOREIGN KEY(des_user_id) REFERENCES js_master(js_user_id) 
);

SELECT * FROM JS_CONNECTION;

INSERT INTO  js_connection (con_id,src_user_id,des_user_id)
VALUES (con_id.NEXTVAL,1,2);
 
 -------------js_saved_job table-------------
drop SEQUENCE save_id;

CREATE SEQUENCE save_id INCREMENT BY 1;

drop table js_saved_job;

CREATE TABLE js_saved_job (
    save_id number(38) not null PRIMARY KEY,
  js_user_id number(38) NOT NULL,
  job_id 	 number(38) NOT NULL,
  CONSTRAINT FK_savej_js FOREIGN KEY(js_user_id) REFERENCES js_master(js_user_id) on delete cascade,
  CONSTRAINT FK_savej_job FOREIGN KEY(job_id) REFERENCES jp_job(job_id) on delete cascade

);

select * from js_saved_job; 

INSERT INTO  js_saved_job (save_id,js_user_id,job_id)
VALUES (save_id.NEXTVAL,1,1);

INSERT INTO  js_saved_job (save_id,js_user_id,job_id)
VALUES (save_id.NEXTVAL,1,2);

------------------js_applied_job ---------------------------------
drop SEQUENCE apply_id;

CREATE SEQUENCE apply_id INCREMENT BY 1;

drop table js_applied_job;

CREATE TABLE js_applied_job (
  apply_id number(38) not null primary key,
  js_user_id number(38) NOT NULL,
  job_id 	 number(38) NOT NULL,
  
  CONSTRAINT FK_save1j_js FOREIGN KEY(js_user_id) REFERENCES js_master(js_user_id) on delete cascade,
  CONSTRAINT FK_save2j_job FOREIGN KEY(job_id) REFERENCES jp_job(job_id) on delete cascade
  
);

SELECT * FROM JS_APPLIED_JOB;

INSERT INTO  JS_APPLIED_JOB (APPLY_ID,js_user_id,job_id)
VALUES (apply_id.NEXTVAL,1,1);

INSERT INTO  JS_APPLIED_JOB (APPLY_ID,js_user_id,job_id)
VALUES (apply_id.NEXTVAL,1,2);


-------------js_referred_job table-------------
drop SEQUENCE referred_id;

CREATE SEQUENCE referred_id INCREMENT BY 1;

drop table js_referred_job;

CREATE TABLE js_referred_job (
    referred_id number(38) not null primary key,
  src_user_id 			number(38) NOT NULL,
  dest_user_id 			number(38) NOT NULL,
  job_id 			number(38)	NOT NULL,
  CONSTRAINT FK_refej_src_master FOREIGN KEY(src_user_id) REFERENCES js_master(js_user_id) on delete cascade ,
  CONSTRAINT FK_refej_dest_master FOREIGN KEY(dest_user_id) REFERENCES js_master(js_user_id) on delete cascade ,
  CONSTRAINT FK_refej_job FOREIGN KEY(job_id) REFERENCES jp_job(job_id) on delete cascade
  --PRIMARY KEY (js_user_id,job_id)
);
	
    
select * from js_referred_job;

INSERT INTO  js_referred_job (referred_id,src_user_id,dest_user_id,job_id)
VALUES (referred_id.NEXTVAL,1,2,1);

INSERT INTO  js_referred_job (referred_id,src_user_id,dest_user_id,job_id)
VALUES (referred_id.NEXTVAL,2,1,2);

-------------js_approved_job table-------------          
drop SEQUENCE approve_id;

CREATE SEQUENCE approve_id INCREMENT BY 1;

drop table js_approved_job;

CREATE TABLE js_approved_job (
        approve_id number(38) not null PRIMARY KEY,
  js_user_id 	int NOT NULL ,
  job_id 		int	NOT NULL,
  CONSTRAINT FK_approvej_js FOREIGN KEY(js_user_id) REFERENCES js_master(js_user_id) on delete cascade,
  CONSTRAINT FK_approvej_job FOREIGN KEY(job_id) REFERENCES jp_job(job_id) on delete cascade

);


select * from js_approved_job;

INSERT INTO  js_approved_job (APPROVE_ID,js_user_id,job_id)
VALUES (APPROVE_ID.NEXTVAL,1,1);

INSERT INTO  js_approved_job (APPROVE_ID,js_user_id,job_id)
VALUES (APPROVE_ID.NEXTVAL,1,2);


rollback;