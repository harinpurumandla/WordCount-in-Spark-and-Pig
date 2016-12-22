A = load './input.txt'; -- Loading the input file (input.txt in this case).
B = foreach A generate flatten(TOKENIZE((chararray)$0)) as token; -- Splitting each line of the input file by space (i.e. one empty character) and then storing each word as token.
C = group B by token; -- Group the output of B based on Token (i.e. to find the similar tokens).
D = foreach C generate group, COUNT(B); -- Count the number of distinct tokens and return the distinct token and its count.
store D into './output'; -- Storing contents of D in output folder
