val matrix : int list list = [[1,2,3], [4,5,6], [7,8,9]];
val Output = print (matrix)

fun rowToString [] = ""
  | rowToString (matrix::m2) = Int.toString(matrix) ^ " " ^ rowToString(m2);
val Output = rowToString (hd matrix);

fun matrixToString [] = ""
  | matrixToString (matrix::m2) = rowToString(matrix) ^ "\n" ^ matrixToString(m2);
val Output = print ( "\n" ^ matrixToString matrix );

fun item (f, i) =
    if i = 1 then hd f
    else item (tl f, i-1);
val Output = item([4,5,6],2);
val _ = print (rowToString (item (matrix, 3)));

fun ithTerm ([], _) = 0 
  | ithTerm (_, 0) = 0 
  | ithTerm (matrix::_, 1) = matrix
  | ithTerm (_::m2, i) = ithTerm(m2, i-1);

fun column ([], _) = []
  | column (matrix::m2, i) = ithTerm(matrix, i) :: column(m2, i);
val Output = column(matrix,2);


