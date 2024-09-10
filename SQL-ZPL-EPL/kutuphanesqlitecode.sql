CREATE TABLE kullanici (
       id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
       ad VARCHAR(50) NOT NULL,
       soyad VARCHAR(50) NOT NULL,
       dogum_yeri VARCHAR(50),
       dogum_tarihi DATE NOT NULL,
       tel VARCHAR(10) NOT NULL,
       adres TEXT,
       epsota VARCHAR(300) NOT NULL,
       sifre VARCHAR(50) NOT NULL,
       tc_no VARCHAR(11) NOT NULL,
       aktifMi INTEGER NOT NULL
);

ALTER TABLE kullanici
RENAME COLUMN epsota TO eposta

ALTER TABLE kullanici
DROP eposta

ALTER TABLE kullanici
ADD aktifMi VARCHAR(300) NOT NULL DEFAULT 0

-- Kullanıcı Tablosuna Veri Ekleme
INSERT INTO kullanici (id,ad,soyad,dogum_yeri,dogum_tarihi,tel,adres,eposta,sifre,tc_no,aktifMi) 
VALUES (1,'Mehmet', 'KAYA', 'Bursa', '2024-07-09','5455453454','Bursa/Nilüfer','kaya@gmail.com','123456','12312312312',0)

SELECT * FROM kullanici

CREATE TABLE yazar(
       
       id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
       ad VARCHAR(50) NOT NULL,
       soyad VARCHAR(50) NOT NULL,
       dogum_tarihi DATE NOT NULL,
       dogum_yeri VARCHAR(50),
       aciklama TEXT
       
);

-- Yazar Tablosuna Veri Ekleme
INSERT INTO yazar (id,ad,soyad,dogum_tarihi,dogum_yeri,aciklama) 
VALUES (1,'Tolstoy', 'Lev', '1828-09-09','Rusya','ünlü bir yazar')

CREATE TABLE yayinevi(

       id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
       yayinevi_ad VARCHAR(100) NOT NULL,
	     kurulus_tarihi DATE,
	     adres TEXT NOT NULL,
       tel VARCHAR(11) NOT NULL

);

-- Yayınevi Tablosuna Veri Ekleme
INSERT INTO yayinevi (id,yayinevi_ad,kurulus_tarihi,adres,tel)
VALUES (1,'peykanyayın','1999-01-01','Bursa/Nilüfer','5433451232')

SELECT * FROM yayinevi

CREATE TABLE yerbilgisi(

	     id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
	     kat_no INTEGER,
	     kitaplık_no VARCHAR(10) NOT NULL,
       raf_no INTEGER NOT NULL

);

--Yer bilgisi Tablosuna Veri Ekleme
INSERT INTO yerbilgisi (id, kat_no, kitaplık_no, raf_no) 
VALUES (1,0,'A',55)

SELECT * FROM yerbilgisi

CREATE TABLE odunc_alma(

       id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
       kitap_id INTEGER NOT NULL,
       kullanici_id INTEGER NOT NULL,
       odunc_alinan_tarih DATE NOT NULL,
       teslim_edilen_tarih DATE

);

--Ödünç Alma Tablosuna Veri Ekleme
INSERT INTO odunc_alma (id,kitap_id,kullanici_id,odunc_alinan_tarih)
VALUES (1,1,1,'2024-07-08')

SELECT * FROM odunc_alma

CREATE TABLE ceza(
	
	     id INTEGER PRIMARY KEY,
	     kullanici_id INTEGER NOT NULL,
	     geciktirilen_sure INTEGER NOT NULL,
	     para_tutari INTEGER NOT NULL

);

--Ceza Tablosuna Veri Ekleme
Insert INTO ceza (id,kullanici_id,geciktirilen_sure,para_tutari)
VALUES (1,1,10,50)

SELECT * FROM ceza

CREATE TABLE kitap(

       id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
       kitap_adi VARCHAR(100) NOT NULL,
       yazar_id INTEGER NOT NULL,
       sayfa_sayisi INTEGER,
       yayinevi_id INTEGER NOT NULL,
       baski_sayisi INTEGER,
       isbn_no VARCHAR(11) NOT NULL,
       yerbilgisi_id INTEGER NOT NULL

);

--Kitap Tablosuna Veri Ekleme
INSERT INTO kitap (id,kitap_adi,yazar_id,sayfa_sayisi,yayinevi_id,baski_sayisi,isbn_no,yerbilgisi_id)
VALUES (1,'Anne Karenina',1,'435',1,1,'12312312312',1)

SELECT * FROM kitap

--Ödünç Alma Tablosunda Veri Güncelleme
UPDATE odunc_alma SET teslim_edilen_tarih = '2024-07-09' WHERE id = 1

--CEZA Tablosundan Veri Silme
DELETE FROM ceza WHERE id = 1


--Ödünç Alma Tablosuna Sutün Ekleme
ALTER TABLE odunc_alma
ADD geciktirilen_sure INTEGER 

ALTER TABLE odunc_alma
ADD para_tutari INTEGER   

--Ceza Tablosunu Silme
DROP TABLE ceza

SELECT * FROM kitap ORDER BY id DESC LIMIT 100




