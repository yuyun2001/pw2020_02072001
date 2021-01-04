create database db_apotik;

use db_apotik;

create table obat(id_obat int(11) not null primary key auto_increment,
		  nama varchar(50),
		  jenis varchar(50),
		  harga varchar(50),
		  stock varchar(50));

create table supplier(id_supplier int(11) not null primary key auto_increment,
		      nama varchar(50),
		      alamat varchar(50),
		      kota varchar(50),
		      no_telp varchar(15));

create table pelanggan(id_pelanggan int(11) not null primary key auto_increment,
		       nama varchar(50),
		       alamat varchar(50),
		       jekel varchar(50),
		       pekerjaan varchar(50));

create table karyawan(id_karyawan int(11) not null primary key auto_increment,
		      nama varchar(50),
		      alamat varchar(50),
		      kota varchar(50),
		      status varchar(50),
		      no_telp varchar(12));

CREATE TABLE faktur_supply(no_supply int(11) NOT null PRIMARY KEY AUTO_INCREMENT,
                           tanggal date,
                           jumlah_obat varchar(25),
                           total varchar(25),
                           pajak varchar(25),
                           total_bayar varchar(25),
                           id_karyawan int (11),
                           id_supplier int(11),
                           id_obat int (11));

CREATE TABLE faktur_penjualan(no_jual int(11) NOT null PRIMARY KEY AUTO_INCREMENT,
                           tanggal date,
                           jumlah_obat varchar(25),
                           total varchar(25),
                           pajak varchar(25),
                           total_bayar varchar(25),
                           id_karyawan int (11),
                           id_supplier int(11),
                           id_obat int (11));

alter table faktur_supply add constraint id_karyawan foreign key(id_karyawan) references karyawan(id_karyawan);
alter table faktur_supply add constraint id_supplier foreign key(id_supplier) references supplier(id_supplier);
alter table faktur_supply add constraint id_obat foreign key(id_obat) references obat(id_obat);
alter table faktur_penjualan add constraint id_karyawan1 foreign key(id_karyawan) references karyawan(id_karyawan);
alter table faktur_penjualan add constraint id_supplier2 foreign key(id_supplier) references supplier(id_supplier);
alter table faktur_penjualan add constraint id_obat3 foreign key(id_obat) references obat(id_obat);


insert into obat values('1','paracetamol','penurun panas','4000','12'),('2','amoxcilin','pereda nyeri','5000','22');
insert into supplier values('1','Gusti','jl.ruruhi','kendari','082213132323'),('2','Paska','jl.manunggal','toraja','085535534344');
insert into pelanggan values('1','satya','perumnas','l','pns'),('2','yuni','perumnas','p','irt');
insert into karyawan values('1','a','perumnas','kendari','belum nikah','089239497647'),('2','b','batu marupa','kendari','nikah','0822334455');
insert into faktur_supply values('1','2020-12-31','2','10','5','50','d','k','l');
insert into faktur_penjualan values('1','2020-10-31','3','111','3','50','mm','kk','jj');
