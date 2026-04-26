n,*a=$<.read.split.map &:to_i;s=a.sum;p n.times.sum{k=0;a.rotate!.sum{(k+=_1)<0?-(k/s):0}}
