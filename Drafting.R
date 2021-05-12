

# Derivatives With Matrix

d_dx = matrix()

n = 
  
  diag(seq(1,10))

seq(1,10) %*% diag(10)


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

construct_derivate_matrix(10)
