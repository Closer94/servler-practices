-- user

desc user;

-- insert
insert into user
values(null, '관리자', 'admin@mysite.com', '1234', 'male', now());

-- select
select no, name
from user
where email='admin@mysite.com' and password='1234';