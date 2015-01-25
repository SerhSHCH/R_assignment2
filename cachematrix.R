## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function


# save initial matrix and define methods for setting/getting the inverse matrix

makeCacheMatrix <- function(x = matrix()) {
  inv<-NULL
  M<<-x
  get<-function() M
  setInv<-function(invM) inv<<-invM
  getInv<-function() inv
  list(get=get,setInv=setInv,getInv=getInv)
}


## Write a short comment describing this function

'
 check whether inverse Matrix has been already calculated
 If yes - return calculated inverse matrix
 if no - calculate inverse matrix and save to the input object to prevent redundant calculation
'

cacheSolve <- function(x, ...) {
  inv<-x$getInv()
  if (!is.null(inv)){
    message('get cache')
    return(inv)
  }
  
  message('calculate')
  inv<-solve(x$get())
  x$setInv(inv)
  inv
  
  ## Return a matrix that is the inverse of 'x'
}
