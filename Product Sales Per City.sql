SELECT ci.city_name, pr.product_name, Round(sum(ii.line_total_price), 2) 
as tot from city ci,customer cu, invoice i, invoice_item ii, 
product pr where ci.id = cu.city_id and cu.id = i.customer_id and i.id = ii.invoice_id and ii.product_id = pr.id 
GROUP BY ci.city_name,pr.product_name ORDER BY tot DESC, ci.city_name, pr.product_name