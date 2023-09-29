-- Creating Movie Theater ERD 
-- table 1 customer

create table customer_mov (
	cust_mov_id SERIAL primary key,
	f_name VARCHAR(150),
	l_name VARCHAR(150),
	payment_method VARCHAR(100)
);
-- table 2 movies
create table movies (
	movie_id SERIAL primary key,
	movie_title VARCHAR(150),
	rating VARCHAR(100),
	actors VARCHAR(150)
);
-- table 3 concessions
create table concessions (
	conc_id SERIAL primary key,
	item_id INTEGER not null,
	amount NUMERIC(10,2)
);

-- table 4 tickets
create table tickets (
	ticket_id SERIAL primary key,
	movie_id INTEGER not null,
	conc_id INTEGER not null,
	cust_mov_id INTEGER not null,
	foreign key(movie_id) references movies(movie_id),
	foreign key(conc_id) references concessions(conc_id),
	foreign key(cust_mov_id) references customer_mov(cust_mov_id)
);
