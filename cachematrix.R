## Put comments here that give an overall description of what your
## functions do

## 1. Set the value of matrix
## 2. get the value of matrix
## 3. Set the inverse of matrix
## 4. Set the inverse of matrix

makeCacheMatrix <- function(x = matrix()) {
    m <- Null
    set <- function(y){
        x <<- y
        m <<- Null
    }
    get <- function()x
    setinverse <- function(inverse)m <<- inverse
    getinverse <- function()m
    list(set = set, get = get,
         setinverse = setinverse,
         getinverse = getinverse)
    
}


## First there is a check whether the inverse of the matrix is calucated or not.
## If this is the case, it returns inverse of a Matrix.
## Otherwise the inverse of matrix will be computed and inverse of a matrix 
## through setInverse function will be set.  

cacheSolve <- function(x, ...) {
    m <- x$getinverse()
    if(!is.null(m)){
        message('getting cached data')
        return(m)
    }
    data <- x$get()
    m <- solve(data,...)
    x$setinverse(m)
    m
    
}
