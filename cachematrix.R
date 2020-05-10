makeCachematrix1 <- function(x = matrix(c(1,2,3,4,5,6),nrow = 2, ncol = 3)){  ##Create a vector
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setmean <- function(mean) m <<- mean
  getmean <- function() m
  list(set = set, get = get,
       setmean = setmean,
       getmean = getmean)
}

cachemean <- function(x = matrix(c(1,2,3,4,5,6),nrow = 2, ncol = 3)){  ##The mean of the vector
  m <- x$getmean()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- mean(data, ...)
  x$setmean(m)
  m
}

solve(matrix(x)) ##The inverse of X

