/*
 IFT2935 - BASE DE DONNÉE
 Devoir#2 - ALGÈBRE RELATIONNEL & SQL
 Auteurs : @Nahomy Durand (20201414) & @Mariam Traoré (20114254)
 Remise : 5 mars 2024
 */

START TRANSACTION;

-- Modifier le indIP dans tous les tableaux
ALTER TABLE Segment
MODIFY indIP VARCHAR(14);
ALTER TABLE Salle
MODIFY indIP VARCHAR(14);
ALTER TABLE Poste
MODIFY indIP VARCHAR(14);

-- Modifier le nSalle dans tous les tableau
ALTER TABLE Salle
MODIFY nSalle VARCHAR(5);
ALTER TABLE Poste
MODIFY nSalle VARCHAR(5);

-- Modifier le nLog dans tous les tableau
ALTER TABLE Logiciel
MODIFY nLog VARCHAR(10);
ALTER TABLE Installer
MODIFY nLog VARCHAR(10);

-- Modifier le nPoste dans tous les tableau
ALTER TABLE Poste
MODIFY nPoste VARCHAR(5);
ALTER TABLE Installer
MODIFY nPoste VARCHAR(5);

-- Modifier dateIns pour NULL; 
ALTER TABLE Installer
MODIFY dateIns DATE NULL;

COMMIT;
