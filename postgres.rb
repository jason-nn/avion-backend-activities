# ----- # ----- #

ln -sfv /usr/local/opt/postgresql/*.plist ~/Library/LaunchAgents

alias pg_start="launchctl load ~/Library/LaunchAgents"
alias pg_stop="launchctl unload ~/Library/LaunchAgents"

pg_start
pg_stop

createdb 'database_name'

\c avionschool_development

\l

\dt

select * from table_name;

# ----- # ----- #

create table students (
    id integer PRIMARY KEY,
    first_name character varying(30) NOT NULL,
    middle_name character varying(30) NOT NULL,
    last_name character varying(30) NOT NULL,
    age integer NOT NULL,
    location character varying(30) NOT NULL
);

insert into students (id, first_name, middle_name, last_name, age, location)
values (1, 'Juan', 'Blank', 'Cruz', 18, 'Manila');

insert into students (id, first_name, middle_name, last_name, age, location)
values (2, 'Anne', 'Blank', 'Wall', 20, 'Manila');

insert into students (id, first_name, middle_name, last_name, age, location)
values (3, 'Theresa', 'Blank', 'Joseph', 21, 'Manila');

insert into students (id, first_name, middle_name, last_name, age, location)
values (4, 'Isaac', 'Blank', 'Gray', 19, 'Laguna');

insert into students (id, first_name, middle_name, last_name, age, location)
values (5, 'Zack', 'Blank', 'Matthews', 22, 'Marikina');

insert into students (id, first_name, middle_name, last_name, age, location)
values (6, 'Finn', 'Blank', 'Lam', 25, 'Manila');

update students set first_name = 'Ivan', middle_name = 'Ingram', last_name='Howard', age = 25, location = 'Bulacan' where id = 1;

delete from students where id = 6;

# ----- # ----- #

select count(id) from students;

select * from students where location = 'Manila';

select avg(age) from students;

select * from students order by age desc;

# ----- # ----- #

create table students (
    id integer PRIMARY KEY,
    name character varying(50) NOT NULL,
    course character varying(50) NOT NULL,
    age integer NOT NULL
);

insert into students (id, name, course, age)
values (1, 'Jason', '-', 20);

insert into students (id, name, course, age)
values (2, 'Jason30', '-', 30);

insert into students (id, name, course, age)
values (3, 'Jason40', '-', 40);

insert into students (id, name, course, age)
values (4, 'Jason50', '-', 50);

insert into students (id, name, course, age)
values (5, 'Jason60', '-', 60);

select * from students order by age desc;

select avg(age) from students;

select * from students where age >= 25 and age <= 32;

update students set course = 'Millenialogy' where age >= 25 and age <= 32;

delete from students where age > 30;

select name from students;

select name, course from students where age < 20;

# ----- # ----- #

create table lessons (
    id integer PRIMARY KEY,
    name character varying(30) NOT NULL,
    description character varying(30) NOT NULL,
    front_end character varying(30) NOT NULL,
    back_end character varying(30) NOT NULL,
    price float NOT NULL
);

insert into lessons (id, name, description, front_end, back_end, price)
values (1, 'Ruby', 'Ruby description', 'FALSE', 'TRUE', 199.99);

insert into lessons (id, name, description, front_end, back_end, price)
values (2, 'Python', 'Python description', 'FALSE', 'TRUE', 199.99);

insert into lessons (id, name, description, front_end, back_end, price)
values (3, 'Javascript', 'Javascript description', 'TRUE', 'TRUE', 99.99);

insert into lessons (id, name, description, front_end, back_end, price)
values (4, 'Rust', 'Rust description', 'FALSE', 'TRUE', 499.99);

insert into lessons (id, name, description, front_end, back_end, price)
values (5, 'Golang', 'Golang description', 'FALSE', 'TRUE', 499.99);


create table instructors (
    id integer PRIMARY KEY,
    first_name character varying(30) NOT NULL,
    last_name character varying(30) NOT NULL,
    lesson_id integer NOT NULL
);

insert into instructors (id, first_name, last_name, lesson_id)
values (1, 'Adrian', 'Co', 1);

insert into instructors (id, first_name, last_name, lesson_id)
values (2, 'Analyn', 'Cajocson', 1);

insert into instructors (id, first_name, last_name, lesson_id)
values (3, 'Pau', 'Rosa', 3);

insert into instructors (id, first_name, last_name, lesson_id)
values (4, 'Maurus', 'Vitor', 3);

insert into instructors (id, first_name, last_name, lesson_id)
values (5, 'John', 'Young', 6);

select l.name, i.first_name, i.last_name from lessons l inner join instructors i on i.lesson_id = l.id;

select l.name, i.first_name, i.last_name from lessons l left join instructors i on i.lesson_id = l.id;

select l.name, i.first_name, i.last_name from lessons l right join instructors i on i.lesson_id = l.id;

select l.name, i.first_name, i.last_name from lessons l full join instructors i on i.lesson_id = l.id;

# ----- # ----- #
