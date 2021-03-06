use bank;
#사원 - 장현서


alter table employee add column pic LONGBLOB;
select * from employee e ;
select  * from performance p ;

delete from employee where empCode ="B022";
select * from customer;
delete from customer where custCode ="C030";

select * from deleted_employee de ;
delete from employee where empCode= 'B021';
>>>>>>> refs/heads/HS0326
update employee set emppwd = 111 where `empName` ='test';

select e.empCode, e.empName, e.empTitle, count(if(p.custCode=null,0,p.custCode)) as perf , if(count(if(p.custCode=null,0,p.custCode))>=10,e.`empSalary`*0.1,0) as bonus, if(pl.`planDiv` ='V',vip,null) as vip, d.deptName
			from employee e left join performance p on e.`empCode` = p.`empCode`  left join customer c on p.`custCode`=c.`custCode` left join viptable v on p.`custCode`= v.vip left join department d on e.`deptNo` = d.`deptNo` left join plan pl on pl.`planCode` = p.`planCode`
			where d.deptName ='고객' group by e.`empCode`;

select  empCode, empName, empTitle, empAuth, empSalary, empTel, empId, empPwd, d.deptName, d.deptNo  from employee e left join department d on e.deptNo = d.deptNo where d.deptName='인사';
select  empCode, empName, empTitle, empAuth, empSalary, empTel, empId, empPwd, d.deptName, d.deptNo from employee e left join department d on e.deptNo = d.deptNo  where empName like '%장%';
select e.empCode, e.empName, e.empTitle, count(if(p.custCode=null,0,p.custCode)) as perf , if(count(if(p.custCode=null,0,p.custCode))>=10,e.`empSalary`*0.1,0) as bonus, if(p.`planCode`='A001',vip,null) as vip 
		from employee e left join performance p on e.`empCode` = p.`empCode`  left join customer c on p.`custCode`=c.`custCode` left join viptable v on p.`custCode`= v.vip
				where e.empName like '%황%' group by e.`empCode`;
			
select e.empCode, e.empName, e.empTitle, count(if(p.custCode=null,0,p.custCode)) as perf , if(count(if(p.custCode=null,0,p.custCode))>=10,e.`empSalary`*0.1,0) as bonus, if(pl.`planDiv` ='V',vip,null) as vip, d.deptName 
		from employee e left join performance p on e.`empCode` = p.`empCode`  left join customer c on p.`custCode`=c.`custCode` left join viptable v on p.`custCode`= v.vip left join department d on e.`deptNo` = d.`deptNo` 
		left join plan pl on pl.`planCode` = p.`planCode` where d.deptName ='고객' group by e.`empCode`;			

select * from employee e2 ;
select * from employee where empcode = 'B020';
select  empCode, empName, empTitle, empAuth, empSalary, empTel, empId, empPwd, d.deptName, d.deptNo, pic 
from employee e left join department d on e.deptNo = d.deptNo
where empCode='B020';
select empCode, empName, empTitle, empAuth, empSalary, empTel, empId, empPwd, d.deptName, d.deptNo, pic from employee e left join department d on e.deptNo = d.deptNo where empCode='B020';
-- 전체직원수
select count(*) from bank.employee;  -- 3출력
-- 부서별 직원수
select count(*) from bank.employee where deptNo =1; -- // https://mvnrepository.com/artifact/org.slf4j/slf4j-api
compile group: 'org.slf4j', name: 'slf4j-api', version: '1.7.30'
1명
select count(*) from bank.employee where deptNo =2; -- 2명
-- 직급별 직원수(등급 같이 표시)
select concat(count(*),'명(',`empTitle`,')') as '직급별사원수(직책)' from bank.employee 
  group by `empTitle`;
 
 select count(`custCode`) , `empCode` , 
  from performance p
  group by `empCode`;
 
-- 사원업무 조회에서 사용 //건수는 10건 이상 되어야 보너스 발생 
select e.empCode, e.empName, e.empTitle, count(if(p.custCode=null,0,p.custCode)) as perf , if(count(if(p.custCode=null,0,p.custCode))>=10,e.`empSalary`*0.1,0) as bonus, pl.`planDetail` as pCode, pl.`planName` as pName
from employee e left join performance p on e.`empCode` = p.`empCode`  left join customer c on p.`custCode`=c.`custCode` left join viptable v on p.`custCode`= v.vip left join plan pl on pl.`planCode` = p.`planCode` 
group by e.`empCode`;


-- 1인 평균 급여액
select sum(empSalary) 
   from employee e ;
select (sum(empSalary))/(count(*))
   from employee e ;
  
-- 우수사원
create view ranking as select e.empCode, e.empName, e.empTitle, count(if(p.custCode=null,0,p.custCode)) as perf , if(count(if(p.custCode=null,0,p.custCode))>=10,e.`empSalary`*0.1,0) as bonus, pl.
from employee e left join performance p on e.`empCode` = p.`empCode`  left join customer c on p.`custCode`=c.`custCode` left join viptable v on p.`custCode`= v.vip left join plan pl on pl.`planCode` = p.`planCode` 
group by e.`empCode`;


select * from ranking ;
select e.empCode, e.empName, e.empTitle, e.pic, r.perf, r.bonus  from employee e left join ranking r on e.`empCode` =r.empCode where e.`deptNo` =2 order by bonus desc, perf desc;

  
#고객 - 황하나
-- test 
select custCode, custName, custRank, custCredit, custAddr, custTel from customer;
select planCode, planDetail, planName, planDesc, planDiv from plan;
select * from plan;
delete from customer where custCode = "C008";

select c.custName, b.accountBalance from customer c left join bankbook b on c.custCode = b.custCode;
select  c.custCode, c.custName, b.accountNum , b.accountPlanCode, b.accountBalance from BankBook b left join customer c on b.custCode = c.custCode ;
select c.custCode, c.custName, b.accountNum, b.accountBalance from customer c left join bankbook b on c.custcode = b.custcode;
update BankBook set accountBalance = 5000300 where accountNum ="293133-11-000007"; 

select planCode, planDetail, planName, planDesc, planDiv from plan where planName like '%예금%';
select custName, accountNum, accountBalance from customer c left join bankbook b on c.custcode = b.custCode where custName = "김가나";

select (count(*) - (select count(*) from customer where custRank = "D")) from customer;
select count(*) from customer where custRank = "D"; 
select * from customer c ;

select * from card;
select * from bankbook;
select * from customer;
select * from plan;
select * from loan;
select * from Performance p ;
select * from viptable;

-- mysql 5.7 이상에서 group by 에러 처리

show variables like 'sql_mode';
set global sql_mode='STRICT_TRANS_TABLES';

-- 
select SUBSTRING_INDEX(SUBSTRING_INDEX(accountOpenDate, '-', 2), '-', -1) from bankbook where SUBSTRING_INDEX(SUBSTRING_INDEX(accountNum, '-', 2), '-', -1) ='11';

select * from cust_DW_audit;
desc cust_DW_audit ;
show triggers;

select c.custCode, c.custName, b.accountNum, b.accountBalance from customer c join bankbook b on c.custcode = b.custcode;

#BSGPD
select count(*) from customer where custRank = "B";

select * from bankbook;
select SUBSTRING_INDEX(SUBSTRING_INDEX(accountOpenDate, '-', 2), '-', -1) from bankbook where SUBSTRING_INDEX(SUBSTRING_INDEX(accountNum, '-', 2), '-', -1) ="11";

select  SUBSTRING_INDEX(SUBSTRING_INDEX(accountDate, '-', 2), '-', -1) from cust_dw_audit where dw ="입금";

select * from bankbook b ;
desc bankbook;
select * from cust_dw_audit cda ;
delete from cust_dw_audit where dw = "출금";
select * from loan;
select * from plan;

select count(*) from plan where planCode like 'A%';
select count(*) from plan where planDetail like 'AA%';
select count(*) from plan where planDetail like 'AB%';
select count(*) from plan where planDetail like 'AC%';
select count(*) from plan where planDetail like 'BA%';
select count(*) from plan where planDetail like 'BB%';
select count(*) from plan where planDetail like 'CA%';
select count(*) from plan where planDetail like 'CB%';
select count(*) from plan where planDetail like 'CC%';

select custCode, custName, custRank, custCredit, custAddr, custTel from customer where custCode = "C001";
select custCode, custName, custRank, custCredit, custAddr, custTel from customer where custTel = "123-1234-1234";

select * from plan;
select planCode, planDetail, planName, planDesc, planDiv from plan where planCode like "A%";
select planCode, planDetail, planName, planDesc, planDiv from plan where planDetail like "AB%";
select * from cust_DW_audit cda ;
select * from customer c join bankbook b on c.custCode = b.custCode where accountNum = "293133-11-000001";
select custName, accountNum, accountBalance from customer c join bankbook b on c.custcode = b.custCode where custName like "%김%";

#은행업무 - 박인선
select * from plan where planCode like 'A%';
select * from plan where planCode like 'B%';
select * from plan where planCode like 'C%';
#신용 카드 한도 조정
#1등급 : 10,000,000
#2등급 : 9,000,000
#3등급 : 8,000,000
#4등급 : 7,000,000
#5등급 : 6,000,000

#테이블을 위한 카드 SQL
select c.cardnum,cs.custname,p.planname,c.cardsecucode,c.cardissuedate,c.cardlimit,c.cardbalance from card c left join customer cs on c.custcode = cs.custcode left join plan p on p.planCode = c.plancode;
select * from plan;

select count(transDate) from cardinfo where custname = '김가나' and date(transdate) = date(now());
select custname,count(transDate) from cardinfo where custname = '김가나' and year(transDate) = year(now());
select replace(accountnum,'-1','-2') from bankbook where custcode = (select custcode from customer where custname = '김가나') and accountPlanCode = (select planCode from plan where planname = '휴면,해지계좌테스트용');

call make_dormant('김가나','휴면,해지계좌테스트용');
call make_termination('김가나','휴면,해지계좌테스트용');

select cs.custname,
(select count(plancode) from card where plancode = 'B001' and custcode = c.custcode) as 'check',
(select count(plancode) from card where plancode = 'B002' and custcode = c.custcode) as 'credit' 
from card c join customer cs on c.custcode = cs.custcode group by c.custcode;

select cs.custname,
(select count(loanplancode) from loan where loanplancode = 'C001' and custcode = l.custcode) as 'normal',
(select count(loanplancode) from loan where loanplancode = 'C002' and custcode = l.custcode) as 'credit',
(select count(loanplancode) from loan where loanplancode = 'C003' and custcode = l.custcode) as 'card'
from loan l join customer cs on l.custCode = cs.custcode group by l.custcode;

select * from changebankbookdormantinfo;
drop table changebankbookdormantinfo;
drop table changebankbookterminationinfo;

select accountnum from bankbook where custcode = (select custcode from customer where custname = '김가나') and `accountPlanCode` = 'A001' and (select substring(accountnum,8,1) from bankbook where custcode = (select custcode from customer where custname = '김가나') and `accountPlanCode` = 'A001') = '2';
select b.accountNum,c.custCode,c.custName,p.planCode,p.planName,b.accountOpenDate,b.accountInterest from bankbook b left join customer c on b.custCode = c.custCode left join plan p on b.accountPlanCode = p.planCode where b.accountNum like '%%';
select b.accountNum,c.custCode,c.custName,p.planCode,p.planName,b.accountOpenDate,b.accountInterest from bankbook b left join customer c on b.custCode = c.custCode left join plan p on b.accountPlanCode = p.planCode where c.custname like '%김%';
select b.accountNum,c.custCode,c.custName,p.planCode,p.planName,b.accountOpenDate,b.accountInterest from bankbook b left join customer c on b.custCode = c.custCode left join plan p on b.accountPlanCode = p.planCode where p.planname like '%직%';
select b.accountNum,c.custCode,c.custName,p.planCode,p.planName,b.accountOpenDate,b.accountInterest from bankbook b left join customer c on b.custCode = c.custCode left join plan p on b.accountPlanCode = p.planCode where accountnum like '%-11-%'; #예금
select b.accountNum,c.custCode,c.custName,p.planCode,p.planName,b.accountOpenDate,b.accountInterest from bankbook b left join customer c on b.custCode = c.custCode left join plan p on b.accountPlanCode = p.planCode where accountnum like '%-12-%'; #적금
select b.accountNum,c.custCode,c.custName,p.planCode,p.planName,b.accountOpenDate,b.accountInterest from bankbook b left join customer c on b.custCode = c.custCode left join plan p on b.accountPlanCode = p.planCode where accountnum like '%-13-%'; #마이너스

select * from card;
select c.cardnum,cs.custcode,cs.custname,p.plancode,p.planname,c.cardsecucode,c.cardissuedate,c.cardlimit,c.cardbalance from card c left join customer cs on c.custcode = cs.custcode left join plan p on p.planCode = c.plancode where p.planname = 'Easy 적립 카드';
select c.cardnum,cs.custcode,cs.custname,p.plancode,p.planname,c.cardsecucode,c.cardissuedate,c.cardlimit,c.cardbalance from card c left join customer cs on c.custcode = cs.custcode left join plan p on p.planCode = c.plancode where c.cardnum like '%331%'; #체크카드
select c.cardnum,cs.custcode,cs.custname,p.plancode,p.planname,c.cardsecucode,c.cardissuedate,c.cardlimit,c.cardbalance from card c left join customer cs on c.custcode = cs.custcode left join plan p on p.planCode = c.plancode where c.cardnum like '%332%'; #신용카드

select l.loanAccountNum,c.custName,p.planName,l.loanDate,l.loanInterest,l.loanBalance from loan l left join customer c on l.custCode = c.custCode left join plan p on l.loanPlanCode = p.planCode where l.loanaccountnum like '%13%'; #계좌번호검색
select l.loanAccountNum,c.custName,p.planName,l.loanDate,l.loanInterest,l.loanBalance from loan l left join customer c on l.custCode = c.custCode left join plan p on l.loanPlanCode = p.planCode where c.custname like '%김서%'; #고객이름
select l.loanAccountNum,c.custName,p.planName,l.loanDate,l.loanInterest,l.loanBalance from loan l left join customer c on l.custCode = c.custCode left join plan p on l.loanPlanCode = p.planCode where p.planname like '%프리%'; #상품명


select * from notice;



select * from employee;
select custname,if(substring(accountnum,9,1)=1,'예금',if(substring(accountnum,9,1)=2,'적금','마이너스')) as 'div',count(transDate) as 'count' from bankbookinfo where custname = '김서형' and date(transdate) = date(now()) group by accountnum;
select custname,if(substring(accountnum,9,1)=1,'예금',if(substring(accountnum,9,1)=2,'적금','마이너스')) as 'div',count(transDate) as 'count' from bankbookinfo where custname = '김서형' and week(transdate,1) = week(now(),1) group by accountnum;
select custname,if(substring(accountnum,9,1)=1,'예금',if(substring(accountnum,9,1)=2,'적금','마이너스')) as 'div',count(transDate) as 'count' from bankbookinfo where custname = '김서형' and month(transdate) = month(now()) group by accountnum;
select custname,if(substring(accountnum,9,1)=1,'예금',if(substring(accountnum,9,1)=2,'적금','마이너스')) as 'div',count(transDate) as 'count' from bankbookinfo where custname = '김서형' and year(transdate) = year(now()) group by accountnum;
select * from cardinfo;
select custname,if(substring(cardnum,7,1)=1,'체크카드','신용카드') as 'div',count(transDate) as 'count' from cardinfo where custname = '김가나' and date(transdate) = date(now()) group by cardnum;
select custname,if(substring(cardnum,7,1)=1,'체크카드','신용카드') as 'div',count(transDate) as 'count' from cardinfo where custname = '김가나' and week(transdate,1) = week(now(),1) group by cardnum;
select custname,if(substring(cardnum,7,1)=1,'체크카드','신용카드') as 'div',count(transDate) as 'count' from cardinfo where custname = '김가나' and month(transdate) = month(now()) group by cardnum;
select * from performance;

insert into bankbook values ('293133-11-000001','C001','A001',now(),0.10,0,'B001',0);

set autocommit = false;
insert into card values('2931331000000010','C001','A001',111,now(),null,null,(select empcode from employee where empname = '테스트'),'293133-11-000001');
update bankbook set connectchk = 1 where custcode = 'C001' and accountnum = '293133-11-000001';
update card set cardbalance = (select accountbalance from bankbook where accountnum = '293133-11-000001') where cardnum = '2931331000000010' and custcode = (select custcode from customer where custname = '김서형');
set autocommit = true;

delete from card;
update bankbook set connectchk = 0 where custcode = 'C001' and accountnum = '293133-11-000001';


create view bankbook_deposit_connect_to_card_info as select accountnum,custcode,connectchk from bankbook where substring(accountnum,9,1)='1' and connectchk = 0;
select * from customer;
select * from bankbook_deposit_connect_to_card_info;
select * from card;
delete from card;
select * from bankbookinfo;
desc card;
select custname,if(substring(cardnum,7,1)=1,'체크카드','신용카드') as 'div',count(transDate) as 'count' from cardinfo where year(transdate) = year(now()) group by cardnum;

select * from card;

update card set cardbalance = (select accountbalance from bankbook where accountnum = '293133-11-000001') where cardnum = '2931331000000010' and custcode = (select custcode from customer where custname = '김서형');
select * from card where custcode = (select custcode from customer where custname = '김서형') and cardnum = '2931331000000010';

desc card;
