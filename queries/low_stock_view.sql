-- View untuk Laporan Stok Rendah
CREATE OR REPLACE VIEW low_stock_products AS
SELECT 
    p.id,
    p.sku,
    p.name,
    c.name AS category,
    p.stock_quantity,
    p.min_stock,
    (p.min_stock - p.stock_quantity) AS shortage
FROM products p
JOIN categories c ON p.category_id = c.id
WHERE p.stock_quantity <= p.min_stock
ORDER BY p.stock_quantity ASC;

-- Cara menggunakan view:
-- SELECT * FROM low_stock_products;
