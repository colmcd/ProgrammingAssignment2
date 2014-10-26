## Put comments here that give an overall description of what your
## functions do


##This function is for storing a cache of matrix's and their inverse matrix's
##it first calculates the matrix and then stores the original matrix and it's 
##inverse in a list.
makeCacheMatrix <- function(x = matrix()) {
	## create an inverse matrix of X
	i <<- null
	i <- x * -1
	get <- function() x
	genInvMatrix <- function(x) i <<-  x * -1
	getInvMatrix <- function() i
	#store matrix and inverse in list
	list(matrix = x, invmatrix = i)
}




cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
	## first check if the matrix is stored, if so return it
	m <- x$getInvMatrix()
	if(!is.null(m)) {
		message("getting cached data")
		return(m)
	}
	## otherwise generate a new inverse matrix
	data <- x$get()
	x$genInvMatrix(m)
	m
}
