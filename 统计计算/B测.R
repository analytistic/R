
##摸球
tabletennisl<-function(n){
  m<-0
  for(j in 1:n){
    x=sample(1:12,3,replace = F)
    y=union(1:3,x)
    z=sample(1:12,3,replace = F)
    if(length(intersect(y,z))==0){m<-m+1}
    else{m<-m}
  }
  rt<-c('次数'=m,'频率'=m/n)
  rt
}
tabletennisl(1000)

tabletennis2<-function(n){
 k=0;m<-0
 for (j in 1:n){
   x=sample(1:12,3,replace = F)
   y=union(1:3,x)
   if(length(y)<6) next
   k=k+1
   z=sample(setdiff(1:12,x),3,replace = F)
   if(length(intersect(1:3,z))==0){m<-m+1}
   
   
 }
   rt<-c('第二次全新次数'=k,'第一次全新次数'=m,'P'=m/k)
   rt
 }
}
tabletennis2(1000)



##