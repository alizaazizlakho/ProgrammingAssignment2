## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  index <- NULL
  set <- function(y) {
    x <<- y
    index <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) index <<- inverse
  getinverse <- function() index
  list(set = set,
       get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  index <- x$getinverse()
  if (!is.null(index)) {
    message("getting cached data")
    return(i)
  }
  value <- x$get()
  index <- solve(value, ...)
  x$setinverse(index)
  i
}
