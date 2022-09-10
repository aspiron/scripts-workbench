CREATE TABLE goods(
	id integer unique,
    title varchar(30),
    quantity integer check (quantity > 0),
    price integer,
    in_stock char(1) check (in_stock in('Y', 'N'))
);

USE lesson_16082022;

INSERT INTO goods (id, title, quantity, price, in_stock) VALUES (1, 'Bycicle', 3, 250, 'Y'),
																(2, 'Scateboard', 5, 150, 'Y'),
                                                                (3, 'Scooter', 7, 550, 'Y'),
                                                                (4, 'Snowboard', 9, 450, 'Y'),
                                                                (5, 'Skies', 11, 450, 'Y');
                                                                
SELECT
* 
FROM goods
ORDER BY price DESC
LIMIT 3;
 
ALTER TABLE goods 
ADD city VARCHAR(20) default 'Berlin';

ALTER TABLE goods
DROP COLUMN city;

UPDATE goods
SET city = 'Ber';

set sql_safe_updates = 0;

ALTER TABLE goods
MODIFY COLUMN city char(3) default 'Ber';

ALTER TABLE goods
CHANGE city country varchar(20);
