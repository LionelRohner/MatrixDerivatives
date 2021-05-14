### MatrixDerivatives
Derivate Using Linear Algebra. This is a fun project inspired by this video [Video](https://www.youtube.com/watch?v=TgKwz5Ikpc8).

The idea is that the polynomials of any degree (e.g. ) can be described as a matrix-vector multiplication. More precisely, a matrix (**d/dx**) representing the differentiation of any terms of a polynomial is premultiplied by the vector (**p**) describing the terms of the polynomial.

Differentiation Matrix : 
<img src="https://latex.codecogs.com/svg.image?\bg_white&space;\frac{\textbf{d}}{\textbf{dx}}=\begin{bmatrix}&space;0&&space;&space;1&&space;&space;0&&space;&space;0&&space;&space;\cdots&space;\\&space;0&&space;&space;0&&space;&space;2&&space;&space;0&&space;&space;\cdots&space;\\&space;0&&space;&space;0&&space;&space;0&&space;&space;3&&space;&space;\cdots&space;\\&space;0&&space;&space;0&&space;&space;0&&space;&space;0&&space;&space;\cdots&space;\\&space;\vdots&space;&&space;&space;\vdots&space;&&space;&space;\vdots&space;&&space;&space;\vdots&space;&&space;&space;\ddots&space;\\\end{bmatrix}&space;" title="\bg_white \frac{\textbf{d}}{\textbf{dx}}=\begin{bmatrix} 0& 1& 0& 0& \cdots \\ 0& 0& 2& 0& \cdots \\ 0& 0& 0& 3& \cdots \\ 0& 0& 0& 0& \cdots \\ \vdots & \vdots & \vdots & \vdots & \ddots \\\end{bmatrix} " />

# Example
<img src="https://latex.codecogs.com/svg.image?f(x)&space;=&space;13&plus;x&plus;3x^2&plus;4x^3" title="f(x) = 13+x+3x^2+4x^3" />

<img src="https://latex.codecogs.com/svg.image?\frac{\textbf{d}}{\textbf{dx}}(13&plus;x&plus;3x^2&plus;4x^3)=0&plus;1&plus;6x&plus;12x^2" title="\frac{\textbf{d}}{\textbf{dx}}(13+x+3x^2+4x^3)=0+1+6x+12x^2" />

<img src="https://latex.codecogs.com/svg.image?\overrightarrow{\textbf{p}}=&space;\begin{bmatrix}13&space;\\1&space;\\3&space;\\4&space;\\0&space;\\\vdots&space;\end{bmatrix}&space;" title="\overrightarrow{\textbf{p}}= \begin{bmatrix}13 \\1 \\3 \\4 \\0 \\\vdots \end{bmatrix} " />


\begin{bmatrix}
 0&  1&  0&  0 & 0&\cdots \\
 0&  0&  2&  0 & 0&\cdots \\
 0&  0&  0&  3 & 0&\cdots \\
 0&  0&  0&  0 & 4&\cdots \\
 0&  0&  0&  0 & 0&\cdots \\ 
 \vdots & \vdots & \vdots & \vdots & \ddots 
\end{bmatrix} = \begin{bmatrix}
13 \\
1 \\
3 \\
4 \\
0 \\
\vdots 
\end{bmatrix} = 
\begin{bmatrix}
1 \\
6 \\
12 \\
0 \\
0 \\
\vdots 
\end{bmatrix} =
\begin{bmatrix}
\text{Constant} \\
\text{1st Order Term} \\
\text{2nd Order Term} \\
\text{3rd Order Term}\\
\text{4th Order Term} \\
\vdots 
\end{bmatrix}  


