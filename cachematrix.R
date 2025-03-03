## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

}

# makeCacheMatrix is a new function that give back a list of functions
# one of the objetives is to store a martix and cached value of the inverse of the 
# matrix.
# This functions also contains the following functions:
#getMatrix      get the value of a matrix 
#setMatrix      set the value of a matrix
#cacheInverse   get the cahced value (inverse of the matrix)
#getInverse     get the cahced value (inverse of the matrix


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
# holds the cached value or could give NULL if nothing is cached
# initially nothing is cached so set it to NULL



makecachematrix <- function(x = matrix()) {
  i <- NULL
  set <- function(y) {
    x <<- y
    i <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) i <<- inverse
  getinverse <- function() i
  list(set = set,
       get = get,
       setinverse = setinverse,
       getinverse = getinverse)}

solvecache <- function(x, ...) {
  i <- x$getinverse()
  if (!is.null(i)) {
    message("get cached data")
    return(i)
  }
  data <- x$get()
  i <- solve(data, ...)
  x$setinverse(i)
  i
}
