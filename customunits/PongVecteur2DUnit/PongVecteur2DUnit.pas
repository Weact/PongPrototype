unit PongVecteur2DUnit;

interface
uses crt;

TYPE Vect2D = record
	posX : INTEGER;
	posY : INTEGER;
end;

//Déclaration de toutes les fonctions et procédures utilisables par la suite
//Get : pour récupérer la propriété de l'élément ciblé
//Set : pour définir la propriété de l'élément ciblé

function getPosX(Vect : Vect2D) : INTEGER;
function getPosY(Vect : Vect2D) : INTEGER;
procedure setVectPosX(var Vect : Vect2D; X : INTEGER);
procedure setVectPosY(var Vect : Vect2D; Y : INTEGER);


//Fonctions vectorielles
function addVect(Vect1 : Vect2D; Vect2 : Vect2D) : Vect2D;
function sousVect(Vect1 : Vect2D; Vect2 : Vect2D) : Vect2D;
function scalVect(Vect1 : Vect2D; Coeff : INTEGER) : Vect2D;
function prodScal(Vect1 : Vect2D; Vect2 : Vect2D) : INTEGER;
function prodVect(Vect1 : Vect2D; Vect2 : Vect2D) : Vect2D;

implementation

//Ci-dessous : "Initialisation de toutes les fonctions et procedures pour les rendre utilisables par le programme."

function getPosX(Vect : Vect2D) : INTEGER;
begin
	getPosX := Vect.posX;
end;

function getPosY(Vect : Vect2D) : INTEGER;
begin
	getPosY := Vect.posY;
end;

procedure setVectPosX(var Vect : Vect2D; X : INTEGER);
begin
	Vect.posX := X;
end;

procedure setVectPosY(var Vect : Vect2D; Y : INTEGER);
begin
	Vect.posY := Y;
end;

function addVect(Vect1 : Vect2D; Vect2 : Vect2D) : Vect2D;
begin
	addVect.posX := (Vect1.posX + Vect2.posX);
	addVect.posY := (Vect1.posY + Vect2.posY);
end;

function sousVect(Vect1 : Vect2D; Vect2 : Vect2D) : Vect2D;
begin
	sousVect.posX := (Vect1.posX - Vect2.posX);
	sousVect.posY := (Vect1.posY - Vect2.posY);
end;

function scalVect(Vect1 : Vect2D; Coeff : INTEGER) : Vect2D;
begin
	scalVect.posX := (Vect1.posX * Coeff);
	scalVect.posY := (Vect1.posY * Coeff);
end;


function prodScal(Vect1 : Vect2D; Vect2 : Vect2D) : INTEGER;
begin
	prodScal := (Vect1.posX * Vect2.posX) + (Vect1.posY * Vect2.posY);
end;

function prodVect(Vect1 : Vect2D; Vect2 : Vect2D) : Vect2D;
begin
	prodVect.posX := (Vect1.posY - Vect2.posY);
	prodVect.posY := (Vect1.posX - Vect2.posX);
end;


finalization
writeln('Thanks for using PongVecteur2DUnit for FPC 3.0.4.');
readln();

end.