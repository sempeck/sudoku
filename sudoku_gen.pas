program sudoku_ver2;

var
	 tablica : array[0..80] of Integer;
	 testowa : array[1..9] of Integer;
	 i, x, l : Integer;
	 suma_testowa : Integer;


function pion(): Boolean;
begin
  pion := true;
end;

function poziom(): Boolean;
begin
	poziom := true;
end;

function kwadrat(): Boolean;
begin
	kwadrat := true;
end;


begin
  randomize;

  x := 0;

  repeat

// tablica ze wszystkimi cyframi
    for i := 1 to 9 do
      testowa[i] := i;

// losowanie  
    l := random(9)+1;
    testowa[l] := 0; // zaznaczanie, że ta cyfra już była sprawdzana


// testy na pion, poziom i kwadrat
  if pion and poziom and kwadrat then

    begin
      tablica[x] := l;
      x := x+1;
    end

  else

    for i:= 1 to 9 do
      suma_testowa := suma_testowa + testowa[i];

      if suma_testowa = 0 then

         x := x-1; //cofamy o jeden
     
        


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

