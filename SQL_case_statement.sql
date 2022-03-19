---this is to find if customer's year meet a specific condition
---ie if the year is greater than 2015 then get the age if not give nothing
select
labstart.year,
labstart.customer_age,
case when labstart.year>2015
then labstart.customer_age
else null
end as age_analyze
from labstart

---count based on condition
---this is to find if customer's year meet a specific condition
---ie if the year is greater than 2015 then get the age if not give nothing
select
labstart.year,
case when labstart.year>2011
then count(labstart.customer_age)
else null
end as number_of_customers
from labstart
group by labstart.year
