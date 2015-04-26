##  a pair of functions that cache the inverse of a matrix.

##  makeCacheMatrix  a  "matrix", which containing  the following:

 ##   set the value of the matrix
 ##   get the value of the matrix
 ##   set the value of the inverse
 ##   get the value of the inverse


makeCacheMatrix <- function(x = matrix()) {
 i <- NULL                    
                    set <- function(y) {
                                      x <<- y
                                       i <<- NULl
                                            }
                     get <- function() x
                     setinverse <- function(inverse) i <<- inverse
                    getinverse <- function() i
                        list(set = set, get = get,      
                                                           setinverse = setinverse,                                              
                                                          getinverse = getinverse)

}


## calculates the inverse of the  "matrix" that was created with the above mentioned function,
##reusing the catche value.


cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        i <- x$getinverse()
           if(!is.null(i)) {
                           message("getting cached data")
                       return(i)
                         }
               data <- x$get()
                 i <- solve(data)
               x$setinverse(i)
                i
}
