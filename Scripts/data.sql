use bank;

#insert문
insert into department values
(1,'인사'),
(2,'고객');

insert into employee values
('A001','나인사','부장','HR',6000000,'010-2222-2222','HRid1',password('testforHD1'),1),
('A002','정아름','차장','HR',5000000,'010-2222-2222','HRid2',password('testforHD1'),1),
('A003','이상원','과장','HR',4000000,'010-2222-2222','HRid3',password('testforHD1'),1),
-- 고객팀
('B001','나지점','지점장','AD',10000000,'010-1234-1234','ADid',password('testforAD'),2),
('B002','장현서','부지점장','CS',8000000,'010-4444-7767','CSid1',password('testforCS1'),2),
('B003','박인선','부장','CS',6000000,'010-2992-2222','CSid2',password('testforCS2'),2),
('B004','황하나','차장','CS',5000000,'010-2222-1111','CSid3',password('testforCS3'),2),
('B005','현재승','과장','CS',4000000,'010-2282-4848','CSid4',password('testforCS4'),2),
('B006','황태원','대리','CS',3000000,'010-2902-5959','CSid5',password('testforCS5'),2),
('B007','나고객','사원','CS',2000000,'010-2212-7766','CSid6',password('testforCS6'),2);
insert into employee values ('B008','테스트','지점장','AD',10000000,'010-1234-1234','111',password('111'),2);

insert into customer values("C001", "김가나", "D", 1, "서울시 강남구", "123-1234-1234");
insert into customer values("C002", "김다라", "P", 2, "서울시 마포구", "234-4578-5434"),
						   ("C003", "김마바", "G", 3, "대구시 서구", "456-4567-4578"),
						   ("C004", "김사아", "S", 4, "대구시 수성구", "123-4567-7894"),
						   ("C005", "김자차", "B", 5, "대구시 달서구", "124-6325-5788");
						   
insert into plan values("A001", "AA001", "슈퍼정기예금", "가입자 맞춤형 다기능 정기예금", "V"),
					   ("A002", "AB001", "직장인 우대 적금", "직장인의 재테크 적금", "N"),
					   ("A003", "AC001", "내집마련 통장", "목돈 마련을 위한 마이너스 통장", "N"),
					   ("B001", "BA001", "Easy 적립 카드", "포인트 적립을 위한 체크카드", "N"),
					   ("B002", "BB001", "올쇼핑 카드", "쇼핑을 위한 신용카드", "N"),
					   ("C001", "CA001", "행복 대출", "소득 입증 고객을 위한 대출", "N"),
					   ("C002", "CB001", "직장인 신용 대출", "정규직 공무원을 위한 신용대출", "N"),
					   ("C003", "CC001", "생활안정 대출", "생활비를 위한 카드론", "N");

insert into plan values("A004", "AA002", "일반정기예금", "일반 정기예금", "N");

insert into bankbook values 
('293133-11-000001','C001','A001',"2020-02-05 09:00:00",0.10,5000000),
('293133-12-000002','C001','A002',"2020-02-05 09:00:00",0.05,0),
('293133-13-000003','C001','A003',"2020-02-05 09:00:00",0.03,50000000),
('293133-11-000004','C002','A004',"2020-02-05 09:00:00",0.05,5000000),
('293133-12-000005','C002','A002',"2020-02-05 09:00:00",0.05,0),
('293133-13-000006','C002','A003',"2020-02-05 09:00:00",0.03,50000000),
('293133-11-000007','C003','A004',"2020-02-05 09:00:00",0.05,5000000),
('293133-12-000008','C003','A002',"2020-02-05 09:00:00",0.05,0),
('293133-13-000009','C003','A003',"2020-02-05 09:00:00",0.03,50000000),
('293133-11-000010','C004','A004',"2020-02-05 09:00:00",0.05,5000000),
('293133-12-000011','C004','A002',"2020-02-05 09:00:00",0.05,0),
('293133-13-000012','C004','A003',"2020-02-05 09:00:00",0.03,50000000),
('293133-11-000013','C005','A004',"2020-02-05 09:00:00",0.05,5000000),
('293133-12-000014','C005','A002',"2020-02-05 09:00:00",0.05,0),
('293133-13-000015','C005','A003',"2020-02-05 09:00:00",0.03,50000000);

insert into card values
('2931331000000010','C001','B001','111',"2020-02-05 09:00:00",null,null),
('2931332000000020','C001','B002','222',"2020-02-05 09:00:00",null,null),
('2931331000000030','C002','B001','333',"2020-02-05 09:00:00",null,null),
('2931332000000040','C002','B002','444',"2020-02-05 09:00:00",null,null),
('2931331000000050','C003','B001','555',"2020-02-05 09:00:00",null,null),
('2931332000000060','C003','B002','666',"2020-02-05 09:00:00",null,null),
('2931331000000070','C004','B001','777',"2020-02-05 09:00:00",null,null),
('2931332000000080','C004','B002','888',"2020-02-05 09:00:00",null,null),
('2931331000000090','C005','B001','999',"2020-02-05 09:00:00",null,null),
('2931332000000100','C005','B002','000',"2020-02-05 09:00:00",null,null);

insert into loan values
('293133-11-000001','C001','C001',"2020-02-05 09:00:00",0.01,100000000),
('293133-12-000002','C001','C002',"2020-02-05 09:00:00",0.02,100000000),
('293133-13-000003','C001','C003',"2020-02-05 09:00:00",0.03,100000000),
('293133-11-000004','C002','C001',"2020-02-05 09:00:00",0.02,100000000),
('293133-12-000005','C002','C002',"2020-02-05 09:00:00",0.03,100000000),
('293133-13-000006','C002','C003',"2020-02-05 09:00:00",0.04,100000000),
('293133-11-000007','C003','C001',"2020-02-05 09:00:00",0.03,100000000),
('293133-12-000008','C003','C002',"2020-02-05 09:00:00",0.04,100000000),
('293133-13-000009','C003','C003',"2020-02-05 09:00:00",0.08,100000000),
('293133-11-000010','C004','C001',"2020-02-05 09:00:00",0.04,100000000),
('293133-12-000011','C004','C002',"2020-02-05 09:00:00",0.05,100000000),
('293133-13-000012','C004','C003',"2020-02-05 09:00:00",0.16,100000000),
('293133-11-000013','C005','C001',"2020-02-05 09:00:00",0.05,100000000),
('293133-12-000014','C005','C002',"2020-02-05 09:00:00",0.06,100000000),
('293133-13-000015','C005','C003',"2020-02-05 09:00:00",0.32,100000000);

insert into performance values
('A001','B003','C001'),
('A002','B004','C001'),('A002','B004','C002'),('A002','B004','C003'),('A002','B004','C004'),('A002','B004','C005'),
('A003','B004','C001'),('A003','B004','C002'),('A003','B004','C003'),('A003','B004','C004'),('A003','B004','C005'),
('A004','B005','C001'),('A004','B005','C002'),('A004','B005','C003'),('A004','B005','C004'),('A004','B005','C005'),
('B001','B005','C001'),('B001','B005','C002'),('B001','B005','C003'),('B001','B005','C004'),('B001','B005','C005'),
('B002','B006','C001'),('B002','B006','C002'),('B002','B006','C003'),('B002','B006','C004'),('B002','B006','C005'),
('C001','B006','C001'),('C001','B006','C002'),('C001','B006','C003'),('C001','B006','C004'),('C001','B006','C005'),
('C002','B007','C001'),('C002','B007','C002'),('C002','B007','C003'),('C002','B007','C004'),('C002','B007','C005'),
('C003','B007','C001'),('C003','B007','C002'),('C003','B007','C003'),('C003','B007','C004'),('C003','B007','C005');


#statistic table 생성
drop view if exists vipTable;  
create view vipTable as select custCode as vip from customer c where `custRank`="D";

create table deleted_employee (
 empCode char(4),
 empName varchar(5),
 empTitle varchar(20),
 empTel char(13),
 empId varchar(12),
 deptNo int
);

create table cust_DW_audit(
	dw varchar(5),
	custName varchar(5) not null,
	accountNum char(16) not null,
	amount int(20) not null,
	accountBalance bigint(20) not null,
	accountDate datetime not null
);

create table cardInfo(
	custname varchar(5),
	transDate datetime
);

#statistic trigger 및 procedure
drop procedure if exists proc_total_avg;
delimiter $
  create procedure proc_total_avg()
    begin 
	    declare empSalary1 int default 0;
	    declare empCnt int default -1;
	    declare empTotalSalary int default 0;
	    declare endOfRow boolean default false;
	    
	   declare salaryCursor cursor for
	      select empSalary from bank.employee;
	     
	     declare continue handler for not found set endOfRow = true;
	    
	    open salaryCursor;
	   
	   while(!endOfRow) do 
	     set empCnt = empCnt +1;
	     set empTotalSalary = empTotalSalary + empSalary1;
	     fetch salaryCursor into empSalary1;
	   end while;
	  
	  select concat('모든사원의 총 급여-->',empTotalSalary) as total,concat('모든사원의 평균 급여-->',empTotalSalary/empSalary1) as average;
	  
	 close salaryCursor;
    end $
delimiter ;

drop trigger if exists vip_trigger;
delimiter $
 create trigger vip_trigger
 after insert on customer
 for each row 
 
 begin 
	 insert into viptable values(new.custCode);
 end $
delimiter ;

drop trigger if exists deleted_emp_trigger;
delimiter $
 create trigger deleted_employee
 before delete on employee
 for each row 
 
 begin 
	 insert into deleted_employee values(old.empCode, old.empName, old.empTitle, old.empTel, old.empId, old.deptNo);
 end $
delimiter ;

drop trigger if exists tri_after_update_BankBook;
delimiter $$
create trigger tri_after_update_BankBook
   before update on BankBook
   for each row 
   begin
	  if(old.accountBalance < new.accountBalance) then
     	 insert into cust_DW_audit values
      		("입금", 
      		(select custName from customer where custCode = new.custCode), 
      		new.accountNum,
      		(new.accountBalance - old.accountBalance),
      		new.accountBalance,
      		Now()
      		);
      else
     	 insert into cust_DW_audit values
      		("출금", 
      		(select custName from customer where custCode = new.custCode), 
      		new.accountNum,
      		(old.accountBalance - new.accountBalance),
      		new.accountBalance,
      		Now()
      		);
      end if;
   end $$
delimiter ;

drop trigger if exists tri_update_card;
delimiter $
create trigger tri_update_card
before update on card
for each row 
begin 
	insert into cardinfo values((select custname from customer where custcode = new.custcode),now());
end $
delimiter ;