create table users(id int primary key, json text);
insert into users values(1, '{"age":10, "name":"yamada", "class":"A"}');
insert into users values(2, '{"age":22, "name":"suzuki", "class":"A"}');
insert into users values(3, '{"age":34, "name":"tanaka", "class":"B"}');
select json_extract(json, '$.name') from users;
