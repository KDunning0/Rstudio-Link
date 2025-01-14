#Euler question 3
#Generate prime numbers by using a sieve method.
generator <- function(num) {
  #Exclude one from the list.
  if (num == 1) return(NULL)
  if (num == 2) return(num)
  #Create a list starting at two and ending at num.
  conint <- 2:num
  #Prime the counter.
  count <- 1
  #Use two as the first prime number.
  prime <- 2
  #Stop when the prime number squared is greater than num.
  while (prime^2 <= num) {
    #Start by removing the multiples of prime from conint.
    #Add prime, exclude divisors with a remainder of zero.
    conint <- conint[conint == prime | conint %% prime!= 0]
    #Count up by one.
    count <- count + 1
    #Add the remaining prime numbers to the list.
    prime <- conint[count]
  }
  return(conint)
}
#Function to find prime divisors and create vector of factors.
getprimes <- function (num) {
  #Create an empty vector for factors.
  fact <- c()
  #Square the number, take the floor value (round down), and activate
  #generator.
  primes <- generator(floor(sqrt(num)))
  #Utilize to find prime divisors (number divided by primes 
  #has no remainder).
  divisor <- which(num %% primes == 0)
  if (length(divisor) == 0)
    return(num)
  #Create the factor list.
  for (p in primes[divisor]) {
    while (num %% p == 0) {
      fact <- c(fact, p)
      num <- num/p } }
      if (num > 1)
        fact <- c(fact, num)
  return(fact)
}
#Use max function and getprimes function to find answer.
max(getprimes(600851475143))
