% HW0: some simple excerises to get started with MATLAB. Please complete by
% the second class. Answer questions in comments and return assignment via
% github
%% numbers vs strings
%Run the following two sections. explain why one gives a sensible result and the other doesn't
% extra credit: can you explain the value of the variable b? 
% GB Answer: This section defines x as an integer, which can be used in
% subsquent functions to compute a value. 
x = 1; 
y = x + x
%%  GB continued answer: Here we have defined 'a' as a character '1' instead of an integer. 
% As a result, this translates to an ASCII value of 49. Because 'b' is calling to add the variable 'a' twice, 
% it will force and add the ASCII value 49+49...resulting in the value 98. 
a = '1';
b = a+a
%% concatenation
% what is being done by the following statements? what is the difference between x2 and a2? 
% what is the difference between x2 and x2b (hint run the size command on
% these arrays and explain the results). 
% GB answer: x2 is calling for the integer defined as x (which is a value
% of 1) to concatenate into a 1x2 matrix
% a2 has simply concatenated the character '1' into what is perceived to be
% a value of 11, but is still a character variable called '11'
% x2b is calling the integers to be allocated into a 2x1 matrix
x2 = [x x]

a2 = [a a]

x2b = [x; x]

%% = vs ==, isequal
% explain why the identical commands with the == commands give different answers 
% hint: check the values of a and b as you execute the following statements
% if necessary. 
% GB Answer: initially a and b are defined as seperate values, a==b will
% return a false statement because they are incongurant. Next, a is
% redfined to be the same value as b, so a==b will return a value of 1,
% meaning true. 
a = 1; b =2; 

a == b
a = b;
a == b


%%
%explain why the following gives an error:
% GB Answer: comparing different matrix dimensions will return false or in this case dimensions don't agree.
% linear algebra says no
x2b == x2
%%
% explain the result of this nearly equivalent operation
% GB answer: isequal returns true, or 1, if the contents x2b and x2 are of
% equal size and contents are equal in value. The contents are equal,
% however their size or matrix construction is not equal (i.e. comparing
% 2x1 vs a 1x2). 
isequal(x2b,x2)
%%
%change these two lines by adding a single character to each such that the
%they both evaluate to true and neither gives an error:

% GB Answer: isequal(x2b,x2.')

%% explain why the following gives an error:
% GB Answer: I believe this section was repeated on accident? 
x2b == x2

%explain the result of this nearly equivalent operation
isequal(x2b,x2)



%%  : operator 
%(hint for the following type "help colon" at the command line to see
% how the ":" operator works
% the following makes an array of the numbers from one to ten: 
oneToTen = 1:10;

%here are two ways to make the array of numbers from 1 to twenty
%explain how the second line works.

% GB Answer: above oneToTen is defined as a sequence of integers spaning from 1 to 10
% with steps of 1. The second line has concatenated a matrix calling
% oneToTen first, which numerates 1 through 10. Next we have called
% oneToTen+10. Meaning it is adding the values defined in the variable
% oneToTen to the integer 10. This results in a similar sequence has saying
% 1:20. 

1:20
[oneToTen, oneToTen+10]

% do each of the following in two different ways, by manipulating the array
% oneToTen and by defining it concisely from scratch

% 

% 1. even numbers from two to twenty

% GB Answer: [oneToTen(2:2:end), oneToTen(2:2:end)+10] or 2:2:20
% 

% 2. odd numbers from one to nineteen

% GB Answer: [oneToTen(1:2:end), oneToTen(1:2:end)+10] or 1:2:19

% 3. Even numbers in reverse order from twenty to two (hint lookup the
% matlab function fliplr)

% GB Answer:  v = [oneToTen(2:2:end), oneToTen(2:2:end)+10]; fliplr(v) or fliplr(2:2:20)



% explain why the fliplr funciton no longer works and find a different
% matlab function that performs an equivalent function on the same array

% GB Answer: oneToTen has been transposed from a row to a column vector. As
% a result it will return the orginal array

oneToTen = oneToTen';
fliplr(oneToTen)

%% matrices, . operator

%look at the matrix this defines. Note the other functions zeros, eye, and
%rand which can define matrices. 

m1 = ones(2);
m2 = 2*ones(2);

%explain the output of these two commands:
m1*m2
%GB Answer: mutiplying matrix m1 by m2. They are of equal dimensions and
%essentially return a matrix of [2 2; 2 2]

m1.*m2

% GB Answer: This is mutiply element by element within the array to return [2 2; 2 2] 
%explain this command:
m2./m1
% GB Answer: element by element command for divison returns 2/1=2 results
% in [2 2; 2 2] 

%extra credit: explain why this command gives a warning:
m2/m1

%% access particular elements and groups of elements

%define a random matrix

rand_nums = rand(5);

%explain what is being done in each of the following lines

rand_nums(2,3)
% GB Answer: grabing the element in row 2 column 3 of the random generated
% matrix

rand_nums(2:4,3)
% GB Answer: grabbing all the elements in rows 2 through 4 within column 3
% to produce a 3 x 1 matrix

rand_nums(1:2,3:4)
% GB Answer: grabbing elements in rows 1/2 and columns 3/4 to generating a 2x2 matrix  
rand_nums(:,2)
% GB Answer: retrieving all the rows within column 2
rand_nums(1,:)
% GB Answer: retrieving all the columns within row 1
rand_nums(:,[1 3 5])

% GB Answer: retrieves all the rows within columns 1 3 and 5. 