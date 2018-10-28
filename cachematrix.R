## Put comments here that give an overall description of what your
## functions do

## this function return the special "matrix" and cache the inverse matrix

makeCacheMatrix <- function(x = matrix()) {
        inver <- NULL
        set <- function(y) {
                x <<- y
                inver <<- NULL
        }
        get <- function() x
        setinver <- function(inv) inver <<- inv
        getinver <- function() inver
        list(set = set, get = get, 
             setinver = setinver, getinver = getinver)
}

my
## this function first checks whether the inverse matrix has already been computed.
## if it was already caculated, it gets the invers matrix from the cache and skip the process.
## if not, it gets inverse of the matrix and set the inverse in the cache via setinver function.

cacheSolve <- function(x, ...) {
        inver <- x$getinver()
        if(!is.null(inver)) {
                message("getting cached data")
                return(inver)
        }
        data <- x$get()
        inver <- solve(data, ...)
        x$setinver(inver)
        inver
        ## Return a matrix that is the inverse of 'x'
}
