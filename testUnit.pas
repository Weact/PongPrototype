program testUnit;

uses crt, SDL2, PongGameObjectUnit, PongVecteur2DUnit, PongBallUnit;

//Déclaration du coefficiant pour le scalaire
const CoeffVect = 2;

//Déclaration de tous les vecteurs
var V1, V2, V3, V4, V5, V7 : Vect2D;
	V6 : INTEGER;
BEGIN
clrscr;
writeln('Tout s''est correctement deroule.');

//Affectation des positions X/Y du vecteur 1
setVectPosX(V1, 10);
setVectPosY(V1, 15);

//Affectation des positions X/Y du vecteur 2
setVectPosX(V2, 6);
setVectPosY(V2, 21);

//Affection des positions X/Y du vecteur 3 selon les positions X/Y des vecteurs 1 et 2 (addition)
V3 := addVect(V1,V2);

//Affection des positions X/Y du vecteur 4 selon les positions X/Y des vecteurs 1 et 2 (soustraction)
V4 := sousVect(V1,V2);

//Scalaire du Vecteur 1 par la constance du coefficiant
V5 := scalVect(V1,CoeffVect);

//Produit du scalaire par les vecteurs 1 et 2
V6 := prodScal(V1,V2);

//Produit vectoriel par les vecteurs 1 et 2
V7 := prodVect(V1,V2);

//Affichage (debug)
writeln('Position X:Y du Vecteur 1: ' , getPosX(V1) , ':' , getPosY(V1) , '.');
writeln('Position X:Y du Vecteur 2: ' , getPosX(V2) , ':' , getPosY(V2) , '.');
writeln('(+) Position X:Y du Vecteur 3 par addition du vecteur 1 au vecteur 2: ' , getPosX(V3) , ':' , getPosY(V3) , '.');
writeln('(-) Position X:Y du Vecteur 4 par soustraction du vecteur 1 par le vecteur 2 : ' , getPosX(V4) , ':' , getPosY(V4) , '.');
writeln('(SCAL) Position X:Y du Vecteur 5 par le scalaire du vecteur 1 : ' , getPosX(V5) , ':' , getPosY(V5) , '.');
writeln('(PRODSCAL) Produit Scalaire des vecteurs 1 et 2 : ' , V6 , '.');
writeln('(PRODVECT) Position X:Y du Vecteur 7 par produit scalaire des vecteurs 1 et 2 : ' , getPosX(V7) , ':' , getPosY(V7) , '.');
readln();

END.

