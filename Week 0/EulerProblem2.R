#Euler Question 2
#Set two numbers to begin the sequence.
fibseq <- c(1,2)
#Run while maximum vector value is less than 4 million.
#Use the vector length to generate the full sequence of values.
while (max(fibseq) < 4000000) {
  run <- length(fibseq)
  fibseq <- c(fibseq, fibseq[run - 1] + fibseq[run])
}
#Sum only the values that are even (divisible by two without remainder)
finish <- sum(fibseq[fibseq%%2 == 0])
