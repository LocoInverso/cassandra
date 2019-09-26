CREATE KEYSPACE IF NOT EXISTS lab1
WITH replication = {
	'class' : 'SimpleStrategy',
	'replication_factor' : 4
};

CREATE TYPE lab1.student_info (
	student_firtname text,
	student_lastname text,
	student_email text,
	student_phone text,
	student_password text	
);

CREATE TABLE IF NOT EXISTS lab1."Student" (
	student_spec text,
	student_course int,
	student_group text,
	student FROZEN<student_info>,
	student_id int,
	student_search_history set<text>,
	PRIMARY KEY ((student_spec), student_course, student_group, student_id)	
);

CREATE TABLE IF NOT EXISTS lab1."Search" (
	search_id int,
	search_tag list<text>,
	search_data map<text, timestamp>,
	PRIMARY KEY (search_id)
);

CREATE TABLE IF NOT EXISTS lab1."Discipline" (
	discipline_id int,
	discipline_spec text,
	discipline_tag list<text>,
	discipline_date_update timestamp,
	discipline_data set<text>,
	PRIMARY KEY (discipline_id) 
);

CREATE TABLE IF NOT EXISTS lab1."Search_result" (
	id_result int,
	result_data set<text>,
	sililar_result list<text>,
	PRIMARY KEY (id_result) 
);



