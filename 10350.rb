n,*a=$<.read.split.map &:to_i;s=a.sum;p (0...n).sum{|i|k=0;a.sum{(k+=a[(i+=1)%n])<0?-(k/s):0}}
