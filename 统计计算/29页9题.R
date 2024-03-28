q9<-function(n){
  u=runif(n)
  x=-log(u*exp(-0.05)-u+1)
  
  E=sum(x)/n
  value=(-1.05*exp(-0.05)+1)/(1-exp(-0.05))
  value

  rt<-c('实验值'=E,'理论值'=value)
  rt
}
q9(1000)
