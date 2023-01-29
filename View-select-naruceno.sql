CREATE OR REPLACE VIEW VIEW1
( PRZ_NAZ
, POGON_PGN_SIF
)
AS SELECT distinct proizvod.prz_naz, proizvod.pogon_pgn_sif
    
FROM proizvod
INNER JOIN narucuje ON proizvod.prz_sif = narucuje.izlaze_prz_sif

INNER JOIN izlaze ON  proizvod.prz_sif = izlaze.proizvod_prz_sif;
