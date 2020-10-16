## Put comments here that give an overall description of what your
## functions do

## The following function will set the value of the matrix, get the value of the
## matrix, set the inverse of the matrix and finally get that inverse value.

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y) {
    x <<- y
    inv <- NULL
  }
  get <- function() x
  setinverse <- function(inverse) inv <<- inverse
  getinverse <- function() inv
  list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}

## The following function will check if the matrix introduced was already
## computed previously. If the matrix has not changed, the function would
## return tha value calculated previously, whereas if it changed, it would
## calculate de inverse and assign that new value.

cacheSolve <- function(x, ...) {
  inv <- x$getinverse()
  if (!is.null(inv)) {
    message('Getting cache data')
    return(inv)
  }
  datos <- x$get()
  inv <- solve(data,...)
  x$setinverse(inv)
  return(inv)
}
