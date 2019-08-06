create table users(id int primary key, json text);
insert into users values(1, '[[1,2],["A","B"]]');
insert into users values(2, '[[3],["C"]]');
insert into users values(3, '[]');
select json_extract(json, '$[1][0]') from users;
