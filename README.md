## Introduction

You all look very tired.  So let's do a relatively easy lab!  In this
lab you will be exploring overloaded operators.  We started a matrix
class as a group in lecture, and your task is to study that source
code and complete the class!

As you code today's lab, try to make lots of use of git.  As you
complete each task, do a commit and/or a push.  Definitely make sure
to do a push at the end, otherwise I won't be able to grade your
finished lab!

## Studying the Source
Take a look at matrix.h and matrix.cpp.  Make sure you understand what
is going on there.  Look at the insertion and extraction operators,
why are they external?  Look at the scalar multiplication operators.
Why are there two?  We covered this in lecture, but it doesn't hurt to
make sure you understand what is going on.

Take a look at the const designations.  Do you remember what those
were? Why do we have two index operators?  There is a lot to ponder
in so little code!

## Your Contribution
Your contribution is to add the following features to the matrix
objects:

* Scalar Division
* Matrix Subtraction
* Matrix Multiplication

For scalar division, you just need to divide every matrix element by
the scalar.  Matrix subtraction is an element by element subtraction.
Basically these will just be mirror images of the scalar
multiplication and matrix addition operators, so look at those and
follow their example.

Matrix multiplication, however, is more complicated.  If we have two
matrices, A and B, and we have C = A * B, the result will be a
matrix.  In order to multiply A and B, they must have compatible
dimensions.  If A is m x n, B must b n x p.  That is, the number of
columns in A must match the number of rows in B.  The dimension p can
be any number.  The matrix C will have dimensions m x p.

Each element of C is computed as follows:

               n-1
               ___
     c[i][j] = >    a[i][k] * b[k][j]
               ---
               k=0

If you don't like my ASCII art sigma sum notation, fear not!  Here is
some pseudocode to get you started!

     m, n = A.dim()
     n, p = B.dim()
     C = a new matrix with dimensions m, p

     for i = 0 to m-1    (loop over rows)
     	 for j = 0 to p-1 (loop over columns)
	     c[i][j] = 0   (start at 0)
	     for k = 0 to n-1 (loop over the inner dimension)
	     	 c[i][j] += a[i][k] * b[k][j]
	     end for
	 end for
     end for

So really, all you have to do is translate the above pseudocode into
C++ paying close attention to how the operators work.  Make sure that
matrix multiply is a member of the class!


## Testing it Out
Add lines to matrixTest.cpp to make sure that your operators work.  Do
a matrix subtraction, both ways of scalar division, and a matrix
multiply.  For convenience, I have provided a makefile.  You should be
able to build the program by simply typing "make"

