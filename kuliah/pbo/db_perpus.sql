
v
    id_buku int(9),
    id_anggota int(9),
    id_petugas int(9)
);


ALTER TABLE rak ADD FOREIGN KEY (id_buku) REFERENCES buku(id_buku);

ALTER TABLE peminjaman ADD FOREIGN KEY (id_buku) REFERENCES buku(id_buku);
ALTER TABLE peminjaman ADD FOREIGN KEY (id_anggota) REFERENCES anggota(id_anggota);
ALTER TABLE peminjaman ADD FOREIGN KEY (id_petugas) REFERENCES petugas(id_petugas);

ALTER TABLE pengembalian ADD FOREIGN KEY (id_buku) REFERENCES buku(id_buku);
ALTER TABLE pengembalian ADD FOREIGN KEY (id_anggota) REFERENCES anggota(id_anggota);
ALTER TABLE pengembalian ADD FOREIGN KEY (id_petugas) REFERENCES petugas(id_petugas);
		     

insert into anggota values('7574581','F1G119018','Yuyun Sulistiawati','P','Ilmu Komputer','085256572880','Jalan Kancil');
insert into anggota values('7632121','F1G119023','Yudis Sulistio','L','Farmasi','081342561221','BTN Wirabuana');
insert into anggota values('7891119','F1G119030','Zahria Juliani','P','Matematika','085340421898','BTN Tawang Alun');

insert into buku values('282913','DI241','Sang Pemimpi','Andrea Hirata','Bentang Pustaka','2011','13');
insert into buku values('8189141','DA357','Kimia Dasar II','Raymond','Erlangga','2005','80');
insert into buku values('9198281','DB325','Pemrograman Java','Abdul Kadir','Grasindo','2018','50');

insert into petugas values('60610063','Zuhdi Zalfin','085278790662','Lapulu');
insert into petugas values('60613001','Sindi Aulia','085234351220','BTN Asatata');
insert into petugas values('60617002','Zuni Mulyansri','081290918228','BTN Perumnas Poasia');

insert into rak values('1541002','Novel','282913');
insert into rak values('1567001','Buku Kimia','8189141');
insert into rak values('1623003','Buku Pemrograman','9198281');

insert into peminjaman values('1617803','2020-09-04','2020-09-14','9198281','7632121','60613001');
insert into peminjaman values('1618204','2020-10-12','2020-10-20','282913','7574581','60617002');
insert into peminjaman values('1619302','2020-12-03','2020-12-06','8189141','7891119','60610063');	     

insert into pengembalian values('2324122','2020-09-14','15.000','9198281','7632121','60613001');
insert into pengembalian values('2324171','2020-10-20','20.000','282913','7574581','60617002');
insert into pengembalian values('2324560','2020-12-06','10.000','8189141','7891119','60610063');	

select peminjaman.id_peminjaman,peminjaman.tanggal_pinjam,buku.id_buku,buku.judul_buku,anggota.id_anggota,anggota.nama_anggota from peminjaman join buku on peminjaman.id_buku=buku.id_buku join anggota on peminjaman.id_anggota=anggota.id_anggota


select pengembalian.id_pengembalian,pengembalian.tanggal_pengembalian,pengembalian.denda,buku.id_buku,buku.judul_buku,anggota.id_anggota,anggota.nama_anggota,petugas.id_petugas,petugas.nama_petugas from pengembalian join buku on pengembalian.id_buku=buku.id_buku join anggota on pengembalian.id_anggota=anggota.id_anggota join petugas on pengembalian.id_petugas=petugas.id_petugas

select rak.id_rak,rak.nama_rak,buku.id_buku,buku.judul_buku from rak join buku on rak.id_buku=buku.id_buku 