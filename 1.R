rtri3 = function(n) 
{
## generate a realization of Z_1,...,Z_n iid with ## density g by the inversion method z.list=3*sqrt(runif(n))
return(z.list)
}

set.seed(123)
n=2e3
z.list=rtri3(n=n)
## make the QQ plot
probs=seq(from=0.01, to=0.99, by=0.01)
plot(3*sqrt(probs) , quantile(z.list, probs),
     xlab="Expected percentile", ylab="Data percentile")
abline(0,1)
