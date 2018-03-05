/*time to string*/
select date_format(now(), '%Y-%m-%d %H:%i:%s');

/*string to date*/
select str_to_date('2008-08-09 08:09:30', '%Y-%m-%d %h:%i:%s');

#now(): sql start time;sysdate(): current time when function executing
select now(),sleep(3),now(),sysdate()

#add or sub some time
select date_add(now(), interval 1 day);  
select date_add(now(), interval 1 hour); 
select date_add(now(), interval 1 minute); 
select date_add(now(), interval 1 second);
select date_add(now(), interval 1 microsecond);
select date_add(now(), interval 1 week);
select date_add(now(), interval 1 month);
select date_add(now(), interval 1 quarter);
select date_add(now(), interval 1 year);
select date_add(now(), interval -1 day);

#space bewteen two date: day,hour,minute,second,microsecond,week,month,quarter,year
select timestampdiff(day,'2002-05-01',now()) diff;
