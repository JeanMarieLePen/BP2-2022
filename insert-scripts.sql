--CREATE TABLE zaposleni (
--    zap_sif           VARCHAR2(30) NOT NULL,
--    zap_ime           VARCHAR2(100) NOT NULL,
--    zap_prz           VARCHAR2(100) NOT NULL,
--    zap_adr           VARCHAR2(100),
--    zap_ulg           VARCHAR2(14) NOT NULL,
--    kompanija_kom_mbr VARCHAR2(30) NOT NULL
--);
--CREATE TABLE kompanija (
--    kom_mbr VARCHAR2(30) NOT NULL,
--    kom_pib VARCHAR2(30),
--    kom_naz VARCHAR2(100) NOT NULL,
--    kom_adr VARCHAR2(100),
--    kom_brz INTEGER
--);

insert into kompanija(kom_mbr, kom_pib, kom_naz, kom_adr, kom_brz) values ('123KOM', '1234-54321-32133326', 'EdePro', 'Beograd, Batajnica', 352);
insert into kompanija(kom_mbr, kom_pib, kom_naz, kom_adr, kom_brz) values ('234KOM', '3324-54321-32133326', 'Prva Petoletka', 'Uzice', 500);
insert into kompanija(kom_mbr, kom_pib, kom_naz, kom_adr, kom_brz) values ('345KOM', '4321-4321-4321', 'Krusik Valjevo', 'Valjevo', 120);



insert into zaposleni(zap_sif, zap_ime, zap_prz, zap_adr, zap_ulg, kompanija_kom_mbr) values ('123ZAP', 'Marko', 'Markovic', 'Surcin, Stefana Decanskog', 'ADM_RADNIK', '123KOM');
insert into zaposleni(zap_sif, zap_ime, zap_prz, zap_adr, zap_ulg, kompanija_kom_mbr) values ('123ZAP', 'Vasilije', 'Djurovic', 'Cacak, Despota Stefana', 'ADM_RADNIK', '234KOM');

insert into zaposleni(zap_sif, zap_ime, zap_prz, zap_adr, zap_ulg, kompanija_kom_mbr) values ('555ZAP', 'Nenad', 'Mandic', 'Beograd, Cara Lazara', 'RADNIK', '345KOM');

insert into zaposleni(zap_sif, zap_ime, zap_prz, zap_adr, zap_ulg, kompanija_kom_mbr) values ('123KOMER', 'Danijel', 'Ivanovic', 'Sremska Mitrovica, Puskinova 12', 'KOMERCIJALISTA', '123KOM');


insert into zaposleni(zap_sif, zap_ime, zap_prz, zap_adr, zap_ulg, kompanija_kom_mbr) values ('666PROJ', 'Ana', 'Knezevic', 'Vranje, Sindjeliceva', 'PROJEKTANT', '234KOM');

--CREATE TABLE adm_radnik (
--    zap_sif VARCHAR2(30) NOT NULL,
--    zap_ime VARCHAR2(100) NOT NULL,
--    zap_prz VARCHAR2(100) NOT NULL,
--    zap_adr VARCHAR2(100),
--    zap_ulg VARCHAR2(100) NOT NULL,
--    kom_mbr VARCHAR2(30) NOT NULL
--);

insert into adm_radnik(zap_sif, zap_ime, zap_prz, zap_adr, zap_ulg, kom_mbr) values ('123ZAP', 'Marko', 'Markovic', 'Surcin, Stefana Decanskog', 'ADM_RADNIK', '123KOM');
insert into adm_radnik(zap_sif, zap_ime, zap_prz, zap_adr, zap_ulg, kom_mbr) values ('123ZAP', 'Vasilije', 'Djurovic', 'Cacak, Despota Stefana', 'ADM_RADNIK', '234KOM');

--CREATE TABLE radnik (
--    zap_sif        VARCHAR2(30) NOT NULL,
--    zap_ime        VARCHAR2(100) NOT NULL,
--    zap_prz        VARCHAR2(100) NOT NULL,
--    zap_adr        VARCHAR2(100),
--    zap_ulg        VARCHAR2(100) NOT NULL,
--    kom_mbr        VARCHAR2(30) NOT NULL,
--    radnik_zap_sif VARCHAR2(30),
--    radnik_kom_mbr VARCHAR2(30),
--    rad_sef        NUMBER NOT NULL,
--    pogon_pgn_sif  VARCHAR2(30) NOT NULL
--);


--CREATE TABLE pogon (
--    pgn_sif           VARCHAR2(30) NOT NULL,
--    pgn_naz           VARCHAR2(100) NOT NULL,
--    pgn_adr           VARCHAR2(100),
--    pgn_prv           TIMESTAMP WITH LOCAL TIME ZONE,
--    pgn_brl           INTEGER,
--    kompanija_kom_mbr VARCHAR2(30) NOT NULL
--);

insert into pogon(pgn_sif, pgn_naz, pgn_adr, pgn_prv, pgn_brl, kompanija_kom_mbr) values ('345POGON', 'POGON ZEMUN 1', 'Desanke Maksimovic, BB, Zemun', '15/Jan/2015 5', 4, '345KOM');
insert into pogon(pgn_sif, pgn_naz, pgn_adr, pgn_prv, pgn_brl, kompanija_kom_mbr) values ('234POGON', 'POGON NOVI SAD 1', 'Lava Nikolajevica, BB, Novi Sad', '15/Jan/2023 10', 15, '345KOM');
insert into pogon(pgn_sif, pgn_naz, pgn_adr, pgn_prv, pgn_brl, kompanija_kom_mbr) values ('123POGON', 'POGON BEOCIN 1', 'Industrijska zona, BB', '15/Jan/2023 8', 2, '123KOM');


insert into radnik(zap_sif, zap_ime, zap_prz, zap_adr, zap_ulg, kom_mbr, radnik_zap_sif, radnik_kom_mbr, rad_sef, pogon_pgn_sif) values ('555ZAP', 'Nenad', 'Mandic', 'Beograd, Cara Lazara', 'RADNIK', '345KOM', '555ZAP', '345KOM', 1, '123POGON');
--zap_sif VARCHAR2(30) NOT NULL,
--    zap_ime VARCHAR2(100) NOT NULL,
--    zap_prz VARCHAR2(100) NOT NULL,
--    zap_adr VARCHAR2(100),
--    zap_ulg VARCHAR2(100) NOT NULL,
--    kom_mbr VARCHAR2(30) NOT NULL,
--    prj_sef NUMBER NOT NULL


insert into projektant(zap_sif, zap_ime, zap_prz, zap_adr, zap_ulg, kom_mbr, prj_sef) values ('666PROJ', 'Ana', 'Knezevic', 'Vranje, Sindjeliceva', 'PROJEKTANT', '234KOM', 1);

--CREATE TABLE razvojni_tim (
--    tim_brc INTEGER,
--    tim_sif VARCHAR2(30) NOT NULL
--);
insert into razvojni_tim(tim_brc, tim_sif) values (20, '234KOM-TIM1');
insert into razvojni_tim(tim_brc, tim_sif) values (20, '234KOM-TIM2');

--CREATE TABLE projekat (
--    prj_sif VARCHAR2(30) NOT NULL,
--    prj_naz VARCHAR2(100) NOT NULL,
--    prj_sts VARCHAR2(30)
--);
insert into projekat(prj_sif, prj_naz, prj_sts) values ('777Project', 'Automatski minobacac 82mm', 'ODOBREN');
insert into projekat(prj_sif, prj_naz, prj_sts) values ('888Project', 'Napredni sistem upravljanja vatrom', 'ODOBREN');

--CREATE TABLE kreira (
--    razvojni_tim_tim_sif VARCHAR2(30) NOT NULL,
--    projekat_prj_sif     VARCHAR2(30) NOT NULL
--);
insert into kreira(razvojni_tim_tim_sif, projekat_prj_sif) values ('234KOM-TIM1', '777Project');
insert into kreira(razvojni_tim_tim_sif, projekat_prj_sif) values ('234KOM-TIM2', '888Project');

--CREATE TABLE cini (
--    razvojni_tim_tim_sif VARCHAR2(30) NOT NULL,
--    projektant_zap_sif   VARCHAR2(30) NOT NULL,
--    projektant_kom_mbr   VARCHAR2(30) NOT NULL
--);
insert into cini(razvojni_tim_tim_sif, projektant_zap_sif, projektant_kom_mbr) values ('234KOM-TIM1', '666PROJ', '234KOM');


--CREATE TABLE ugovor (
--    ugv_sif                VARCHAR2(30) NOT NULL,
--    ugv_dat                DATE NOT NULL,
--    ugv_brj                INTEGER NOT NULL,
--    adm_radnik_zap_sif     VARCHAR2(30) NOT NULL,
--    adm_radnik_kom_mbr     VARCHAR2(30) NOT NULL,
--    ugv_sts                VARCHAR2(30) NOT NULL,
--    predstavnistvo_pre_sif VARCHAR2(30)
--);
--CREATE TABLE predstavnistvo (
--    pre_sif           VARCHAR2(30) NOT NULL,
--    pre_adr           VARCHAR2(100),
--    pre_pib           VARCHAR2(30) NOT NULL,
--    pre_kon           VARCHAR2(100),
--    pre_mbr           VARCHAR2(30) NOT NULL,
--    kompanija_kom_mbr VARCHAR2(30) NOT NULL
--);

--CREATE TABLE komercijalista (
--    zap_sif VARCHAR2(30) NOT NULL,
--    zap_ime VARCHAR2(100) NOT NULL,
--    zap_prz VARCHAR2(100) NOT NULL,
--    zap_adr VARCHAR2(100),
--    zap_ulg VARCHAR2(100) NOT NULL,
--    kom_mbr VARCHAR2(30) NOT NULL
--);
insert into komercijalista(zap_sif, zap_ime, zap_prz, zap_adr, zap_ulg, kom_mbr) values ('123KOMER', 'Danijel', 'Ivanovic', 'Sremska Mitrovica, Puskinova 12', 'KOMERCIJALISTA', '123KOM');
--CREATE TABLE deo (
--    deo_sif VARCHAR2(30) NOT NULL,
--    deo_ser VARCHAR2(30) NOT NULL,
--    deo_str NUMBER NOT NULL,
--    deo_dom NUMBER NOT NULL
--);


insert into deo(deo_sif, deo_ser, deo_str, deo_dom) values ('DEO-ID-1', '13244LL', 1, 0);
insert into deo(deo_sif, deo_ser, deo_str, deo_dom) values ('DEO-ID-2', '525DD', 0, 1);
insert into deo(deo_sif, deo_ser, deo_str, deo_dom) values ('DEO-ID-41', 'GFFFx01', 0, 1);

--CREATE TABLE nabavlja (
--    komercijalista_zap_sif VARCHAR2(30) NOT NULL,
--    komercijalista_kom_mbr VARCHAR2(30) NOT NULL,
--    deo_deo_sif            VARCHAR2(30) NOT NULL
--);

insert into nabavlja(komercijalista_zap_sif, komercijalista_kom_mbr, deo_deo_sif) values ('123KOMER', '123KOM', 'DEO-ID-1');
insert into nabavlja(komercijalista_zap_sif, komercijalista_kom_mbr, deo_deo_sif) values ('123KOMER', '123KOM', 'DEO-ID-41');

--CREATE TABLE proizvod (
--    prz_sif       VARCHAR2(30) NOT NULL,
--    prz_naz       VARCHAR2(100) NOT NULL,
--    prz_dom       NUMBER NOT NULL,
--    prz_str       NUMBER NOT NULL,
--    pogon_pgn_sif VARCHAR2(30) NOT NULL
--);
insert into proizvod(prz_sif, prz_naz, prz_dom, prz_str, pogon_pgn_sif) values ('11-9mm-2022', 'MKS99', 1, 0, '123POGON');
insert into proizvod(prz_sif, prz_naz, prz_dom, prz_str, pogon_pgn_sif) values ('33-152-1996', 'MLRS-21', 1, 0, '123POGON');
insert into proizvod(prz_sif, prz_naz, prz_dom, prz_str, pogon_pgn_sif) values ('44-12mm-2010', 'SASR-91', 0, 1, '123POGON');
insert into proizvod(prz_sif, prz_naz, prz_dom, prz_str, pogon_pgn_sif) values ('111-UAV-2017', 'UAV-ORLAN', 0, 1, '123POGON');
insert into proizvod(prz_sif, prz_naz, prz_dom, prz_str, pogon_pgn_sif) values ('999-155mm-2022', 'SMART-Shells', 1, 0, '123POGON');
insert into proizvod(prz_sif, prz_naz, prz_dom, prz_str, pogon_pgn_sif) values ('19-FMJ-ammo', 'Full-metal-jacket-ammunition', 1, 0, '123POGON');
--CREATE TABLE kupac (
--    kup_mbr VARCHAR2(30) NOT NULL,
--    kup_pib VARCHAR2(30) NOT NULL,
--    kup_naz VARCHAR2(100) NOT NULL,
--    kup_adr VARCHAR2(100),
--    kup_dom NUMBER NOT NULL,
--    kup_str NUMBER NOT NULL
--);


--CREATE TABLE ugradjivanje (
--    deo_deo_sif      VARCHAR2(30) NOT NULL,
--    proizvod_prz_sif VARCHAR2(30) NOT NULL
--);
insert into ugradjivanje values ('DEO-ID-1', '999-155mm-2022');
insert into ugradjivanje values ('DEO-ID-1', '111-UAV-2017');
insert into ugradjivanje values ('DEO-ID-2', '33-152-1996');



insert into kupac(kup_mbr, kup_pib, kup_naz, kup_adr, kup_dom, kup_str) values ('KUP01','1224FFd242','WA Export','Beograd, Zagrebacka 44', 1, 0);
insert into kupac(kup_mbr, kup_pib, kup_naz, kup_adr, kup_dom, kup_str) values ('BUYER-224','64737326','Military Gear','Main st 2, Hull, UK', 0, 1);
insert into kupac(kup_mbr, kup_pib, kup_naz, kup_adr, kup_dom, kup_str) values ('URLVGN-123','8858DddAdw','??????????????','Moscow City', 0, 1);
insert into kupac(kup_mbr, kup_pib, kup_naz, kup_adr, kup_dom, kup_str) values ('Rhein-123','42155252','Rheinmetall','Berlin', 0, 1);
insert into kupac(kup_mbr, kup_pib, kup_naz, kup_adr, kup_dom, kup_str) values ('Crcl-555','636363dw','Caracal','Dubai, UAE', 0, 1);

insert into predstavnistvo (pre_sif, pre_adr, pre_pib, pre_kon, pre_mbr, kompanija_kom_mbr) values ('123PRE', 'Novi Sad, Svetozara Miletica', '5325-2424-245525', '021/2234-4242', 'PRE1', '123KOM');
insert into predstavnistvo (pre_sif, pre_adr, pre_pib, pre_kon, pre_mbr, kompanija_kom_mbr) values ('223PRE', 'Cacak, Jakova Nenadovica', '46345-4242-67774', '011/563-4242', 'PRE2', '234KOM');
insert into ugovor (ugv_sif, ugv_dat, ugv_brj, adm_radnik_zap_sif, adm_radnik_kom_mbr, ugv_sts, predstavnistvo_pre_sif) values ('123UGV', '15/Jan/2015', 12345, '123ZAP', '123KOM', 'CEKA_POTPIS', '123PRE');
insert into ugovor (ugv_sif, ugv_dat, ugv_brj, adm_radnik_zap_sif, adm_radnik_kom_mbr, ugv_sts, predstavnistvo_pre_sif) values ('88UGV', '12/Jun/2026', 8846332, '123ZAP', '234KOM', 'AKTIVAN', '223PRE');

--CREATE TABLE izlaze (
--    proizvod_prz_sif       VARCHAR2(30) NOT NULL,
--    predstavnistvo_pre_sif VARCHAR2(30) NOT NULL
--);

insert into izlaze(proizvod_prz_sif, predstavnistvo_pre_sif) values('11-9mm-2022', '123PRE');
insert into izlaze(proizvod_prz_sif, predstavnistvo_pre_sif) values('33-152-1996', '123PRE');
insert into izlaze(proizvod_prz_sif, predstavnistvo_pre_sif) values('19-FMJ-ammo', '123PRE');


--CREATE TABLE narucuje (
--    izlaze_prz_sif VARCHAR2(30) NOT NULL,
--    izlaze_pre_sif VARCHAR2(30) NOT NULL,
--    kupac_kup_mbr  VARCHAR2(30) NOT NULL
--);
insert into narucuje(izlaze_prz_sif, izlaze_pre_sif, kupac_kup_mbr) values ('11-9mm-2022', '123PRE', 'KUP01');
insert into narucuje(izlaze_prz_sif, izlaze_pre_sif, kupac_kup_mbr) values ('11-9mm-2022', '123PRE', 'BUYER-224');
insert into narucuje(izlaze_prz_sif, izlaze_pre_sif, kupac_kup_mbr) values ('33-152-1996', '123PRE', 'BUYER-224');
insert into narucuje(izlaze_prz_sif, izlaze_pre_sif, kupac_kup_mbr) values ('33-152-1996', '123PRE', 'URLVGN-123');
insert into narucuje(izlaze_prz_sif, izlaze_pre_sif, kupac_kup_mbr) values ('33-152-1996', '123PRE', 'Crcl-555');
insert into narucuje(izlaze_prz_sif, izlaze_pre_sif, kupac_kup_mbr) values ('11-9mm-2022', '123PRE', 'Crcl-555');

--CREATE TABLE stavka (
--    stv_sif          VARCHAR2(30) NOT NULL,
--    stv_kol          INTEGER NOT NULL,
--    stv_ozn          VARCHAR2(100) NOT NULL,
--    stv_naz          VARCHAR2(100) NOT NULL,
--    stv_cen          FLOAT(3) NOT NULL,
--    ugovor_ugv_sif   VARCHAR2(30) NOT NULL,
--    proizvod_prz_sif VARCHAR2(30) NOT NULL
--);
insert into stavka(stv_sif, stv_kol, stv_ozn, stv_naz, stv_cen, ugovor_ugv_sif, proizvod_prz_sif) values ('STV-01', 1500, 'FMJ ammo', 'full metal jacket ammunition', 7000, '123UGV', '19-FMJ-ammo');
insert into stavka(stv_sif, stv_kol, stv_ozn, stv_naz, stv_cen, ugovor_ugv_sif, proizvod_prz_sif) values ('STV-02', 200000, 'MLRS-guided ammo', 'MLRS guided shells', 5000000, '123UGV', '999-155mm-2022');
insert into stavka(stv_sif, stv_kol, stv_ozn, stv_naz, stv_cen, ugovor_ugv_sif, proizvod_prz_sif) values ('STV-03', 200, 'UAVs', 'UAV-combat drone', 250000000, '123UGV', '111-UAV-2017');
