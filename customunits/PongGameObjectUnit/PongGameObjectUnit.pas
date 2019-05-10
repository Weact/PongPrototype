unit PongGameObjectUnit;

interface
uses crt, PongVecteur2DUnit;

TYPE GameObject = record
    PositionVect : Vect2D;
    Texture : INTEGER;
end;

//Déclaration de toutes les fonctions et procédures utilisables par la suite
//Get : pour récupérer la propriété de l'élément ciblé
//Set : pour définir la propriété de l'élément ciblé

function getPositionVect(obj : GameObject) : Vect2D;
function getTexture(obj: GameObject) : INTEGER; //Remplacer par Texture quand SDL OK

procedure setPositionVect(var obj : GameObject; posVect : Vect2D);
procedure setTexture(var obj : GameObject; t : INTEGER); //Remplacer par Texture quand SDL OK

implementation

//Ci-dessous : "Initialisation de toutes les fonctions et procedures pour les rendre utilisables par le programme."

function getPositionVect(obj : GameObject) : Vect2D;
begin
	getPositionVect	:= obj.PositionVect;
end;

function getTexture(obj: GameObject): INTEGER; //Remplacer par Texture quand SDL OK
begin
	getTexture := obj.Texture;
end;

procedure setPositionVect(var obj : GameObject; posVect : Vect2D);
begin
	obj.PositionVect := posVect;
end;

procedure setTexture(var obj : GameObject; t : INTEGER); //Remplacer par Texture quand SDL OK
begin
		obj.Texture := t;
end;

finalization
writeln('Thanks for using PongGameObjectUnit for FPC 3.0.4.');
readln();

end.
