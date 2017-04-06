# Exercise 2: writing and executing functions (II)

# Write a function `CompareLength` that takes in 2 vectors, and returns the sentence:
# "The difference in lengths is N"

CompareLength <- function(v1, v2) {
  difference <- abs(length(v1) - length(v2))
  difference.ret <- paste('The difference in lengths is', difference)
  return(difference.ret)
}  

# Pass two vectors of different length to your `CompareLength` function

CompareLength(c(4, 5), c(6, 3, 4))

# Write a function `DescribeDifference` that will return one of the following statements:
# "Your first vector is longer by N elements"
# "Your second vector is longer by N elements"

DescribeDifference <- function(a,b) {
  difference <- length(a) - length(b)
  if(difference > 0) {
    ret <- paste('Your first vector is longer by', difference, 'elements')
  } else {
    ret <- paste('Your second vector is longer by', -difference, 'elements')
  }
  return(ret)
}

# Pass two vectors to your `DescribeDifference` function

DescribeDifference(c(1, 9, 10), c(1))

### Bonus ###

# Rewrite your `DescribeDifference` function to tell you the name of the vector which is longer

DescribeDifference <- function(a,b) {
  difference <- length(a) - length(b)
  if(difference > 0) {
    ret <- paste('Vector', deparse(substitute(a)), 'is longer by', difference, 'elements')
  } else {
    ret <- paste('Vector', deparse(substitute(a)), 'is longer by', -difference, 'elements')
  }
  return(ret)
}
