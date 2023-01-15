CREATE TABLE dict_item_prices
(
	item_id INT NOT NULL IDENTITY,
	item_name VARCHAR(150) NOT NULL,
	item_price DECIMAL(12, 2) NOT NULL,
	valid_from_dt DATE NOT NULL,
	valid_to_dt DATE NOT NULL
);