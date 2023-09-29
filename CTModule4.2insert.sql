-- Insert into Movie Theater database

---- customer_mov table 
insert into customer_mov(
	cust_mov_id,
	f_name,
	l_name,
	payment_method
) 
values( 
	1 ,
	'Joe',
	'Williams',
	'Visa'
);

-- movies 
insert into movies(
	movie_id,
	movie_title,
	rating,
	actors
) 
values (
	1,
	'Attack of the Llamas',
	'R',
	'Adam Sandler'
);

-- concessions table 
insert into concessions(
	conc_id,
	item_id,
	amount
) 
values (
	1,
	2,
	3
);

-- tickets table 
insert into tickets(
	ticket_id,
	movie_id,
	conc_id,
	cust_mov_id
) 
values (
	1,
	1,
	1,
	1
);
select * from movies
