--1--------------------------------------------------------------
INSERT INTO lab1."Student" (student_spec, student_course, student_group, student, student_id, student_search_history)
 VALUES ('PMA', 4, 'KM-62',
 	{student_firtname: 'Ãðèãîð³é',
 		student_lastname: 'Äìèòðåíêî',
 		 student_email:'dmytrenko@gmail.com',
 		  student_phone:'0660938293',
 		   student_password: 'fvesavevesdv'
 	},
 	4356,
 	 {'ìàòàí', 'ïðîãà'}
);

SELECT student_search_history FROM lab1."Student";
 
UPDATE lab1."Student" SET student_search_history = student_search_history + {'áàçû äàííûõ', 'îîï'}
where student_spec = 'PMA' and student_course = 4 and student_group = 'KM-62' and student_id = 4356;
SELECT student_search_history FROM lab1."Student";
 
 
DELETE student_search_history FROM lab1."Student" 
where student_spec = 'PMA' and student_course = 4 and student_group = 'KM-62' and student_id = 4356;
 
SELECT student_search_history FROM lab1."Student";

--2--------------------------------------------------------------
INSERT INTO lab1."Search" (search_id, search_tag, search_data)
VALUES (103242245, ['àíàëèç äàííûõ', '6 ñåìåñòð'], {'êîððåëÿöèîííûé àíàëèç': '2019-09-25 19:30:00'});
 
SELECT search_data FROM lab1."Search";
 
UPDATE lab1."Search" SET search_data = search_data + {'äèñïåðñèîííûé àíàëèç':'2019-09-25 19:31:53'}
WHERE search_id = 103242245;
 
SELECT search_data FROM lab1."Search";

DELETE search_data FROM lab1."Search"
WHERE search_id = 103242245;

--3--------------------------------------------------------------
INSERT INTO lab1."Discipline" (discipline_id, discipline_spec, discipline_tag, discipline_date_update, discipline_data)
VALUES (113, 'Data base', ['data', 'db', 'SQL'], '2015-04-23 15:43:34', {'http:\\amis.fpm.kpi.ua', 'text'});

SELECT discipline_spec FROM lab1."Discipline";

UPDATE lab1."Discipline" SET discipline_spec = 'Database course' WHERE discipline_id = 113;

SELECT discipline_spec FROM lab1."Discipline";

DELETE discipline_spec FROM lab1."Discipline" WHERE discipline_id = 113;

SELECT discipline_spec FROM lab1."Discipline";

  
