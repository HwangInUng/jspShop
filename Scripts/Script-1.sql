create table member(
	member_idx int primary key auto_increment
	, member_id varchar(30)
	, member_pass varchar(30)
	, member_name varchar(30)
	, email varchar(50)
	, addr1 varchar(100)
	, addr2 varchar(50)
) default character set utf8;