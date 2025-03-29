create database stocks_analysis;

use stocks_analysis;

create table market_data(
	stock_id varchar(10),
    trade_date date,
    open_price decimal(9,2),
    close_price decimal(9,2),
    high_price decimal(9,2),
    low_price decimal(9,2),
    volume int,
    primary key (stock_id, trade_date));
    
select * 
from market_data;



-- Daily Price Change/Movement
/*
This query calculates the absolute price movement for each stock by computing the difference between the closing and opening prices on a given day.
Helps identify daily gainers and losers in the stock market. 
*/
select stock_id, trade_date, close_price-open_price as price_change
from market_data;
