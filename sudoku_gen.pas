program sudoku_ver2;

var
	 tablica : array[0..80] of Integer;
	 testowa : array[1..9] of Integer;
	 i, j, x, l, k : Integer;
	 suma_testowa : Integer;
   next : Boolean;

   rzad, xx, counter : Integer;



function pion(): Boolean;
  begin
      pion := true;
      xx := x;
    
    if (x <= 8) then
      rzad := 1

    else   
      rzad := (x div 9); 
        for k:= 1 to rzad do
          begin  
            xx := xx-9;
           if (tablica[xx] = l) then
            pion := false;
          end;                 
  end;

function poziom(): Boolean;
  begin
    poziom := true;
    xx := x;

  if (x = 0) or (x mod 9 = 0) then
    poziom := true
  else
    if (x > 0) and (x <= 8) then
      repeat
         xx := xx-1;
           if (tablica[xx] = l) then
              poziom := false;
      until (xx = 0)

    else
  
      repeat
         xx := xx-1;
           if (tablica[xx] = l) then
              poziom := false;
      until (xx mod 9 = 0);
  end;

function kwadrat(): Boolean;
   begin
   	kwadrat := true;
  end;

 

begin
  randomize;

counter := 0;
  x := 0;
  suma_testowa := 0;
// zerowanie całej tablicy
  for i:= 0 to 80 do
    tablica[i] := 0;


  repeat
    // cyfry 1-9 do umieszczenia
      for i := 1 to 9 do
        testowa[i] := i;

         
         repeat
            // test
                    counter := counter+1;
                    writeln('    *********************** licznik ', counter);
            
            // losowanie  
              l := random(9)+1;
              testowa[l] := 0; // zaznaczanie, że ta cyfra już była sprawdzana
              next := false;
              suma_testowa := 0;
              for j:= 1 to 9 do
                  suma_testowa := suma_testowa + testowa[j];

 writeln(x, ' *********** test poziom ', poziom, ' pion ', pion, ' losowana ', l, ' testowa ', suma_testowa);
            // testy na pion, poziom i kwadrat
            if pion and poziom and kwadrat then

              begin

                tablica[x] := l;
                x := x+1;
                next := true;
              end;

          until (next = true) or (suma_testowa = 0);

               

            if (suma_testowa = 0) then
              x := x-9; //cofamy o jeden


        
  until x = 81;


// wyświetlanie
  for i := 0 to 80 do
   begin 
     write(tablica[i], ' ');
     if ((i+1) mod 9 = 0) then
       writeln;
    end;
  
end.



 0  1  2     3 	4  5     6 	7  8  
 9 10 11    12 13 14    15 16 17 
18 19 20    21 22 23    24 25 26 

27 28 28    30 31 32    33 34 35 
36 37 38    39 40 41    42 43 44 
45 46 47    48 49 50    51 52 53 

54 55 56    57 58 59    60 61 62 
63 64 65    66 67 68    69 70 71 
72 73 74    75 76 77    78 79 80 

