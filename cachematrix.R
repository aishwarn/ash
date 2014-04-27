## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  
  
  inv<<-NULL
  
  
  
  
  
  getinv<-function()
    
  {
    
    inv
    
  }
  
  get<-function()
    
  {
    
    x
    
  }
  
  set<-function(inv1)
    
  {
    
    inv<<-inv1
    
    
    
    
    
  }
  
  list(get=get,set=set,getinv=getinv)
  
  

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inv<-x$getinv()
  
  if(!is.null(inv)) {           #if there is a cache
    
    message("getting cached data") 
    
    return(inv)                #just return the cache, no computation needed
    
  }
  
  data<-x$get()
  
  inv <- solve(data)%*% data
  
  x$set(inv)
  
  inv
  
}
