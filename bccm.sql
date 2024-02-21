create database bccm;

create table adminlogin(uname varchar(20),pass varchar(20));

insert into bccm.adminlogin values("admin","1729");

select * from bccm.adminlogin;

create table players(pname varchar(30),puname varchar(15),pass varchar(15),dob varchar(15),address varchar(30),contact varchar(15),email varchar(20),batting varchar(10),bowling varchar(10),wicketkeeping varchar(10),hruns varchar(10),hwickets varchar(10),hstumpouts varchar(10),t20 varchar(20),odi varchar(20),test varchar(20));

select * from players ;

ALTER TABLE players
ADD CONSTRAINT pk_players PRIMARY KEY (puname);
ALTER TABLE players ADD COLUMN fitnessscore VARCHAR(50);
ALTER TABLE players ADD COLUMN applicationstatus VARCHAR(15);

ALTER TABLE players
MODIFY COLUMN hruns varchar(15) DEFAULT "0";
ALTER TABLE players
MODIFY COLUMN hwickets varchar(15) DEFAULT "0";
ALTER TABLE players
MODIFY COLUMN hstumpouts varchar(15) DEFAULT "0";

create table coaches(cname varchar(30),cuname varchar(15),cpass varchar(15),battingcoach varchar(10),bowlingcoach varchar(10),wicketkeepingcoach varchar(10),allroundercoach varchar(10),experience varchar(12),applicationstatus varchar(10),selectionstatus varchar(10));

select * from coaches;

ALTER TABLE bccm.coaches
MODIFY COLUMN selectionstatus VARCHAR(25);

ALTER TABLE coaches
ADD CONSTRAINT pk_coaches PRIMARY KEY (cuname);


