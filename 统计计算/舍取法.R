舍取法<-function(n){
  u1=runif(n)
  u2=runif(n)
  x=0
  m=0
  sum=0
  for(i in 1:n){
    if(u2[i]<=((1+3*(u1[i])^2+5*(u1[i])^4)/9)){
      x[i]=u2[i]}
      else x[i]=0
    }
    
  
  X=mean(unique(x))
  X
  
}
舍取法(100000)