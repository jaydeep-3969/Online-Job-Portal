INSERT INTO credential (user_id,username,password,seq_que,ans,role_id)
VALUES (user_id.NEXTVAL,'username1','password1','question1','answer1',1);
 
INSERT INTO credential (user_id,username,password,seq_que,ans,role_id)
VALUES (user_id.NEXTVAL,'username2','password2','question2','answer2',2);
	
 -----------------------------------------------------------------------------------------------------------
 
INSERT INTO role (role_id,role_type)
VALUES (role_id.NEXTVAL,'job_seeker');
 
INSERT INTO role (role_id,role_type)
VALUES (role_id.NEXTVAL,'job_provider');
 
 -----------------------------------------------------------------------------------------------------------
 
INSERT INTO js_master (js_user_id,fname,mname,lname,profile_photo_url,mobile_no,email,gender,city,state,pincode,street,landmark,is_fresher,date_of_birth,age)
VALUES (1,'Jaydeep','V','Patel','/project/proPics,1.jpeg',9832453322,'mymail23@gmail.com',0,'Surat','Gujarat',395010,'54/Bhumipark Society','Punagam','14-JUN-1998');
 
UPDATE js_master SET age = trunc(months_between(sysdate,date_of_birth) / 12) WHERE js_user_id = 1;
 
INSERT INTO js_master (js_user_id,fname,mname,lname,profile_photo_url,mobile_no,email,gender,city,state,pincode,street,landmark,is_fresher,date_of_birth,age)
VALUES (1,'Abhishek','R','Patel','/project/proPics,2.jpeg',9832343322,'abhimail23@gmail.com',0,'Vadodara','Gujarat',395310,'54/Sunrise Society','Padar Road','15-JUL-1999');
 
UPDATE js_master SET age = trunc(months_between(sysdate,date_of_birth) / 12) WHERE js_user_id = 2;
 
 -----------------------------------------------------------------------------------------------------------

INSERT INTO  connection (con_id,src_user_id,des_user_id)
VALUES (con_id.NEXTVAL,1,2);
 
INSERT INTO  connection (con_id,src_user_id,des_user_id)
VALUES (con_id.NEXTVAL,2,3); 
 -----------------------------------------------------------------------------------------------------------
  
INSERT INTO  request (req_id,src_user_id,dest_user_id,)
VALUES (req_id.NEXTVAL,1,2);

INSERT INTO  request (req_id,src_user_id,dest_user_id,)
VALUES (req_id.NEXTVAL,2,3);

 -----------------------------------------------------------------------------------------------------------

INSERT INTO  not_type (type_id,type_nm)
VALUES (type_id.NEXTVAL,'Accept');

 -----------------------------------------------------------------------------------------------------------
 
INSERT INTO  js_notification (not_id,type_id,is_open,time_stamp,js_user_id)
VALUES (not_id.NEXTVAL,1,0,to_char(sysdate,'dd-mm-yyyy'),1);

INSERT INTO  js_notification (not_id,type_id,is_open,time_stamp,js_user_id)
VALUES (not_id.NEXTVAL,1,0,to_char(sysdate,'dd-mm-yyyy'),2);

 -----------------------------------------------------------------------------------------------------------
 
INSERT INTO  accept_not (not_id,type_id)
VALUES (1,2);

INSERT INTO  accept_not (not_id,type_id)
VALUES (2,1);

 -----------------------------------------------------------------------------------------------------------
 
INSERT INTO js_preference (pref_id,js_user_id,industry1,industry2,industry3,location1,location2,location3,designation1,designation2,designation3,min_salary,max_salary,startup,min_sizein_emp)
VALUES  (pref_id.NEXTVAL,1,'IT',NULL,NULL,'DEVELOPER',NULL,NULL,25000,40000,0,35000);

INSERT INTO js_preference (pref_id,js_user_id,industry1,industry2,industry3,location1,location2,location3,designation1,designation2,designation3,min_salary,max_salary,startup,min_sizein_emp)
VALUES  (pref_id.NEXTVAL,2,'Petrolium',NULL,NULL,'INSTRUCTIONM MANAGER',NULL,NULL,22000,40000,0,35000);
 
 -----------------------------------------------------------------------------------------------------------

INSERT INTO  js_academic (academic_id,institute_name,degree,is_percentage,mark,pr,branch,passing_year,js_user_id)
VALUES (academic_id.NEXTVAL,'Institue1','Degree1',1,95,99,'Branch1',2017,1);


INSERT INTO  js_academic (academic_id,institute_name,degree,is_percentage,mark,pr,branch,passing_year,js_user_id)
VALUES (academic_id.NEXTVAL,'Institue2','Degree2',0,9,98.77,'Branch1',2013,2);

 -----------------------------------------------------------------------------------------------------------
 
INSERT INTO  js_skill (skill _id,skill,js_user_id)
VALUES (skill_id.NEXTVAL,'C++',1);

INSERT INTO  js_skill (skill _id,skill,js_user_id)
VALUES (skill_id.NEXTVAL,'Java',2);

 -----------------------------------------------------------------------------------------------------------
 
INSERT INTO  js_experience (exp_id,institute_name,designation,is_working,from,to,achievement,js_user_id)
VALUES (exp_id.NEXTVAL,'Company1','Product Manager',0,'31-MAR-2006','13-MAR-2010',NULL,1);

UPDATE js_experience SET year_exp = trunc(months_between(to,from) / 12) WHERE exp_id == 1;

INSERT INTO  js_experience (exp_id,institute_name,designation,is_working,from,to,achievement,js_user_id)
VALUES (exp_id.NEXTVAL,'Company2','Manager',1,'31-MAR-2007',NULL,NULL,2);

UPDATE js_experience SET year_exp = trunc(months_between(to,from) / 12) WHERE exp_id == 2;

 -----------------------------------------------------------------------------------------------------------
 
INSERT INTO  js_project (project_id,title,description,team_size,role,duration,js_user_id)
VALUES (project_id.NEXTVAL,'ONLINE JOB PORTAL','online platform for job',3,NULL,'5 months',1);

INSERT INTO  js_project (project_id,title,description,team_size,role,duration,js_user_id)
VALUES (project_id.NEXTVAL,'HOTEL MANAGEMENT SYSTEM','online hotel management',1,NULL,'1 year',2);

 -----------------------------------------------------------------------------------------------------------
 
INSERT INTO  js_achieve (achieve_id,achieved,js_user_id)
VALUES (achieve_id.NEXTVAL,'Best Award',1);

INSERT INTO  js_achieve (achieve_id,achieved,js_user_id)
VALUES (achieve_id.NEXTVAL,'Best Award',2);

 -----------------------------------------------------------------------------------------------------------
 
INSERT INTO  js_activity (activity_id,activity,js_user_id)
VALUES (activity_id.NEXTVAL,'SOCIAL SERVICES',1);

INSERT INTO  js_activity (activity_id,activity,js_user_id)
VALUES (activity_id.NEXTVAL,'Football Champion National Level',2);

 ----------------------------------------------------------------------------------------------------------- 

INSERT INTO  js_reference (ref_id,name,designation,institute_name,mobile_no,email,js_user_id)
VALUES (ref_id.NEXTVAL,'ABC','Teacher','XYZ','9876543210','abc123@yahoo.com',1);

INSERT INTO  js_reference (ref_id,name,designation,institute_name,mobile_no,email,js_user_id)
VALUES (ref_id.NEXTVAL,'MNL','Product Manager','EFG','9376543311','mnl123@gmail.com',2);

 -----------------------------------------------------------------------------------------------------------
 
INSERT INTO  js_referred (con_id,job_id,referred_by_id)
VALUES (1,1,1);

INSERT INTO  js_referred (con_id,job_id,referred_by_id)
VALUES (2,2,2);

 -----------------------------------------------------------------------------------------------------------
 
INSERT INTO  js_applied_job (js_user_id,job_id)
VALUES (1,2);

INSERT INTO  js_applied_job (js_user_id,job_id)
VALUES (2,1);

 -----------------------------------------------------------------------------------------------------------

INSERT INTO  js_saved_job (js_user_id,job_id)
VALUES (1,2);

INSERT INTO  js_saved_job (js_user_id,job_id)
VALUES (2,1);

 -----------------------------------------------------------------------------------------------------------
 
INSERT INTO  js_approved_job (js_user_id,job_id)
VALUES (1,2);

INSERT INTO  js_approved_job (js_user_id,job_id)
VALUES (2,1);

 -----------------------------------------------------------------------------------------------------------

 -----------------------------------------------------------------------------------------------------------
 
INSERT INTO  jp_master (jp_user_id,profile_photo_url,company_name,industry,size_in_emp,description,website_url,about,founded_on_year,street,landmark,city,state,pincode,contact_person,mobile_no,email)
VALUES (3,'/project/proPics/3.jpeg','ABC PVT. LTD','Petrolium',35000,NULL,'www.abc.com',NULL,2000,'35/Gujarat Industrial','VIP Circle','Surat','Gujarat',345673,'Rajat',9856238756,'rajat45@yahoo.com');

INSERT INTO  jp_master (jp_user_id,profile_photo_url,company_name,industry,size_in_emp,description,website_url,about,founded_on_year,street,landmark,city,state,pincode,contact_person,mobile_no,email)
VALUES (4,'/project/proPics/4.jpg','XYZ PVT. LTD','IT',32451,NULL,'www.XYZ.com',NULL,2001,'35/Silicon Valley Park','FB Circle','Surat','Gujarat',345573,'Akash',9556238756,'akki45@yahoo.com');

 -----------------------------------------------------------------------------------------------------------
 
INSERT INTO  jp_job (job_id,designation,job_descr,vacancy,age_min,age_max,salary_avg,exp_year,jp_user_id,post_date,due_date,venue_desc,Field)
VALUES (job_id.NEXTVAL,'Product Manager','Vacancy for product manager',4,24,34,NULL,4,to_char(sysdate,'dd-mm-yyyy'),'31-APR-2018','HQ Address');

INSERT INTO  jp_job (job_id,designation,job_descr,vacancy,age_min,age_max,salary_avg,exp_year,jp_user_id,post_date,due_date,venue_desc)
VALUES (job_id.NEXTVAL,'Project Manager','Vacancy for project manager',4,25,30,NULL,5,to_char(sysdate,'dd-mm-yyyy'),'31-MAR-2018','HQ Address1');

 -----------------------------------------------------------------------------------------------------------