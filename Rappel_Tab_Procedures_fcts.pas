program Rappel_Tableaux_procedures_fcts;
//Utilisation du passage par adresse(ou var) 
//utiliser passage par adresse lors de la modification d'une var
uses crt;

Const

        MAX=10;


Type //Déclaration du type tableau à 2 dim, pour utiliser dans les pramètres fcts
    //ou procédures 


    Tableau2dim=Array[1..MAX,1..MAX]of integer;


procedure initTabT(var T1:Tableau2dim);

    var
        i:integer;
        j:integer;

    Begin

        for i:=1 to MAX do
           Begin
           for j:=1 to MAX do
            Begin
            T1[i,j]:=10;
            end;
        end;

    end;

function initTabT2(var T2:Tableau2dim):integer;

    var
        i:integer;
        j:integer;

    Begin

        for i:=1 to MAX do
           Begin
           for j:=1 to MAX do
            Begin
            T2[i,j]:=1;
            //write(T2[i,j]);
            end;
            //writeln;
        end;

        initTabT2:=1;

    end;


function initTabT3(T3:Tableau2dim):Tableau2dim;

    var
        i:integer;
        j:integer;

    Begin

        for i:=1 to MAX do
           Begin
           for j:=1 to MAX do
            Begin
            T3[i,j]:=5;
            end;
        
        end;

        initTabT3:=T3;

    end;



var


    Matrice:array[1..MAX,1..MAX]of integer;
    Matrice2:array[1..MAX,1..MAX]of integer;
    Matrice3:array[1..MAX,1..MAX]of integer;
    Matrice4:array[1..MAX,1..MAX]of integer;
    i:integer;
    j:integer;
    val:integer;


BEGIN
    clrscr;


    writeln('Programme Tab');
    //Appel Procédure initMatrice avec en paramètre effectif une Matrice
    initTabT(Matrice);

     //affichage de la matrice->Matrice
            for i:=1 to MAX do
                Begin
                    for j:=1 to MAX do
                        Begin
                            write(Matrice2[i,j]);
                    end;
                    writeln;
                end;

   //Appel Fonction initMatrice avec paramètre effectif une Matrice

    val:=initTabT2(Matrice2);

    if(val=1)then
        begin
             //affichage de la matrice->Matrice
            for i:=1 to MAX do
                Begin
                    for j:=1 to MAX do
                        Begin
                            write(Matrice2[i,j]);
                    end;
                    writeln;
                end;

        end;


        Matrice4:=initTabT3(Matrice3);
            //affichage de la matrice->Matrice4
        for i:=1 to MAX do
                Begin
                    for j:=1 to MAX do
                        Begin
                            write(Matrice4[i,j]);
                    end;
                    writeln;
                end;


    writeln;



    readln;


END.

