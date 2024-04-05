--DDL
--Data Definition Language

select * from vdani.emp;

select * from emp2;

--create table 

create table series(
    title varchar2(50),
    creator varchar2(50),
    pilot date,
    seasons integer
)

--delete a table:: use drop
drop table series;

select * from series;

insert into series values('The Leftovers', 'Damon', to_date('2014.06.24', 'YYYY.MM.DD'), 3);
insert into series values('Lost', 'Damon', to_date('2014.06.24', 'YYYY.MM.DD'), 6);
insert into series values('Lost', 'Damon', null, 3);

select * from series;

drop table series;

--create table 
--unique, not null, check
--primary key, foreign key


create table series(
    id integer primary key,
    title varchar2(50) not null,
    creator varchar2(50) references creators2(name),
    pilot date,
    seasons integer check(seasons > 0)
);

--select * from series;

create table creators2(
    name varchar2(50) unique,
    birthdate date
);

--select * from series;

alter table series
add constraint PK_CONST
foreign key (creator) references creators2(name);

alter table series
drop constraint PK_CONST;

drop table series;

--
--

drop table travel;

create table travel(
    dep varchar2(3) not null primary key,
    arr varchar2(3) not null,
    schedule date
);

select * from travel;

insert into travel values('BUD', 'FRA', to_date('2024.04.08','YYYY.MM.DD'));
insert into travel values('BUD', 'JFK', to_date('2024.12.28','YYYY.MM.DD'));
insert into travel values('MUC', 'JFK', to_date('2024.12.28','YYYY.MM.DD'));
