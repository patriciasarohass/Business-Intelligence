-- =============================================================
-- PROJECT: SQL Fundamentals for Business Analysis
-- Database: Northwind Sample Database
-- Tool: DBeaver / PostgreSQL
-- =============================================================

-- 1) Analisis Ongkos Kirim per Kurir
-- Konteks: Finance ingin mengidentifikasi kurir dengan biaya pengiriman (freight) tertinggi.
SELECT 
    shipper_id,
    company_name AS shipper_name,
    AVG(freight) AS avg_freight
FROM orders 
JOIN shippers 
    ON ship_via = shipper_id
GROUP BY 
    shipper_id,
    company_name
ORDER BY avg_freight DESC;
-- Insight: United Package merupakan kurir dengan rata-rata ongkos kirim tertinggi (86.64).


-- 2) Analisis Negara Tujuan Dominan
-- Konteks: Marketing menargetkan 5 negara dengan volume transaksi tertinggi.
SELECT 
    ship_country,
    COUNT(*) AS total_orders
FROM orders
GROUP BY ship_country
ORDER BY total_orders DESC;
LIMIT 5; -- Membatasi hanya pada 5 negara teratas
-- Insight: Germany dan USA memimpin dengan total 122 transaksi.


-- 3) Analisis Kategori Produk Premium (Mahal)
-- Konteks: Product Manager mengecek kategori dengan rata-rata harga unit di atas 30.
SELECT
    categories.category_id,
    categories.category_name,
    AVG(unit_price) AS avg_price,
    COUNT(*) AS total_products
FROM products
JOIN categories 
	ON products.category_id = categories.category_id 
GROUP BY categories.category_id
HAVING AVG(unit_price) > 30
ORDER BY avg_price DESC;
-- Insight: Kategori 'Meat/Poultry' memiliki rata-rata harga tertinggi sebesar 54.00.


-- 4) Analisis Persebaran Pelanggan Global
-- Konteks: Growth Team menyiapkan kampanye pada 10 negara dengan pelanggan terbanyak.
SELECT
    country,
    COUNT(*) AS total_customers
FROM customers
GROUP BY country
ORDER BY total_customers DESC
LIMIT 10; -- Membatasi hanya pada 10 negara teratas
-- Insight: USA (13 pelanggan) dan France (11 pelanggan) adalah pasar utama.


-- 5) Analisis Loyalitas Karyawan (Masa Kerja)
-- Konteks: HR menyiapkan program penghargaan untuk 5 karyawan paling loyal.
SELECT
    employee_id,
    CONCAT(first_name, ' ', last_name) AS employee_name, -- Menggabungkan nama depan dan belakang
    EXTRACT(YEAR FROM AGE(CURRENT_DATE, hire_date)) AS years_of_work -- Menghitung selisih tahun dari tanggal masuk
FROM employees
ORDER BY years_of_work DESC
LIMIT 5; -- Membatasi hanya pada 5 karyawan terlama
-- Insight: Nancy Davolio, Andrew Fuller, dan Janet Leverling merupakan karyawan paling senior (33 tahun).