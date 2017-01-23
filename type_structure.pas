program Type_structure;

uses crt;

Const

        MAX=10;

Type
     point = record

         x, y, z : real;

end;

Type //Déclaration du type tableau à 2 dim, pour utiliser dans les pramètres fcts
    //ou procédures

    matricePoint=Array[1..MAX,1..MAX]of point;



procedure init (var matPoint:matricePoint);
    
    var 
        i,j:integer;


    begin

         //Init matrice point
    for i:=1 to MAX do 
        begin
            for j:=1 to MAX do 
                begin

                    matPoint[i,j].x:=1.2;
                    matPoint[i,j].y:=2.2;
                    matPoint[i,j].z:=3.3;
                end;
                writeln;
        end;


    end;



//programme principal

var
    mPoint:point;
    matPoint:MatricePoint;
    i,j:integer;

    
BEGIN
    clrscr;

    writeln('Programme Type structure');
    
    mPoint.x:=0.0;
    mPoint.y:=0.0;
    mPoint.z:=0.0;

    writeln('x :',mPoint.x:1:2);
    writeln('y :',mPoint.y:1:2);
    writeln('z :',mPoint.z:1:2);

      //Init matrice point
    init (matPoint);


        //Affichage matrice
    for i:=1 to MAX do 
        begin
            for j:=1 to MAX do 
                begin

                  
                    write(matPoint[i,j].x:1:2,' ');
                    write(matPoint[i,j].y:1:2,' ');
                    write(matPoint[i,j].z:1:2,' ');
                end;
                writeln;
        end;
   

    readln;


END.

