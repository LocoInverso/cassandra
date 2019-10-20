CREATE KEYSPACE IF NOT EXISTS lab1
WITH replication = {
	'class' : 'SimpleStrategy',
	'replication_factor' : 2
};

--CREATE TYPE lab1.student_info (
--	student_firstname text,
--	student_lastname text,
--	student_patronym text,
--	student_email text,
--	student_phone text,
--	student_password text	
--);

CREATE TYPE lab1.search_data (
	s_search_date timestamp,
	s_search_info text
);

CREATE TYPE lab1.discipline_search_results (
	d_search_date timestamp,
	d_search_info text
);

--CREATE TYPE lab1.discipline_data (
--	date_added timestamp,
--	date_updated timestamp,
--	data set<text>
--);

CREATE TABLE IF NOT EXISTS lab1."Student" (
	s_search_tag text,
	s_search_time timestamp,
	student_spec int,
	student_id int,
	search_data map<int,frozen<search_data>>,
	PRIMARY KEY ((s_search_tag, student_spec, student_id), s_search_time)
);

CREATE TABLE IF NOT EXISTS lab1."Discipline" (
	d_search_tag text,
	d_search_time timestamp,
	discipline_spec_id int,
	discipline_name text,
	discipline_data set<frozen<map<timestamp,frozen<map<text,set<text>>>>>>,
	discipline_search_results set<frozen<discipline_search_results>>,
	PRIMARY KEY ((d_search_tag, discipline_spec_id), d_search_time) 
);
