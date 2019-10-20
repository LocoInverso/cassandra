from cassandra.cluster import Cluster

cluster = Cluster()
connection = cluster.connect('lab1')

batch = """
BEGIN BATCH
INSERT INTO lab1."Student" (
s_search_tag,
student_spec,
student_id,
search_data,
s_search_time
)
 VALUES (
 'Математичний аналіз',
 113,
 11304442,
 	{0: {s_search_date: '2019-09-25 19:30:00', s_search_info: 'матан'}}, '2019-09-15 15:01:53'
);

INSERT INTO lab1."Discipline" (
d_search_tag,
discipline_spec_id,
d_search_time,
discipline_name,
discipline_data,
discipline_search_results
)
VALUES
('Прогрaмування',
113,
'2019-09-25 19:31:53',
'Програмування на мові С',
{{'2019-09-25 19:31:53':{'Лекція 1':{'html11', 'html22'}}},{'2019-10-27 17:34:01':{'Практика 1':{'html1', 'html2'}}}}, {{d_search_date:'2019-10-05 22:33:54',d_search_info: 'прога'}}
);
APPLY BATCH;
"""
connection.execute(batch)
