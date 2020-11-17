## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

# This function creates a matrix that cache its inverse:
#First, set x as matrix, then set and get the matrix
#Second, set and get the inverse of the matrix
#Third, return a list with the methods

makeCacheMatrix <- function(x = matrix()) {
  minv <- NULL
  set <- function(y){
    x <<- y
    minv <<- NULL
  }
  get <- function() {x}
  setInverse <- function(inverse) {
    minv <<- inverse
    }
  getInverse <- function() {
    minv
    }
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


## Write a short comment describing this function

# This function computes the inverse of the matrix created by makeCacheMatrix

cacheSolve <- function(x, ...) {
  minv <- x$getInverse()
  if(!is.null(minv)){
    message("obteniendo datos de caché")
    return(minv)
  }
  mt <- x$get()
  minv <- solve(mt, ...)
  x$setInverse(minv)
  minv
}
