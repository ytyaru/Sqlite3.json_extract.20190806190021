create table users(id int primary key, json text);
insert into users values(1, '{"node1": {"node2": {"node3": {"name": "A"}}}}');
insert into users values(2, '{"node1": {"node2": {"node3": {"name": "B"}}}}');
insert into users values(3, '{"node1": {"node2": {"node3": {"name": "C"}}}}');
select json_extract(json, '$.node1.node2.node3.name') from users;
