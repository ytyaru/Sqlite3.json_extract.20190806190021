create table users(id int primary key, json text);
insert into users values(1, '{"node1": {"node2": ["A", "B"]}}');
insert into users values(2, '{"node1": {"node2": ["A", "C"]}}');
insert into users values(3, '{"node1": {"node2": []}}');
select json_extract(json, '$.node1.node2[0]') from users;
