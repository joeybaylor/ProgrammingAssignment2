
##The following functions are being submitted for Programming Assignment 2: Lexical Scoping

##This function creates a special matrix object that can cache its inverse
##I took the makeVector function provided as the assignment example and modified 
##the code to calculate the inverse for a matrix

makeCacheMatrix <- function(x=matrix()) {
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setinverse <- function(inverse) m <<-inverse
        getinverse <- function() m
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)
        
}

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        m <- x$getinverse()                     
        if ( !is.null(m)) {
                print("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$setinverse(m)
        m
}

















