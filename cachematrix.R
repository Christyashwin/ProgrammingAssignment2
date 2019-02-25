## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## the function makeCacheMatrix is basically a variable x which is a matrix
makeCacheMatrix <- function(x = matrix()) {
i <- NULL ##Assigning NULL to i
set <-function(y) {
  x<<-y ## Here we are assigning y to x which is not in the same environment
  i<<-NULL## Likewise for i
} ## The two initial values have been set now
get<-function()x ##Here we set the inverse of the function get it.
setinverse<-function(inverse)i <<-inverse
getinverse <- function()i
list(set = set,
     get = get,
     setinverse = setinverse,
     getinverse = getinverse)
}


## Write a short comment describing this function
## Once the inverse of the matrix has been computed, 
##cacheSolve basically retreives that back and displays it
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  i<-x$getinverse() 
  if(!is.null(i)){
    message("getting cached data")
    return(i)
  }## if i is not empty it displays "getting cached data"
  data<-x$get()
  i<-solve(data,...)
  x$setinverse(i)
  i
}

