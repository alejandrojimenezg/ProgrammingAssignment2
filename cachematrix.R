## Put comments here that give an overall description of what your
## functions do

## The following function will set the value of the matrix, get the value of the
## matrix, set the inverse of the matrix and finally get that inverse value.

makeCacheMatrix <- function(x = matrix()) {
  inversa <- NULL
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) inversa <<- inverse
  getinverse <- function() inversa
  list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}

## The following function will check if the matrix introduced was already
## computed previously. If the matrix has not changed, the function would
## return tha value calculated previously, whereas if it changed, it would
## calculate de inverse and assign that new value.

cacheSolve <- function(x, ...) {
  inversa <- x$getinverse()
  if (!is.null(inversa)) {
    message('Getting cached data')
    return(inversa)
  }
  datos <- x$get()
  inversa <- solve(datos, ...)
  x$setinverse(inversa)
  inversa
}
