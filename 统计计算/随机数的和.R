randomsum<-function(n)
{
  SUM=0#计数器
  for(i in 1:n){
  sum=0#随机数的和
  N=0#随机数个数
  while(sum<=1){
    sum=sum+runif(1)
    N=N+1
  }
  SUM=SUM+N
  
  }
  E<-c('期望'=SUM/n)
  E
}
randomsum(1000)