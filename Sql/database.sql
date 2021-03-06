CREATE DATABASE GiaiF1
USE F1
GO

CREATE TABLE Admin(
	id			INT IDENTITY(1,1) PRIMARY KEY
	,userName	NVARCHAR(100)		NOT NULL
	,passWord	NVARCHAR(max)		NOT NULL
)

CREATE TABLE DoiDua(
	idDoi		INT IDENTITY(1,1) PRIMARY KEY
	,tenDoi		NVARCHAR(255)		NOT NULL
	,hang		NVARCHAR(255)		NOT NULL
	,moTa		NVARCHAR(max)		NOT NULL
)

CREATE TABLE ChangDua(
	idChang		INT IDENTITY(1,1) PRIMARY KEY
	,tenChang	NVARCHAR(255)		NOT NULL
	,soVong		INT					NOT NULL
	,diaDiem	NVARCHAR(255)		NOT NULL
	,thoiGian	DATETIME			NOT NULL
	,moTa		NVARCHAR(max)
)

CREATE TABLE TayDua(
	idTayDua	INT IDENTITY(1,1) PRIMARY KEY
	,idDoi		INT					NOT NULL
	,tenTayDua	NVARCHAR(255)		NOT NULL
	,ngaySinh	DATE				NOT NULL
	,quocTich	NVARCHAR(255)		NOT NULL
	,tieuSu		NVARCHAR(max)
	,FOREIGN KEY (idDoi) REFERENCES DoiDua(idDoi)		
)

CREATE TABLE DangKy(
	idDangKy	INT IDENTITY(1,1)	PRIMARY KEY
	,idChang	INT NOT NULL
	,idDoi		INT NOT NULL
	,idTayDua	INT NOT	NULL
	,ngayDK		DATE	NOT NULL
	,FOREIGN KEY (idChang) REFERENCES ChangDua(idChang)
	,FOREIGN KEY (idDoi) REFERENCES DoiDua(idDoi)
	,FOREIGN KEY (idTayDua) REFERENCES TayDua(idTayDua)
	
)
--Insert ChangDua
INSERT INTO ChangDua(tenChang, soVong,diaDiem,thoiGian,moTa) VALUES('Chang 1',5,'Ha Dong','11/30/2018','dia hinh kho');
INSERT INTO ChangDua(tenChang, soVong,diaDiem,thoiGian,moTa) VALUES('Chang 2',4,'Thanh Xuan','12/05/2018','cung duong nhieu goc cua gap');
INSERT INTO ChangDua(tenChang, soVong,diaDiem,thoiGian,moTa) VALUES('Chang 3',6,'My Dinh','12/07/2018','chat luong mat duong rat tot');
INSERT INTO ChangDua(tenChang, soVong,diaDiem,thoiGian,moTa) VALUES('Chang 4',7,'Pho Co','12/08/2018','view dep');
INSERT INTO ChangDua(tenChang, soVong,diaDiem,thoiGian,moTa) VALUES('Chang 5',3,'Ho Tay','12/10/2018','chay quanh ho tay');
INSERT INTO ChangDua(tenChang, soVong,diaDiem,thoiGian,moTa) VALUES('Chang 6',2,'Ba Dinh','12/11/2018','chay qua lang bac');
INSERT INTO ChangDua(tenChang, soVong,diaDiem,thoiGian,moTa) VALUES('Chang 7',8,'Hoan Kiem','12/11/2018','chay qua 5 pho co quanh ho hoan kiem');


--Insert DoiDua
INSERT INTO DoiDua(tenDoi,hang, moTa) VALUES('VietNam', 'VinFast','5 nam vo dich');
INSERT INTO DoiDua(tenDoi,hang, moTa) VALUES('Lao', 'Suzuki','');
INSERT INTO DoiDua(tenDoi,hang, moTa) VALUES('Campuchia', 'Ford','toan ve sau Viet Nam');
INSERT INTO DoiDua(tenDoi,hang, moTa) VALUES('Thai Lan', 'Nissan','');
INSERT INTO DoiDua(tenDoi,hang, moTa) VALUES('Trung Quoc', 'Zoyte','');
INSERT INTO DoiDua(tenDoi,hang, moTa) VALUES('Malaysia', 'VinFast','');
INSERT INTO DoiDua(tenDoi,hang, moTa) VALUES('Myanmar', 'VinFast','');
INSERT INTO DoiDua(tenDoi,hang, moTa) VALUES('Han Quoc', 'HuynDai','');
INSERT INTO DoiDua(tenDoi,hang, moTa) VALUES('Nhat', 'HonDa','vo dich nam 2012');


--Insert TayDua
INSERT INTO TayDua(idDoi,tenTayDua,ngaySinh,quocTich) VALUES(1,'Duy','02/20/1996','Viet Nam');
INSERT INTO TayDua(idDoi,tenTayDua,ngaySinh,quocTich) VALUES(1,'Nam','02/20/1996','Lao');
INSERT INTO TayDua(idDoi,tenTayDua,ngaySinh,quocTich) VALUES(1,'Hai','02/20/1996','Lao');
INSERT INTO TayDua(idDoi,tenTayDua,ngaySinh,quocTich) VALUES(1,'Hoang','02/20/1996','Viet Nam');
INSERT INTO TayDua(idDoi,tenTayDua,ngaySinh,quocTich) VALUES(1,'Lam','02/20/1996','Viet Nam');
INSERT INTO TayDua(idDoi,tenTayDua,ngaySinh,quocTich) VALUES(2,'Canh','02/20/1996','My');
INSERT INTO TayDua(idDoi,tenTayDua,ngaySinh,quocTich) VALUES(2,'Minh','02/20/1996','Han Quoc');
INSERT INTO TayDua(idDoi,tenTayDua,ngaySinh,quocTich) VALUES(2,'Tung','02/20/1996','Viet Nam');
INSERT INTO TayDua(idDoi,tenTayDua,ngaySinh,quocTich) VALUES(2,'Dung','02/20/1996','Nhat Ban');
INSERT INTO TayDua(idDoi,tenTayDua,ngaySinh,quocTich) VALUES(2,'Phong','02/20/1996','Han Quoc');
INSERT INTO TayDua(idDoi,tenTayDua,ngaySinh,quocTich) VALUES(3,'Khai','02/20/1996','Viet Nam');
INSERT INTO TayDua(idDoi,tenTayDua,ngaySinh,quocTich) VALUES(3,'Nguyen','02/20/1996','Lao');
INSERT INTO TayDua(idDoi,tenTayDua,ngaySinh,quocTich) VALUES(3,'Linh','02/20/1996','Viet Nam');
INSERT INTO TayDua(idDoi,tenTayDua,ngaySinh,quocTich) VALUES(3,'Ngoc','02/20/1996','Nhat Ban');
INSERT INTO TayDua(idDoi,tenTayDua,ngaySinh,quocTich) VALUES(3,'Dat','02/20/1996','My');
INSERT INTO TayDua(idDoi,tenTayDua,ngaySinh,quocTich) VALUES(4,'Hung','02/20/1996','Viet Nam');
INSERT INTO TayDua(idDoi,tenTayDua,ngaySinh,quocTich) VALUES(4,'Binh','02/20/1996','Lao');
INSERT INTO TayDua(idDoi,tenTayDua,ngaySinh,quocTich) VALUES(4,'Chung','02/20/1996','Viet Nam');
INSERT INTO TayDua(idDoi,tenTayDua,ngaySinh,quocTich) VALUES(5,'Bo','02/20/1996','Nhat Ban');
INSERT INTO TayDua(idDoi,tenTayDua,ngaySinh,quocTich) VALUES(5,'Truong','02/20/1996','My');
INSERT INTO TayDua(idDoi,tenTayDua,ngaySinh,quocTich) VALUES(5,'Xep','02/20/1996','Viet Nam');
INSERT INTO TayDua(idDoi,tenTayDua,ngaySinh,quocTich) VALUES(5,'Phi','02/20/1996','Han Quoc');
INSERT INTO TayDua(idDoi,tenTayDua,ngaySinh,quocTich) VALUES(5,'Vinh','02/20/1996','Viet Nam');
INSERT INTO TayDua(idDoi,tenTayDua,ngaySinh,quocTich) VALUES(5,'Dang','02/20/1996','My');
INSERT INTO TayDua(idDoi,tenTayDua,ngaySinh,quocTich) VALUES(6,'Viet','02/20/1996','Viet Nam');
INSERT INTO TayDua(idDoi,tenTayDua,ngaySinh,quocTich) VALUES(6,'Hoan','02/20/1996','Viet Nam');
INSERT INTO TayDua(idDoi,tenTayDua,ngaySinh,quocTich) VALUES(7,'Chien','02/20/1996','Nhat Ban');
INSERT INTO TayDua(idDoi,tenTayDua,ngaySinh,quocTich) VALUES(7,'Son','02/20/1996','Lao');
INSERT INTO TayDua(idDoi,tenTayDua,ngaySinh,quocTich) VALUES(7,'Thuc','02/20/1996','Viet Nam');
INSERT INTO TayDua(idDoi,tenTayDua,ngaySinh,quocTich) VALUES(7,'Khanh','02/20/1996','Viet Nam');
INSERT INTO TayDua(idDoi,tenTayDua,ngaySinh,quocTich) VALUES(8,'Dai','02/20/1996','My');
INSERT INTO TayDua(idDoi,tenTayDua,ngaySinh,quocTich) VALUES(8,'Thang','02/20/1996','Han Quoc');
INSERT INTO TayDua(idDoi,tenTayDua,ngaySinh,quocTich) VALUES(8,'Tan','02/20/1996','Nhat Ban');
INSERT INTO TayDua(idDoi,tenTayDua,ngaySinh,quocTich) VALUES(8,'Duan','02/20/1996','Viet Nam');
INSERT INTO TayDua(idDoi,tenTayDua,ngaySinh,quocTich) VALUES(8,'Cuong','02/20/1996','My');
INSERT INTO TayDua(idDoi,tenTayDua,ngaySinh,quocTich) VALUES(9,'Giang','02/20/1996','Lao');
INSERT INTO TayDua(idDoi,tenTayDua,ngaySinh,quocTich) VALUES(9,'Dien','02/20/1996','Viet Nam');
INSERT INTO TayDua(idDoi,tenTayDua,ngaySinh,quocTich) VALUES(9,'Thao','02/20/1996','Viet Nam');
