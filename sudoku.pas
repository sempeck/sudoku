program generator_sudoku;

var
          tablica : array[1..9, 1..9] of Integer;
     k, i, j, los : Integer;
           czysto : Boolean;
         


begin
randomize;

 for i := 1 to 9 do  
	  for j := 1 to 9 do
	  	begin
          
         repeat

						los := random(9)+1;
            czysto := true;
            k := 1;


						  		 repeat 	              
			              
				              if (los = tablica[i,k]) or (los = tablica[k,j]) then  //poziom i pion
			                   begin
				                   writeln('*test false. i ', i, ' j ', j, ' k ', k);
				                   czysto := false;
				                   
			                   end
			                else
			                   czysto := true;
			                
			                k := k+1;

		               until (k = 9) or (czysto = false);

            if (czysto = true) then
              tablica[i,j] := los;
 
         until czysto = true;


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

// TO DO:
// 1. box test
// 2. reverse mechanism


 1  2  3 	 4  5  6 	 7  8  9
10 11 12 	13 14 15 	16 17 18
19 20 21 	22 23 24 	25 26 27

28 28 30 	31 32 33 	34 35 36
37 38 39 	40 41 42 	43 44 45
46 47 48 	49 50 51 	52 53 54

55 56 57 	58 59 60 	61 62 63
64 65 66 	67 68 69 	70 71 72
73 74 75 	76 77 78 	79 80 81


if tablica[i,j]
	        [1,1][1,2][1,3] [1,4][1,5][1,6] [1,7][1,8][1,9]
	        [2,1][2,2][2,3] [2,4][2,5][2,6] [2,7][2,8][2,9]
	        [3,1][3,2][3,3] [3,4][3,5][3,6] [3,7][3,8][3,9]

	        [4,1][4,2][4,3] [4,4][4,5][4,6] [4,7][4,8][4,9]
	        [5,1][5,2][5,3] [5,4][5,5][5,6] [5,7][5,8][5,9]
	        [6,1][6,2][6,3] [6,4][6,5][6,6] [6,7][6,8][6,9]

	        [7,1][7,2][7,3] [7,4][7,5][7,6] [7,7][7,8][7,9]
	        [8,1][8,2][8,3] [8,4][8,5][8,6] [8,7][8,8][8,9]
	        [9,1][9,2][9,3] [9,4][9,5][9,6] [9,7][9,8][9,9]

if i in [1..3] and j in [1..3] then
  // box1
if i in [1..3] and j in [4..6] then
  // box2
if i in [1..3] and j in [7..9] then
  // box3




	//       1 2 3  4 5 6  7 8 9
  //       4 5 6  7 8 9  1 2 3
  //       7 8 9  1 2 3  4 5 6

  //       2 3 4  5 6 7  8 9 1
  //       5 6 7  8 9 1  2 3 4
  //       8 9 1  2 3 4  5 6 7
 
  //       3 4 5  6 7 8  9 1 2
  //       6 7 8  9 1 2  3 4 5
  //       9 1 2  3 4 5  6 7 8


