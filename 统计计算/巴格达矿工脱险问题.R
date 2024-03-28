KUANGGONG<-function(n){
T=0
for (i in 1:n){
  t=0
  x=0
 
  while(x!=1){
    x=sample(1:3,1,replace=F)
    if(x==1){
      t=t+3
    }
    if(x==2){
      t=t+5
    }
    if(x==3){
      t=t+7
    }
  }
  T=T+t
}
ET=T/n
ET
}
KUANGGONG(10000)