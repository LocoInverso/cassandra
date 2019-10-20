--1--------------------------------------------------------------
INSERT INTO lab1."Student" (s_search_tag, student_spec, student_id, search_data, s_search_time)
 VALUES ('Математичний аналіз', 113, 11304442,
 	{0: {s_search_date: '2019-09-25 19:30:00', s_search_info: 'матан'}}, '2019-09-15 15:01:53'
);

SELECT search_data FROM lab1."Student";
 
UPDATE lab1."Student" SET search_data = search_data + {1:{s_search_date: toTimestamp(now()), s_search_info: 'програмування'}}
where s_search_tag = 'Математичний аналіз' and s_search_time = '2019-09-25 19:30:00' and student_id = 11304442 and student_spec = 113;
SELECT search_data FROM lab1."Student";
 
 
DELETE search_data FROM lab1."Student" 
where s_search_tag = 'Математичний аналіз' and s_search_time = '2019-09-25 19:30:00' and student_id = 11304442 and student_spec = 113;

SELECT search_data FROM lab1."Student";

--2--------------------------------------------------------------
INSERT INTO lab1."Discipline" (d_search_tag, discipline_spec_id, d_search_time, discipline_name, discipline_data, discipline_search_results)
VALUES ('Прогрaмування', 113, '2019-09-25 19:31:53', 'Програмування на мові С', {{'2019-09-25 19:31:53':{'Лекція 1':{'html11', 'html22'}}},{'2019-10-27 17:34:01':{'Практика 1':{'html1', 'html2'}}}}, {{d_search_date:'2019-10-05 22:33:54',d_search_info: 'прога'}});

SELECT discipline_data FROM lab1."Discipline" 
WHERE d_search_tag = 'Прогрaмування' allow filtering;
 
UPDATE lab1."Discipline" SET discipline_data = discipline_data + {{toTimestamp(now()):{'Лекція 2':{'html1', 'text'}}}}
WHERE d_search_tag = 'Прогрaмування' and discipline_spec_id = 113 and d_search_time = '2019-09-29 23:04:54';

SELECT discipline_data FROM lab1."Discipline"
WHERE d_search_tag = 'Прогрaмування' and discipline_spec_id = 113 and d_search_time = '2019-09-29 23:04:54';

DELETE discipline_data FROM lab1."Discipline"
WHERE d_search_tag = 'Прогрaмування' and discipline_spec_id = 113 and d_search_time = '2019-09-29 23:04:54';

--3--------------------------------------------------------------
INSERT INTO lab1."Discipline" (d_search_tag, discipline_spec_id, d_search_time, discipline_name, discipline_data)
VALUES ('Теорія ймовірностей', 113, '2019-09-27 16:45:43', 'Теорія ймовірностей', {{'2019-09-27 16:45:43':{'Курс1':{'Розділ 1', 'html'}}}});

SELECT discipline_data FROM lab1."Discipline" 
where d_search_tag = 'Теорія ймовірностей' and discipline_spec_id = 113;
 
UPDATE lab1."Discipline" SET discipline_data = discipline_data + {{'2018-10-09 09:29:00':{'Курс1':{'Розділ 2', 'html'}}}}
where d_search_tag = 'Теорія ймовірностей' and discipline_spec_id = 113 and d_search_time = '2019-10-09 09:29:00';
 
SELECT discipline_data FROM lab1."Discipline"
where d_search_tag = 'Теорія ймовірностей' and discipline_spec_id = 113 and d_search_time = '2019-10-09 09:29:00';

DELETE discipline_data FROM lab1."Discipline"
where d_search_tag = 'Теорія ймовірностей' and discipline_spec_id = 113 and d_search_time = '2019-10-09 09:29:00';

--4 запити--------------------------------------------------------	
SELECT discipline_name FROM lab1."Discipline" 
WHERE d_search_tag = 'Прогрaмування' and discipline_spec_id = 113 and d_search_time > '2019-09-07 00:00:00' and d_search_time < '2019-10-29 00:00:00';

SELECT count(student_id) FROM lab1."Student"
where s_search_tag = 'Математичний аналіз' and s_search_time > '2019-09-07 00:00:00' and s_search_time < '2019-10-29 00:00:00' allow filtering;

select count(*) from lab1."Student"
where s_search_tag = 'Програмування' and student_spec = 113 and student_id = 88372745 and s_search_time > '2019-09-01 00:00:00' and s_search_time < '2019-11-29 00:00:00' allow filtering;

SELECT count(*) FROM lab1."Discipline" 
WHERE d_search_tag = 'Прогрaмування' and discipline_spec_id = 113 and d_search_time > '2019-09-07 00:00:00' and d_search_time < '2019-10-29 00:00:00';

  
