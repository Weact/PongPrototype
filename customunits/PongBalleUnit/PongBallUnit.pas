unit PongBallUnit;

interface
uses crt, PongGameObjectUnit;

type BALLE = record
	obj : GameObject;
	color : INTEGER;
	velocite : INTEGER;
end;

//Déclaration de toutes les fonctions et procédures utilisables par la suite
//Get : pour récupérer la propriété de l'élément ciblé
//Set : pour définir la propriété de l'élément ciblé
function getBallObject(ball: BALLE) : GameObject;
function getBallColor(ball: BALLE) : INTEGER;
function getBallVelocite(ball: BALLE) : INTEGER;

procedure setBallObject(var ball : BALLE; bObj : GameObject);
procedure setBallColor(var ball: BALLE; cBall : INTEGER);
procedure setBallVelocite(var ball: BALLE; cVel : INTEGER);

implementation

//Ci-dessous : "Initialisation de toutes les fonctions et procedures pour les rendre utilisables par le programme."

function getBallObject(ball: BALLE) : GameObject;
begin
	getBallObject := ball.obj;
end;

function getBallColor(ball: BALLE) : INTEGER;
begin
	getBallColor := ball.color;
end;

function getBallVelocite(ball : BALLE) : INTEGER;
begin
	getBallVelocite := ball.velocite;
end;

procedure setBallObject(var ball : BALLE; bObj : GameObject);
begin
	ball.obj := bObj;
end;

procedure setBallColor(var ball: BALLE; cBall : INTEGER);
begin
	ball.color := cBall;
end;

procedure setBallVelocite(var ball: BALLE; cVel : INTEGER);
begin
	ball.velocite := cVel;
end;

finalization
writeln('Thanks for using PongBallUnit for FPC 3.0.4.');
readln();

end.
