# NUMBER 2

# a. Total transaksi dari masing-masing customer (from highest to lowest)

SELECT `Customer`, SUM(`Harga Asli`) as Total_Transaction
 FROM schoters.`transaksi-grid view new 2` as a
 JOIN schoters. `customer-grid view` as b
 ON a.`Customer` = b.`ï»¿Name`
 GROUP BY `Customer`
ORDER BY 2 DESC

# b. Total transaksi berdasarkan kota
SELECT `Domisili`, sum(`Harga Asli`) as total_transaction
FROM schoters.`transaksi-grid view new 2` as a
JOIN schoters. `customer-grid view` as b
ON a.`Customer` = b.`ï»¿Name`
GROUP BY `Domisili`
ORDER BY 2 DESC

# NUMBER 3 - EXPLORATORY DATA ANALYSIS

# ERROR Total Transaksi Per Bulan

	SELECT EXTRACT(MONTH FROM `ï»¿Tanggal Transaksi`) AS Month,
		   SUM(`Harga Asli`) AS Jumlah_Transaksi
	FROM schoters.`transaksi-grid view new 2`
	GROUP BY Month

#Total Transaksi Per Nama Sales 

SELECT `Nama Sales`, SUM(`Harga Asli`) AS Total_Transaction_per_Sales
FROM schoters.`transaksi-grid view new 2`
GROUP BY `Nama Sales`

# Total Rata-Rata Usia Customer
SELECT AVG(`Usia`) as avg_age_customer
FROM schoters.`customer-grid view`

# Total Customer Berdasarkan masing-masing daerah
SELECT `Domisili`, COUNT(`Domisili`) as Total_Customer_Per_Areas
FROM schoters.`customer-grid view`
GROUP BY `Domisili`

#Total Budget Campaign in 2021

SELECT SUM(`Budget`) as Total_Campaign_Budget_2021
FROM schoters.`campaign-grid view 2`






