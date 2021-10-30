# ----- # ----- #

ln -sfv /usr/local/opt/postgresql/*.plist ~/Library/LaunchAgents

alias pg_start="launchctl load ~/Library/LaunchAgents"
alias pg_stop="launchctl unload ~/Library/LaunchAgents"

pg_start
pg_stop

createdb 'database_name'

\c database_name

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