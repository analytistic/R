指数分布抽样精度<-function(d,lamda){
  x=(-1/lamda)*log(runif(100))
  k=100
  ss=0
  xbar=x[1]
  for(j in 1:(k-1)){
    xbar[j+1]=xbar[j]+(x[j+1]-xbar[j])/(j+1)
    ss[j+1]=(1-1/j)*ss[j]+(j+1)*(xbar[j+1]-xbar[j])^2
    
  }
  repeat{
    k=k+1
    x[k]=(-1/lamda)*log(runif(1))
    xbar[k]=xbar[k-1]+(x[k]-xbar[k-1])/(k)
    ss[k]=(1-1/(k-1))*ss[k-1]+(k)*(xbar[k]-xbar[k-1])^2
    
    if(sqrt(ss[k]/length(x))<d){
      break
    }
  }
  k
}
指数分布抽样精度(0.01,1)