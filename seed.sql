-- Insert Categories
INSERT INTO categories (name, description) VALUES 
('Electronics', 'Gadget dan perangkat elektronik'),
('Clothing', 'Pakaian dan aksesoris'),
('Books', 'Buku dan alat tulis');

-- Insert Products
INSERT INTO products (sku, name, category_id, price, stock_quantity, min_stock, description) VALUES 
('E001', 'Laptop Dell XPS', 1, 12500000, 15, 5, 'Laptop premium'),
('C001', 'Kaos Polos Hitam', 2, 89000, 120, 20, 'Kaos katun'),
('B001', 'Buku Belajar SQL', 3, 95000, 45, 10, 'Buku pemula SQL');

-- Buat beberapa produk stok rendah untuk testing view
UPDATE products SET stock_quantity = 3 WHERE id = 1;   
UPDATE products SET stock_quantity = 8 WHERE id = 2;   
