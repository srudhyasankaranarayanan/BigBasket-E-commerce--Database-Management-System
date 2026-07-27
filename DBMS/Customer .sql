create table customer (
   customer_id   number(10) primary key,
   customer_name varchar2(50) not null,
   email         varchar2(100) unique not null,
   phone_no      varchar2(15) unique not null,
   dob           date,
   address       varchar2(150) not null
);

insert into customer values
   ( 101,
     'Arun Kumar',
     'arun@gmail.com',
     '9876543210',
     '12-MAY-1998',
     'Chennai' );
insert into customer values
   ( 102,
     'Priya Sharma',
     'priya@gmail.com',
     '9876543211',
     '19-AUG-1999',
     'Bangalore' );
insert into customer values
   ( 103,
     'Rahul Singh',
     'rahul@gmail.com',
     '9876543212',
     '17-MAR-1997',
     'Hyderabad' );
insert into customer values
   ( 104,
     'Sneha Reddy',
     'sneha@gmail.com',
     '9876543213',
     '20-NOV-2010',
     'Mumbai' );
insert into customer values
   ( 105,
     'Vikram Patel',
     'vikram@gmail.com',
     '9876543214',
     '18-JUL-1987',
     'Ahmedabad' );
insert into customer values
   ( 106,
     'Anjali Das',
     'anjali@gmail.com',
     '9876543215',
     '25-JAN-2005',
     'Kolkata' );
insert into customer values
   ( 107,
     'Karan Mehta',
     'karan@gmail.com',
     '9876543216',
     '30-JAN-1995',
     'Pune' );
insert into customer values
   ( 108,
     'Meera Nair',
     'meera@gmail.com',
     '9876543217',
     '22-APR-2007',
     'Kochi' );
insert into customer values
   ( 109,
     'Rohan Gupta',
     'rohan@gmail.com',
     '9876543218',
     '19-DEC-2008',
     'Delhi' );
insert into customer values
   ( 110,
     'Divya Iyer',
     'divya@gmail.com',
     '9876543219',
     '16-JUN-2009',
     'Coimbatore' );

select *
  from customer;

update customer
   set
   customer_name = 'Arun Raj'
 where customer_id = 101;

select *
  from customer;

update customer
   set
   email = 'arunraj@gmail.com'
 where customer_id = 101;

select *
  from customer;

delete from customer
 where customer_id = 110;

select *
  from customer;

commit;

