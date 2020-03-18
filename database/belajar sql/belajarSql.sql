-- gunakan suatu database
USE dbpenjadwalan;
SHOW TABLES;
DESC klien;
-- input data klien
insert into klien(nama,alamat,email,hp) VALUES
('Tech Muda','Jakarta Selatan','info@techmuda.com','0813xxx'),
('PT. XYZ','Jakarta Timur','info@xyz.com','0821xxx');
-- tampilkan data klien
select *from klien; -- menampilkan semua data klien
select nama,alamat from klien; -- menampilkan sebagian data kolom
select *from klien order by id desc; -- urutkan data klien yang baru diinput
select *from klien order by nama asc; -- urutkan berdasarkan nama
select nama,alamat from klien order by nama; -- urutkan data klien ascending berdasarkan nama

desc jadwalTraining;
-- tampilkan training di bulan maret tahun 2019
select *from jadwalTraining Where tglMulai >= '2019-03-01' and tglMulai <= '2019-03-31';

desc materi;
select *from kategori;

-- input materi kursus baru
insert into materi(kode,nama,idKategori,durasi)VALUES
('DGKD','Design Grafis for Kids',10,20.0),
('AKD','Animation for Kids',10,30.0),
('WDKD','Web Design for Kids',6,40.0);

-- tampilkan materi terbaru
select id,kode,nama,durasi,idKategori from materi order by id desc;

desc materi;

-- tampilkan materi kursus diurutkan berdasarkan durasi terlama 
-- menurut kategorinya masing2 secara ascending

select nama,durasi,idKategori from materi 
order by idKategori asc, durasi desc;

-- buat report jumlah masing2 kategori kursus
select count(idKategori) as jml from materi where idKategori = 1;

select idKategori, count(idkategori) as jml from materi group by idkategori;

update materi set kode = 'WEBK',nama='Web for Kids',durasi=30 where id = 89;

delete from materi where id = 89;

-- join table
-- inner join

select kategori.nama as jenis, count(materi.idkategori) as jml from materi inner join kategori 
on kategori.id = materi.idKategori group by materi.idkategori;

select materi.kode, materi.nama, materi.durasi, kategori.nama as jenis,
count(idkategori) as jml from materi inner join kategori 
on kategori.id = materi.idKategori group by idkategori;

select *from jadwalTraining;

select pengajar.nama, pengajar.kategori, jadwalTraining.asisten,
materi.nama as pelajaran, kategori.nama as category, jenisKelas.nama as jenis, 
klien.nama as pelanggan,
jadwalTraining.tglMulai, jadwalTraining.lokasi
from jadwalTraining 
inner join pengajar on pengajar.id = jadwalTraining.idPengajar
inner join materi on materi.id = jadwalTraining.idMateri
inner join jenisKelas on jenisKelas.id = jadwalTraining.idJenisKelas
inner join klien on klien.id = jadwalTraining.idKlien
inner join kategori on kategori.id = materi.idKategori;

select p.nama, p.kategori, jt.asisten,
m.nama as pelajaran, kt.nama as category, jk.nama as jenis, 
kl.nama as pelanggan,
jt.tglMulai, jt.lokasi
from jadwalTraining jt
inner join pengajar p on p.id = jt.idPengajar
inner join materi m on m.id = jt.idMateri
inner join jenisKelas jk on jk.id = jt.idJenisKelas
inner join klien kl on kl.id = jt.idKlien
inner join kategori kt on kt.id = m.idKategori;


-- outer join




