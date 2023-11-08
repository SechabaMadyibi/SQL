INSERT INTO products_menu_table (name, price)
VALUES
('coke', 10),
('chips', 5)



INSERT INTO users_table (name)
VALUES 
('Arnold'),
('Sheryl')

INSERT INTO cart_table (product_id, qty)
VALUES 
(1,2),
(2,1)

INSERT INTO order_header (users, orderdate)
VALUES 
(2, now())

--add to cart function

CREATE OR REPLACE FUNCTION add_to_cart (prod_id integer, quantity integer)
RETURNS void AS $$
Begin 
IF EXISTS (SELECT * FROM products_menu_table WHERE id = prod_id )
	THEN
		UPDATE cart_table  SET qty = qty + 1  WHERE product_id = prod_id
        AND quantity > 0;
        
	ELSE
		INSERT INTO cart_table (product_id,qty) VALUES (prod_id,quantity);
	END IF; 
    END;
$$ LANGUAGE plpgsql;

SELECT add_to_cart (1,1);
SELECT add_to_cart (2,1);
SELECT ()

--remove from cart
CREATE OR REPLACE FUNCTION remove_from_cart (prod_id integer)
RETURNS void AS $$
Begin 
IF EXISTS (SELECT * FROM products_menu_table WHERE id = prod_id )
	THEN
	UPDATE cart_table  SET qty = qty - 1  WHERE product_id = prod_id
        AND qty > 1;	
	ELSE
     DELETE  from cart_table WHERE product_id = prod_id;
	END IF; 
    END;
$$ LANGUAGE plpgsql;

SELECT remove_from_cart (1)
Select from cart_table

--- copy cart table to order details
  INSERT INTO order_details (order_id, product_id, qty )
  SELECT 1 , product_id, qty FROM cart_table 
 DELETE FROM cart_table WHERE product_id > 0

--print order details
SELECT  od.order_id, od.product_id, od.qty, prod.price,
(od.qty*prod.price:: numeric) AS Total
FROM  order_details od
JOIN products_menu_table prod ON od.product_id = prod.id
ORDER BY od.product_id







