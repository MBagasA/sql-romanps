CREATE TABLE obat_hewan(
	kode_produk varchar PRIMARY key not null,
	Nama_barang varchar,
	Stok integer,
	Harga_jual Integer,
	Harga_beli Integer
	
);



insert into obat_hewan (kode_produk, nama_barang, stok, harga_jual, harga_beli )
Values
	('ABS01','Medoxy L',15,24300,27000),
	('ABS02','Vet Oxy SB',15,49200,67500),
	('ABS03','Vet Oxy La',23,110000,125000),
	('ABS04','Limoxyn LA',1,93750,112000),
	('ABS05','Vet Strep',11,139200,15500),
	('ABS06','Penstrep',20,110000,135000),
	('ABS07','Roxine Injeksi',30,27000,33000),
	('ABS08','Tysinol',1,27600,33000),
	('ABS09','Kaloxy Vet',33,51000,56000),
	('ABS10','G mox',10,102000,115000),

	('ALAT01','Gunting 14 cm',20,23500,30000),
	('ALAT02','Plastik Sheat',22,45000,6000),
	('ALAT03','Gloves',30,80000,100000),
	('ALAT04','Trocard sapi',10,200000,275000),
	('Alat05','Pinset 20 cm',20,41000,50000),
	('ALAT06', 'Pipa Gantungan', 35, 220000, 250000),
	('ALAT07', 'Thermometer Kayu', 34, 12000, 17500),
	('ALAT08', 'Slat Alas Kandang', 40, 85500,94500),
	('ALAT09', 'Egg Tray Plastik', 47, 8300,9500),
	('ALAT10', 'Needle Holder', 4, 26000, 35000),
	
	('ATP01','Biodin 100ml',5,70000,77000),
	('ATP02','Biosan TP 100ml',10,109000,125000),
	('ATP03','Biodin 50ml',40,35000,40000),
	('ATP04','Bio Energi',30,50000,105000),
	('ATP05','Fertilife',35,80000,1460000);
	
	update obat_hewan 	
	set harga_beli = 140000
	where kode_produk = 'ATP05'
	
	alter table obat_hewan 
	add category varchar;

UPDATE obat_hewan 
SET category =
    CASE kode_produk
        WHEN 'ABS01' THEN 'Injeksi'
        WHEN 'ABS02' THEN 'Injeksi'
        WHEN 'ABS03' THEN 'Injeksi'
--        ELSE category -- Menjaga nilai category jika kode_produk tidak cocok dengan kondisi di atas
    END
WHERE kode_produk IN ('ABS01', 'ABS02', 'ABS03');
	
	UPDATE obat_hewan 
SET category =
    CASE kode_produk
        WHEN 'ABS04' THEN 'Injeksi'
        WHEN 'ABS05' THEN 'Injeksi'
        WHEN 'ABS06' THEN 'Injeksi'
        WHEN 'ABS07' THEN 'Injeksi'
        WHEN 'ABS08' THEN 'Injeksi'
        WHEN 'ABS09' THEN 'Injeksi'
        WHEN 'ABS10' THEN 'Injeksi'
        WHEN 'ALAT01' THEN 'ALAT'
        WHEN 'ALAT02' THEN 'ALAT'
--        ELSE category -- Menjaga nilai category jika kode_produk tidak cocok dengan kondisi di atas
    END
WHERE kode_produk IN ('ABS04', 'ABS05', 'ABS06','ABS07','ABS08','ABS09','ABS10','ALAT01','ALAT02');
		
	UPDATE obat_hewan 
SET category =
    CASE kode_produk
        WHEN 'ABS04' THEN 'Injeksi'
        WHEN 'ABS05' THEN 'Injeksi'
        WHEN 'ABS06' THEN 'Injeksi'
        WHEN 'ABS07' THEN 'Injeksi'
        WHEN 'ABS08' THEN 'Injeksi'
        WHEN 'ABS09' THEN 'Injeksi'
        WHEN 'ABS10' THEN 'Injeksi'
        WHEN 'ALAT01' THEN 'ALAT'
        WHEN 'ALAT02' THEN 'ALAT'
--        ELSE category -- Menjaga nilai category jika kode_produk tidak cocok dengan kondisi di atas
    END
WHERE kode_produk IN ('ABS04', 'ABS05', 'ABS06','ABS07','ABS08','ABS09','ABS10','ALAT01','ALAT02');

	update obat_hewan 
set category =
	case kode_produk 
		when 'ALAT01' then 'Alat'
		when 'ALAT02' then 'Alat'
		when 'ALAT03' then 'Alat'
		when 'ALAT04' then 'Alat'
		when 'ALAT05' then 'Alat'
		when 'ALAT06' then 'Alat'
		when 'ALAT07' then 'Alat'
		when 'ALAT08' then 'Alat'
		when 'ALAT09' then 'Alat'
		when 'ALAT10' then 'Alat'
	end 
where kode_produk in ('ALAT01','ALAT02','ALAT03','ALAT04','ALAT05','ALAT06','ALAT07','ALAT08','ALAT09','ALAT10');
		
		
	update obat_hewan 
set category =
	case kode_produk 
		when 'ATP01' then 'Injeksi'
		when 'ATP02' then 'Injeksi'
		when 'ATP03' then 'Injeksi'
		when 'ATP04' then 'Injeksi'
		when 'ATP05' then 'Injeksi'
		
	end 
where kode_produk in ('ATP01','ATP02','ATP03','ATP04','ATP05');

insert into obat_hewan (kode_produk,nama_barang,stok,harga_jual,harga_beli,category)
	values
		('CAC01','Verm 0 12',20,90000,120000,'Kapsul'),
		('CACO2','Klosan Bolus',25,9000,12000,'Kapsul'),
		('CAC03','Wormfa Bolus',32,6000,7000,'Kapsul'),
		('CAC04','Womzol B-10',42,61500,67500,'Kapsul'),
		('CAC05','Womzol B -24',222,4700,7000,'Kapsul'),
		('CAC06','Womzol K',20,18000,20000,'Kapsul'),
		('CAC07','Albenol 2500',50,48900,54000,'Kapsul'),
		('CAC08','Albendazol 16%',20,8600,10000,'Kapsul'),
		('CAC09','Klosan Bolus 42',15,8700,12000,'Kapsul'),
		('CAC10','Flukiside Bolus',14,8200,13000,'Kapsul');


--	mencari barang terbanyak dengan harga jual termahal
	
	select kode_produk, max(harga_jual) as harga_jual_termahal,sum (stok)as stok_terbanyak
	from obat_hewan 
	group by kode_produk 
	order by harga_jual_termahal desc, stok_terbanyak desc
	limit 3;

--	mencari category alat dengan harga termurah
	select kode_produk , nama_barang, category ,min(harga_jual) as harga_jual_termurah
	from obat_hewan 
	where category  = 'Alat'
	group by kode_produk 
	order by harga_jual_termurah asc 
	limit 1;

--	mendapatkan barang dengan harga beli kurang dari 30000
	
	select kode_produk, nama_barang, category, harga_beli
	from obat_hewan 
	where harga_beli <30000
	order by kode_produk 
	
	-- mencari barang dengan kategori kapsul dengan harga jual tertinggi
	
	select kode_produk,nama_barang,category, max(harga_jual)as harga_jual_termahal
	from obat_hewan 
	where category = 'Kapsul'
	group by kode_produk 
	order by harga_jual_termahal desc 
	limit 1;
	
	-- mencari stok paling sedikit di kategori injeksi

	select kode_produk,nama_barang,category, min (stok) as stok_paling_sedikit
	from obat_hewan
	where category = 'Injeksi'
	group by kode_produk 
	order by stok asc 
	limit 1;
	
	-- mencari harga kategori alat antara 10000 dan 40000

	select kode_produk, nama_barang, category,harga_jual
	from obat_hewan 
	where category = 'Alat' and  harga_jual between 10000 and 40000
	group by kode_produk 
	order by category ;
