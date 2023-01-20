create table category(
	category_idx int primary key auto_increment
	, category_name varchar(30)
) default character set utf8;

create table product(
	product_idx int primary key auto_increment
	, category_idx int
	, product_name varchar(30)
	, brand varchar(100)
	, price int default 0
	, discount int default 0
	, detail text
	, constraint fk_category_product foreign key (category_idx) references category(category_idx)
)default character set utf8;

create table pimg(
	pimg_idx int primary key auto_increment
	, product_idx int
	, filename varchar(30)
	, constraint fk_product_pimg foreign key (product_idx) references product(product_idx)
)default character set utf8;

create table color(
	color_idx int primary key auto_increment
	, product_idx int
	, color_name varchar(20)
	, constraint fk_product_color foreign key (product_idx) references product(product_idx)
)default character set utf8;

create table psize(
	psize_idx int primary key auto_increment
	, product_idx int
	, psize_name varchar(20)
	, constraint fk_product_psize foreign key (product_idx) references product(product_idx)
)default character set utf8;


create table review(
	review_idx int primary key auto_increment
	, product_idx int
	, writer varchar(30)
	, regdate timestamp default now()
	, content text
	, score int default 0
	, constraint fk_product_review foreign key (product_idx) references product(product_idx)
)default character set utf8;

drop table psize;