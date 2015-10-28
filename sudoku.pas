program generator_sudoku;

var
  tablica : array[1..9, 1..9] of Integer;
     i, j : Integer;

begin

 for i := 1 to 9 do  
  for j := 1 to 9 do
	 begin
	    // randomize;
	     tablica[i,j] := random(9)+1;
   end;
  


 


// wyświetlanie
  for i := 1 to 9 do
    begin
  	  writeln;
	 	  for j := 1 to 9 do
		    write(tablica[i,j], ' ');
    end;

   // readln;

end.


  //  losuj a1
  //    aż do 
  //      wszystkie z rzędu są inne
  //      wszystkie z kolumny są inne
  //      wszystkie z boxa są inne

  //   losuj A2


  //  losowanie 9 różnych liczb dla A B C D E F G H I
  //    sprawdzenie rzędu
  //    sprawdzenie kolumny
  //    sprawdzenie boxa

 

  //       A1 A2 A3  A4 A5 A6  A7 A8 A9
  //       B1 B2 B3  B4 B5 B6  B7 B8 B9
  //       C1 C2 C3  C4 C5 C6  C7 C8 C9

  //       D1 D2 D3  D4 D5 D6  D7 D8 D9
  //       E1 E2 E3  E4 E5 E6  E7 E8 E9
  //       F1 F2 F3  F4 F5 F6  F7 F8 F9

  //       G1 G2 G3  G4 G5 G6  G7 G8 G9
  //       H1 H2 H3  H4 H5 H6  H7 H8 H9
  //       I1 I2 I3  I4 I5 I6  I7 I8 I9


	//       1 2 3  4 5 6  7 8 9
  //       4 5 6  7 8 9  1 2 3
  //       7 8 9  1 2 3  4 5 6

  //       2 3 4  5 6 7  8 9 1
  //       5 6 7  8 9 1  2 3 4
  //       8 9 1  2 3 4  5 6 7
 
  //       3 4 5  6 7 8  9 1 2
  //       6 7 8  9 1 2  3 4 5
  //       9 1 2  3 4 5  6 7 8

