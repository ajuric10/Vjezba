
create database zdravstvo;
use zdravstvo;

create table bolnica(
sifra int primary key not null auto_increment,
naziv varchar(50) not null,
lijecnik int,
pacijent int,
odjel int
);



create table lijecnik(
sifra int not null primary key not null auto_increment,
ime varchar(50) not null,
prezime varchar(50) not null,
odjel int,
osoba int,
pacijent int
);



create table odjel(
sifra int not null primary key not null auto_increment,
ime varchar(50) not null,
lijecnik int,
pacijent int 
);



create table pacijent(
sifra int not null primary key not null auto_increment,
ime varchar(50) not null,
prezime varchar(50) not null,
oib int,
osoba int,
odjel int,
datumPrimitka datetime
);



create table osoba(
sifra int not null primary key auto_increment,
ime varchar(50) not null,
prezime varchar(50) not null,
odjel int
);



alter table bolnica add foreign key (lijecnik)
references lijecnik(sifra);

alter table bolnica add foreign key (pacijent)
references pacijent(sifra);

alter table bolnica add foreign key (odjel)
references odjel(sifra);

alter table lijecnik add foreign key (odjel)
references odjel(sifra);

alter table lijecnik add foreign key (osoba)
references osoba(sifra);

alter table pacijent add foreign key (osoba)
references osoba(sifra);


