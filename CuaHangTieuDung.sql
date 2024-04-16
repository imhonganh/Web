create database CuaHangTieuDung
go
use CuaHangTieuDung

create table LoaiSP
(
MaLoai nvarchar(10) not null primary key,
TenLoai nvarchar(50)
)

create table SanPham
(
MaSP nvarchar(10) not null primary key ,
TenSP nvarchar(100),
DonGia float, 
DonViTinh nvarchar (50),
HinhSP nvarchar(200),
MaLoai nvarchar(10) constraint fk_MaLoai foreign key (MaLoai) references LoaiSP(MaLoai)
)
