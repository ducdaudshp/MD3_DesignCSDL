create database QuanLyDiemThi1;
use QuanLyDiemThi1;

create table HocSinh(
    MaHS varchar (20) primary key,
    TenHS varchar (50),
    NgaySinh datetime,
    Lop varchar(50),
    GT varchar (20)
);

create table MonHoc(
    MaMH varchar (20) primary key,
    TenMH varchar (50)
);

create table BangDiem(
    MaHS varchar (20),
    MaMH varchar (20),
    DiemThi int,
    NgayKT datetime,
    primary key (MaHS, MaMH),
    foreign key (MaHS) references HocSinh(MaHS),
    foreign key (MaMH) references MonHoc(MaMH)
);

create table GiaoVien(
    MaGV varchar (20) primary key,
    TenGV varchar (50),
    SDT varchar (20)
);

alter table MonHoc add MaGV varchar(20);
alter table MonHoc add constraint FK_MaGV foreign key (MaGV) references GiaoVien(MaGV);

select * from HocSinh;

insert into HocSinh values ('hs1','luong',12/2/1999,'c1221h1','nam');
insert into HocSinh values ('hs2','duc',1/1/2000,'c1221h1','nam');
insert into HocSinh values ('hs3','anh',2/12/1991,'c1221h1','nu');
insert into HocSinh values ('hs4','huyen',5/4/1998,'c1221h1','nu');
insert into HocSinh values ('hs5','duong',19/13/1998,'c12','nam');
insert into HocSinh values ('hs6','Hieu',1/1/2001/12/13/58,'c12','nu');
insert into HocSinh values ('hs7','quan','1999/1/12 11:21:11','c12','nam');