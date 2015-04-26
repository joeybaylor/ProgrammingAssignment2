##The following functions are being submitted for Programming Assignment 2: Lexical Scoping

##This function creates a special matrix object that can cache its inverse
##I took the makeVector function provided in the assignment instructions and modified 
##the code to create a special "matrix"

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

##The following function calculates the inverse of the special "matrix" created above
##I took the cachemean provided in the assignment instructions and modified the code to
##to calculate the inverse instead of the mean

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








