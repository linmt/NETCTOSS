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

insert into cost values (1,'5.9Ԫ�ײ�',20,5.9,0.4,0,'5.9Ԫ20Сʱ/��,��������0.4Ԫ/ʱ',default,default,null);
insert into cost values (2,'6.9Ԫ�ײ�',40,6.9,0.3,0,'6.9Ԫ40Сʱ/��,��������0.3Ԫ/ʱ',default,default,null);
insert into cost values (3,'8.5Ԫ�ײ�',100,8.5,0.2,0,'8.5Ԫ100Сʱ/��,��������0.2Ԫ/ʱ',default,default,null);
insert into cost values (4,'10.5Ԫ�ײ�',200,10.5,0.1,0,'10.5Ԫ200Сʱ/��,��������0.1Ԫ/ʱ',default,default,null);
insert into cost values (5,'��ʱ�շ�',null,null,0.5,0,'0.5Ԫ/ʱ,��ʹ�ò��շ�',default,default,null);
insert into cost values (6,'����',null,20,null,0,'ÿ��20Ԫ,������ʹ��ʱ��',default,default,null);

commit;