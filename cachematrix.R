## This function creates a special "matrix" object and displays the 
## mean value

## This function creates the special vector

makeCacheMatrix <- function(x = matrix()) {
        inverse<-NULL
        base<-function(y){
                x<<-y
                inverse<-NULL
        }
        receive<-function() x
        baseInverse<-function(inverse) inverse<<-inverse
        receiveInverse<-function()inverse
        list(base=base, receive=receive, baseInverse=baseInverse, receiveInverse=receiveInverse
}


## This function gets the inverse of the special matrix above

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inverse<-x$receiveInverse()
        if(!is.null(inverse)){
        messsage("Getting Cached Data")
        return(inverse)
        }
        numbers<-x$receive()
        inverse<-solve(data,...)
        x$baseInverse(inverse)
        inverse
        }
        
}
