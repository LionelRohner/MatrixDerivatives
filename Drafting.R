

# Derivatives With Matrix

n = 5

construct_derivate_matrix <- function(n){
  
  # construct entries of A
  x <- rep(1:n,n)
  
  # construct A
  A <- matrix(x, ncol = n)
  
  # B = A with diag = {0}
  B <- A
  diag(B) <- 0
  
  # add zero vector
  C <- A - B
  C <- cbind(rep(0,n),C)
  
  # return diagonal matrix with increasing 
  return(C)
}

d_dx <-  construct_derivate_matrix(10)



polynomial = "1+3x+x^5+x^4"
a <- gsub("\\+",",", polynomial)
b <- gsub(",x",",1x", a)
c <- gsub("x,","x^1,",b)
polynomialSplit <- unlist(strsplit(c, ","))

test <- c[3]
length(test)
# 
# index <- substring(test, nchar(test), nchar(test))
# coef <- substring(test, 1,1)

polyVec <- vector(mode="numeric", length=n)

for (term in polynomialSplit){
  if(nchar(term) == 1){
    polyVec[1] <- term
  } else {
    index <- as.numeric(substring(term, nchar(term), nchar(term))) + 1
    coef <- substring(term, 1,1)
    print(term)
    polyVec[index] <- coef
  }
}

polyVec <- as.numeric(polyVec)

