
# Methods -----------------------------------------------------------------


# 1.1 - Construct derivative matrix ---------------------------------------


construct_derivate_matrix <- function(order){
  
  # construct entries of A
  x <- rep(1:order,order)
  
  # construct A
  A <- matrix(x, ncol = order)
  
  # B = A with diag = {0}
  B <- A
  diag(B) <- 0
  
  # add zero vector
  C <- A - B
  C <- cbind(rep(0,order),C)
  
  # return diagonal matrix with increasing 
  return(C)
}


# 1.2 - Process polynomial ------------------------------------------------


prep_polynomial <- function(polynomial, order){
  
  # string processing:
  # replace + by comma
  a <- gsub("\\+",",", polynomial)
  
  # add coefficients of 1 if missing
  b <- gsub(",x",",1x", a)
  
  # add exponents of 1 if missing (used for indexing)
  c <- gsub("x,","x^1,",b)
  
  # make it iterable
  polynomialSplit <- unlist(strsplit(c, ","))
  
  # loop through polynomial and generate the polynomial vector
  polyVec <- vector(mode="numeric", length=order)
  
  for (term in polynomialSplit){
    
    # if term has length 1 it is expected to be the constant part of the polynomial
    if(nchar(term) == 1){
      polyVec[1] <- term
    } else {
      
      # split terms into index (exponent of the term, i.e. last char) and coef (first char)  
      index <- as.numeric(substring(term, nchar(term), nchar(term))) + 1
      coef <- substring(term, 1,1)
      polyVec[index] <- coef
    }
  }
  # transform to numeric for math operations
  return(as.numeric(polyVec))
}



# 1.3 - Differentiate the polynomial using linear algebra -----------------



matrix_derivative <- function(polyVec, d_dx, order){
  
  # calculate derivative using d_dx matrix
  derivative <- d_dx %*% polyVec
  
  
  # generate a human readable output
  result <- c()
  
  for(i in 1:order){
    
    # first term is just the constant part
    if (i == 1){
      newCoef <- derivative[i]
      newTerm <- paste(i)
    } else {
      
      # terms with degree higher than 0 are constructed using paste
      newCoef <- derivative[i]
      newTerm <- paste("x","^",i - 1, collapse = "", sep = "")
    }
    result <- append(result, paste(newCoef,"*",newTerm, collapse = "", sep = ""))
    
    # inner grepl function (remove zero terms) followed by concatenation
    paste(result[!grepl("^0",result)], sep = "", collapse = "+")
  }
  
  # remove 0 terms
  # result[!grepl("^0",result)]
  
  # make a string
  return(paste(result[!grepl("^0",result)], sep = "", collapse = "+"))
}

# Functions ---------------------------------------------------------------

differentiate_polynomial <- function(polynomial, order){
  
  # 1.) Construct derivative matrix
  d_dx <- construct_derivate_matrix(order = order)
  
  # 2.) Process polynomial
  polyVec <- prep_polynomial(polynomial = polynomial,order = order)
  
  # 3.) Differentiate and return result
  return(matrix_derivative(polyVec = polyVec, d_dx = d_dx, order = order))
}

# Examples ----------------------------------------------------------------

differentiate_polynomial("1+x+x^2+x^3+x^4", order = 4)

differentiate_polynomial("x+x^2", order = 2)
