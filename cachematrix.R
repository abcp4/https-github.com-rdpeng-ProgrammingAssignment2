## Put comments here that give an overall description of what your
## functions do


#######################Description##############################
#They take a matrix, creating sub-functions that manipulate it, and create a cache of it,
# for that when one has already calculated the inverse value of a nxn matrix, does not need
#repeat the same process for another identical matrix.



## Write a short comment describing this function
#it create sub functions that work on the matrix, just like other object oriente programming
# langua like java, but with the scoping of R, so that one need to compute the cache before
# getting the actual inverse.

makeCacheMatrix <- function(x = matrix()) {
  
  c <- NULL
  set <- function(y) {
    x <<- y
    c <<- NULL
  }
  get <- function(){
    x  
  } 
  setinverse <- function(inverse){
    c <<- inverse
  }
  getinverse <- function(){
    c
  }
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
  
}


## Write a short comment describing this function
#it verifies if the value already been stored on the parent function, and gets the cache data if so.
# else it's gonna calculate by the solve function.
cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  c <- x$getinverse()
  if(!is.null(c)) {
    message("getting cached data")
    return(c)
  }
  data <- x$get()
  print(data)
  c <- solve(data)
  x$setinverse(c)
  c
}
