use learning;
/* Average Salary*/
select avg(salary) from Manager;

/*Number of orders in a day*/

select count(uid) as daily_total, odate from Orders group by odate;


/*total number of orders */
select sum(quantity) as order_total from Orders;

/*total number of dishes served in hotel*/
select count(distinct dish) from Item;

/* dishes as per category*/
select dish, category from Item order by category; 
