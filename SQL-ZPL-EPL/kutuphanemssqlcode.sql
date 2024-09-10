CREATE TABLE yazar (

	id INTEGER PRIMARY KEY,
	ad VARCHAR(50) NOT NULL,
	soyad VARCHAR(50) NOT NULL,
	dogum_tarihi DATE NOT NULL,
	dogum_yeri VARCHAR(50),
	aciklama TEXT 

);

CREATE TABLE yayinevi(

	id INTEGER PRIMARY KEY,
	yayinevi_ad VARCHAR(100) NOT NULL,
	kurulus_tarihi DATE,
	adres TEXT NOT NULL,
	tel VARCHAR(11) NOT NULL

);

CREATE TABLE yerbilgisi(

	id INTEGER PRIMARY KEY,
	kat_no INTEGER,
	kitapl�k_no VARCHAR(10) NOT NULL,
	raf_no INTEGER NOT NULL,

);

CREATE TABLE odunc_alma(

	id INTEGER PRIMARY KEY,
	kitap_id INTEGER NOT NULL,
	kullanici_id INTEGER NOT NULL,
	odunc_alinan_tarih DATE NOT NULL,
	teslim_edilen_tarih DATE,

);

CREATE TABLE ceza(
	
	id INTEGER PRIMARY KEY,
	kullanici_id INTEGER NOT NULL,
	geciktirilen_sure INTEGER NOT NULL,
	para_tutari INTEGER NOT NULL,

);


-- Kullan�c� Tablosuna Veri Ekleme
INSERT INTO kullanici (id,ad,soyad,dogum_yeri,dogum_tarihi,tel,adres,eposta,sifre,tc_no,aktifMi) 
VALUES (1,'Mehmet', 'KAYA', 'Bursa', '2024-07-09','5455453454','Bursa/Nil�fer','kaya@gmail.com','123456','12312312312',0)

-- Yazar Tablosuna Veri Ekleme
INSERT INTO yazar (id,ad,soyad,dogum_tarihi,dogum_yeri,aciklama) 
VALUES (1,'Tolstoy', 'Lev', '1828-09-09','Rusya','�nl� bir yazar')

-- Yay�nevi Tablosuna Veri Ekleme
INSERT INTO yayinevi (id,yayinevi_ad,kurulus_tarihi,adres,tel)
VALUES (1,'peykanyay�n','1999-01-01','Bursa/Nil�fer','5433451232')

--Yer bilgisi Tablosuna Veri Ekleme
INSERT INTO yerbilgisi (id, kat_no, kitapl�k_no, raf_no) 
VALUES (1,0,'A',55)

--Kitap Tablosuna Veri Ekleme
INSERT INTO kitap (id,kitap_adi,yazar_id,sayfa_sayisi,yayin_evi_id,baski_sayisi,isbn_no,yer_bilgisi_id)
VALUES (1,'Anne Karenina',1,'435',1,1,'12312312312',1)

--�d�n� Alma Tablosuna Veri Ekleme
INSERT INTO odunc_alma (id,kitap_id,kullanici_id,odunc_alinan_tarih)
VALUES (1,1,1,'2024-07-08')

--Ceza Tablosuna Veri Ekleme
Insert INTO ceza (id,kullanici_id,geciktirilen_sure,para_tutari)
VALUES (1,1,10,50)

--Eklenilen Verileri �ekme
SELECT * FROM kullanici
SELECT * FROM kitap
SELECT * FROM yazar
SELECT * FROM yayinevi
SELECT * FROM yerbilgisi
SELECT * FROM odunc_alma
SELECT * FROM ceza

--�d�n� Alma Tablosunda Veri G�ncelleme
UPDATE odunc_alma SET teslim_edilen_tarih = GETDATE() WHERE id = 1

--CEZA Tablosundan Veri Silme
DELETE FROM ceza WHERE id = 1

--�d�n� Alma Tablosuna Sut�n Ekleme
ALTER TABLE odunc_alma
ADD geciktirilen_sure INTEGER ,para_tutari INTEGER 

--Ceza Tablosunu Silme
DROP TABLE ceza

SELECT TOP(100) * FROM kitap ORDER BY id DESC