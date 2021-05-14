### MatrixDerivatives
Derivate Using Linear Algebra. This is a fun project inspired by this video [Video](https://www.youtube.com/watch?v=TgKwz5Ikpc8).

The idea is that the polynomials of any degree (e.g. ) can be described as a matrix-vector multiplication. More precisely, a matrix (**d/dx**) representing the differentiation of any terms of a polynomial is premultiplied by the vector (**p**) describing the terms of the polynomial.

Differentiation Matrix : <img src="https://latex.codecogs.com/svg.image?\frac{\textbf{d}}{\textbf{dx}}=\begin{bmatrix}&space;0&&space;&space;1&&space;&space;0&&space;&space;0&&space;&space;\cdots&space;\\&space;0&&space;&space;0&&space;&space;2&&space;&space;0&&space;&space;\cdots&space;\\&space;0&&space;&space;0&&space;&space;0&&space;&space;3&&space;&space;\cdots&space;\\&space;0&&space;&space;0&&space;&space;0&&space;&space;0&&space;&space;\cdots&space;\\&space;\vdots&space;&&space;&space;\vdots&space;&&space;&space;\vdots&space;&&space;&space;\vdots&space;&&space;&space;\ddots&space;\\\end{bmatrix}&space;" title="\frac{\textbf{d}}{\textbf{dx}}=\begin{bmatrix} 0& 1& 0& 0& \cdots \\ 0& 0& 2& 0& \cdots \\ 0& 0& 0& 3& \cdots \\ 0& 0& 0& 0& \cdots \\ \vdots & \vdots & \vdots & \vdots & \ddots \\\end{bmatrix} " />

# Example
f(x) = 13+x+3x^2+4x^3

p = 
