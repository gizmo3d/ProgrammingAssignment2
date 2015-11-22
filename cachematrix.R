## - makeCacheMatrix asks for a square matrix as input, and return its invert
## - cacheSolve takes the same input matrix to return either its cached version or called makeCacheMatrix
## to compute it for the first time (needed once to put in the cache)
## ------------------------------------------------------------------------
## Examples : 
##    myMatrix <- makeCacheMatrix(matrix((1:4), ncol=2)
##    cacheSolve(myMatrix)
##    cacheSolve(myMatrix)


## makeCacheMatrix is the function to be called FIRST, before the function cacheSolve 
makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  
  get <- function() x
  
  setInvertMatrix <- function(solve) m <<- solve
  
  getInvertMatrix <- function() m
  
  list(set = set, get = get,
       setInvertMatrix = setInvertMatrix,
       getInvertMatrix = getInvertMatrix)
}


########################################
## cacheSolve is the function to be called AFTER the function makeCacheMatrix
cacheSolve <- function(x, ...) {
  m <- x$getInvertMatrix()
  
  ## testing if the invert matrix has already been calculated
  ## and thus is cached in RAM
  if(!is.null(m)) {
    message("getting cached data")
    ## it is the case, we directly return this stored value
    ## in cache and quit(exit) the function without running the
    ## lines below
    return(m)
  }
  
  ## these lines below are executed ONLY if the invert matrix
  ## has not been found in the cache
  data <- x$get()
  m <- solve(data, ...)
  x$setInvertMatrix(m)
  m
}
