
select:
select (distinct)[选取唯一不同的值] <column name,,,>/* from <table name>;
select <column name> from <table name> where <column name> <opt> <value>;
select * from persons where firstname='blush'
select * from persons where year>1963
条件值周围使用的是单引号。如果是数值，请不要使用引号。
select company, ordernumber from orders order by company	以字母顺序显示公司名称
desc 关键字用于降序排序
select company, ordernumber from orders order by company desc;
