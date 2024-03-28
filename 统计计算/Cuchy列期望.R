Cuchy<-function(n){
  u=runif(n)
  N=1:n
  p=cumsum(tan(pi*(u-0.5)))/N
  plot(p)
}
Cuchy(1000)

