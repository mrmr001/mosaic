
drop table memo;
drop table name_se;
CREATE TABLE name_se (
				memo_id 	char(10 char),
				memo_name	char(5  char),
constraint pk_name_se primary key (memo_id)
				);
CREATE TABLE memo (
				memo_id 	char(10 char),
				memo_no		number(10),
				memo_x 		number(5),
				memo_y 		number(5),
				content 	long,
				memo_date	date,
constraint fk_name_se foreign key (memo_id) references name_se(memo_id) 
				);
				select * from memo;
				select * from memo;
				select * from name_se;
				
				 insert into name_se values('aaaa', 'hhh');
				 insert into name_se values('bbbb', 'ggg');
				 insert into name_se values('cccc', 'jjj');
				 insert into name_se values('dddd', 'kkk');
				 insert into name_se values('eeee', 'lll');
				 
				  insert into memo values('aaaa', 10,2,3,'skdjfhksdhf',sysdate);
				  insert into memo values('aaaa', 10,2,3,'sdfsdf',sysdate);
				  insert into memo values('aaaa', 10,2,3,'234wes',sysdate);
					
				 insert into memo values('bbbb', 10,2,3,'skdjfhksdhf',sysdate);
				 insert into memo values('cccc', 2,2,3,'skdjfhksdhf',sysdate);
				 insert into memo values('cccc', 2,2,3,'sdf3zx',sysdate);
				 
				 insert into memo values('dddd', 1,2,3,'skdjfhksdhf',sysdate);
				 insert into memo values('eeee', 4,2,3,'skdjfhksdhf',sysdate);
		select * from memo;
		
		
		
			select 	m.*,n.*
			 from memo m left outer join name_se n
	    		on m.memo_id = n.memo_id;
	
		select count(*) from memo;
		
		create table xxx
		(
			id number,
			con long
		);
		insert into xxx values (1, 'xxxx');
		select * from xxx;
		
		
		
		
				 