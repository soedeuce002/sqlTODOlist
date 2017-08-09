create table (id integer, title char not null, details char, priority integer not null default 1, created_at timestamp, completed timestamp);

insert into todos (id, title, details, priority, created_at)
  values  (1, wash dishes, they stink so bad, 3, 2017-07-09);
          (2, cut grass, there are snakes, 2, 2017-07-08);
          (3, water plant, it is brown, 5, 2017-07-09);
          (4, hang up clothes, piled taller than i am, 4, 2017-07-08);
          (5, clean toilets, poop stains, 1, 2017-07-07);

select completed from todos where completed = null;

select priority from todos where priority > 1;

update todos, 2 set completed = 2017-08-01;

delete * from todos where completed != null;
