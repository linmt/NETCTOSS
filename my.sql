create table cost(
  cost_id 		number(4) primary key,
  name 			varchar(50)  not null,
  base_duration number(11),
  base_cost 	number(7,2),
  unit_cost 	number(7,4),
  status 		char(1),
  descr 		varchar2(100),
  creatime 		date default sysdate,
  startime 		date,
  cost_type     char(1)
);

create sequence cost_seq start with 100;

insert into cost values (1,'5.9元套餐',20,5.9,0.4,0,'5.9元20小时/月,超出部分0.4元/时',default,default,null);
insert into cost values (2,'6.9元套餐',40,6.9,0.3,0,'6.9元40小时/月,超出部分0.3元/时',default,default,null);
insert into cost values (3,'8.5元套餐',100,8.5,0.2,0,'8.5元100小时/月,超出部分0.2元/时',default,default,null);
insert into cost values (4,'10.5元套餐',200,10.5,0.1,0,'10.5元200小时/月,超出部分0.1元/时',default,default,null);
insert into cost values (5,'计时收费',null,null,0.5,0,'0.5元/时,不使用不收费',default,default,null);
insert into cost values (6,'包月',null,20,null,0,'每月20元,不限制使用时间',default,default,null);

commit;