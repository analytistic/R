Craps<-function(n){
WIN=0;SUM=0#总赢的次数与总投骰子的次数
for(i in 1:n){
  win=0;N=0;x=sum(sample(1:6,2,replace=T));N=N+1
 if(x==7|x==11){
    win=1;#第一次就胜利
    }
 else if(x!=2&&x!=3&&x!=12){#第一次没有结束游戏
    i=x;
    repeat{x=sum(sample(1:6,2,replace = T));N=N+1
      if(x==i){
        win=1;break;#胜利
        }
      else if(x==7){ win=0;break;#失败
      }}}
WIN=WIN+win;SUM=SUM+N;}
result<-c('平均结束次数'=SUM/n,'赢的概率'=WIN/n);
result}
Craps(100000)


