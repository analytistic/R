合成法<-function(n){
  u0=runif(n)
  u1=runif(n)
  u2=runif(n)
  u3=runif(n)
  x=0 
  for(i in 1:n){
    if(u0[i]<1/3){
      x[i]=u1[i]
    }
    else if(u0[i]<2/3){
      x[i]=(u2[i])^(1/3)
    }
    else {
      x[i]=(u3[i])^(1/5)
    }
  }
  X=mean(x)
  X
}
合成法(10000)