#Apply family of functions in R ----
# Execution time of Apply() fxn is faster then  For Loop.
# Example:
# Getting the row means, of every row, of two columns in the following 10000 row dataframe:
N <- 10
x1 <- runif(N)
x2 <- runif(N)
d <- as.data.frame(cbind(x1, x2))
head(d)
?runif

# Loop: create a vector to store the results in
rowMeanFor <- vector("double", N)
?vector

for (i in seq_len(N)) {
  rowMeanFor[[i]] <- mean(c(d[i, 1], d[i, 2]))
  @@ -23,7 +25,6 @@ rowMeanApply <- apply(d, 1, mean)
  # Checking whether the two results, one from loop & another from apply() are equal.
  all.equal(rowMeanFor, rowMeanApply)
  
  
  # Comparing the time to do this calculation using a for loop and using apply()
  
  # We use system.time(expr) to know how fast R processes an expression. 
  @@ -33,11 +34,12 @@ all.equal(rowMeanFor, rowMeanApply)
  #"system CPU time" gives the CPU time spent by the kernel (the operating system) on behalf of the current process.
  # The output lists durations in seconds.
  
  N <- 1000
  N <- 10000
  x1 <- runif(N)
  x2 <- runif(N)
  d <- as.data.frame(cbind(x1, x2))
  head(d)
  View(d)
  
  # Time to do this using the For loop:
  system.time(
    @@ -76,6 +78,7 @@ str(movies_lower)
    
    ?cars
    dt <- cars
    View(dt)
    lmn_cars <- lapply(dt, min)
    smn_cars <- sapply(dt, min)
    lmn_cars
