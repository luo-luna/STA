
#----------------------------------------------------------
#6(e) Use R to calculate the two-sided p-value for Z = 4.1
#----------------------------------------------------------
Z = 4.1
pval = 2 * (1-pnorm(abs(Z)))
c(Z,pval)

#----------------------------------------------------------
#7(d) The file [url] has a set of raw data. Using R and your answers to
# Questions 7b and 7c, calculate
#i. The maximum likelihood estimate πhat
#ii. A 95% confidence interval for π.
#----------------------------------------------------------

data = scan("http://www.utstat.toronto.edu/~brunner/data/legal/inversegamma.data.txt")
pihat = length(data)/sum(1/data) #from 7(b) Derive a formula for the MLE of π
pihat
vn = pihat^2/length(data) #from 7(c) Formula for vn (estimated asymptotic var of πn)
c(pihat-1.96*sqrt(vn),pihat+1.96*sqrt(vn))

#(e)Test H0 : π = 3.14159 with a two-sided large-sample Z-test, using the 
# α = 0.05 significance level.
#i. There are two critical values, one for the lower tail and one for the 
#upper tail. What are they? The answers are numbers.
#ii. What is the value of the test statistic? The answer is a number on your printout.
#iii. Use R to calculate the 2-sided p-value. The answer is a number on your printout.
#My answer is 0.00002716191.
z = (pihat-3.14159)/sqrt(vn);z 
pval2 = 2 * (1-pnorm(abs(z)))
c(z,pval2)
