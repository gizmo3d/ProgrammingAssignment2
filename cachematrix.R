## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## test fonction donnée par énoncé
## JUST an empty function test for myself for the github side
makeVector <- function(x = numeric()) {
        m <- NULL
        
        ## first function created inside the makeVector function - SET function
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        
        ## second function created inside the makeVector function - GET function
        get <- function() x
        
        ## third function created inside the makeVector function - SETMEAN function
        setmean <- function(mean) m <<- mean
        
        ## fourth function created inside the makeVector function - GETMEAN function
        getmean <- function() m
        
        list(set = set, get = get,
             setmean = setmean,
             getmean = getmean)
}

## fin test fonction donnée par énoncé
##################################################################

makeCacheMatrix <- function(x = matrix()) {

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
