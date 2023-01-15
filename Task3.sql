USE Test_Sber;

GO  
DECLARE @temp_item_id INT = (SELECT TOP (1) item_id FROM item_prices ORDER BY item_id)
DECLARE @temp_created_dt DATE = (SELECT TOP (1) created_dttm FROM item_prices ORDER BY item_id)
DECLARE @temp_item_price DATE = (SELECT TOP (1) item_price FROM item_prices ORDER BY item_id)
DECLARE price_change_cursor CURSOR LOCAL FOR   
SELECT item_id, item_name, item_price, created_dttm 
FROM item_prices 
ORDER BY item_id
  
OPEN price_change_cursor; 

DECLARE @item_id INT, @item_name VARCHAR(150), @item_price DECIMAL(12, 2), @created_dttm DATE
  
FETCH NEXT FROM price_change_cursor INTO @item_id, @item_name, @item_price, @created_dttm
    
WHILE @@FETCH_STATUS = 0  
BEGIN  
	WHILE @temp_created_dt = @created_dttm AND @temp_item_id = @item_id AND @temp_item_price = @item_price
		BEGIN
			FETCH NEXT FROM price_change_cursor;
			IF EXISTS(SELECT item_id FROM dict_item_prices ORDER BY item_id)
				UPDATE dict_item_prices SET dict_item_prices.valid_to_dt = item_prices.created_dttm - 1
			ELSE
				INSERT INTO dict_item_prices 
				VALUES(
					(SELECT item_id, item_name, MAX(item_price), MAX(created_dttm)-1) 
					FROM item_prices 
					WHERE item_id = @temp_item_id
				) 
		END
END  
  
CLOSE price_change_cursor;  
DEALLOCATE price_change_cursor;  
GO  