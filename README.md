### MatrixDerivatives
Derivate Using Linear Algebra. This is a fun project inspired by this video [Video](https://www.youtube.com/watch?v=TgKwz5Ikpc8) by 3 Blue 1 Brown.

[![purple-pi](https://img.shields.io/badge/Rendered%20with-Purple%20Pi-bd00ff?style=flat-square)](https://github.com/nschloe/purple-pi?activate) 

The idea is that the polynomials of any degree (e.g. ) can be described as a matrix-vector multiplication. More precisely, a matrix (**D**) representing the differentiation of any terms of a polynomial is premultiplied by the vector (**p**) describing the terms of the polynomial.

Differentiation Matrix : $\textbf{D}=\frac{\textbf{d}}{\textbf{dx}}=\begin{bmatrix} 0 & 1 & 0 & 0 & 0 & \cdots\\ 0 & 0 & 2 & 0 & 0 & \cdots\\ 0 & 0 & 0 & 3 & 0 & \cdots\\ 0 & 0 & 0 & 0 & 4 & \cdots\\ 0 & 0 & 0 & 0 & 0 & \cdots\\ \vdots & \vdots & \vdots & \vdots & \ddots\end{bmatrix}$

$$\begin{bmatrix} 0 \\ 0 \\ 0 \end{bmatrix}$$

# Example

An example of a third degree polynomial.

$f(x) = 13+x+3x^2+4x^3$

The derivative of the polynomial:

$\frac{\textbf{d}}{\textbf{dx}}(13+x+3x^2+4x^3)=0+1+6x+12x^2$


In matrix notation, the coefficients corresponding to any term are represented in a vector form, where row number are the degrees of the terms. First row corresponds to the constant part of the polynomial.

$\vec{\textbf{p}}= \begin{bmatrix}13 \\1 \\3 \\4 \\0 \\\vdots \end{bmatrix}$

Calculation of $\textbf{D} \vec{p}$

$\begin{bmatrix} 0 & 1 & 0 & 0 & 0 &\cdots \\ 0& 0& 2& 0 & 0&\cdots \\ 0& 0& 0& 3 & 0&\cdots \\ 0& 0& 0& 0 & 4&\cdots \\ 0& 0& 0& 0 & 0&\cdots \\ \vdots & \vdots & \vdots & \vdots & \ddots \end{bmatrix} = \begin{bmatrix}13 \\1 \\3 \\4 \\0 \\\vdots \end{bmatrix} = \begin{bmatrix}1 \\6 \\12 \\0 \\0 \\\vdots \end{bmatrix} =\begin{bmatrix}\text{Constant} \\\text{1st Order Term} \\\text{2nd Order Term} \\\text{3rd Order Term}\\\text{4th Order Term} \\\vdots \end{bmatrix}$
