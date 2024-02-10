# SML-Matrix-operations

In this assignment, you will implement a few functions that manipulate matrices,
which are represented using two dimensional lists.
For example, the variable x below
val x = [[1,2,3], [4,5,6], [7,8,9]];
represents a matrix.
1 2 3
4 5 6
7 8 9
where [1,2,3] is the row 1 2 3, [4,5,6] is the row 4 5 6, and [7,8,9] is the
row 7 8 9.
1. Write a function rowToString : int list -> string that converts a
row (int list) to a string. For example rowToString [1,2,3]; should
return the string "1 2 3 " (it is okay to have a trailing space).
2. Write a function matrixToString : int list list -> string that con-
verts a matrix (int list list) to a string. For example matrixToString x;
should return the string "1 2 3 \n4 5 6 \n7 8 9 \n".
SML has a builtin function print that can print string to console. For
example, print (matrixToString x) will print the following:
1 2 3
4 5 6
7 8 9
3. Write a function item : ’a list * int -> ’a that returns the ith item
of a list. For example item ([1,2,3], 2) should return 2 and item (x, 2)
should return [4,5,6] (i.e. the second row of x).
4. Write a function column: ’a list list * int -> ’a list that returns
the ith column of a matrix. For example column (x, 2) should return
the second column of the matrix x, which is [2,5,8].

2 Test cases
val x = [[1,2,3],[4,5,6],[7,8,9]];
- print (matrixToString x);
1 2 3
4 5 6
7 8 9
- print (rowToString (item (x, 2)));
4 5 6
- column (x, 3);
val it = [3,6,9] : int list
