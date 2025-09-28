n=gets.to_i;a=gets.split.map &:to_i;s=a.sum;r=0;n.times{|i|k=0;a.map{(k+=a[(i+=1)%n])<0&&r-=k/s}};p r
