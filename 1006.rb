c=lambda{|a,b,x,y,m|(a[x]+b[y]>m ?1:0)+1}
w=lambda{|a|a[0],a[-1]=a[-1],a[0]}
d=lambda{|r,m,l,s|o=[0]*r;i=[0]*r;y=[0]*r;o[1]=1;i[1]=1;y[1]=c.call(l,s,0,0,m);(2...r).each{|x|j=x-1;k=x-2;o[x]=[y[j]+1,i[j]+c.call(l,l,k,j,m)].min;i[x]=[y[j]+1,o[j]+c.call(s,s,k,j,m)].min;y[x]=[i[x]+1,o[x]+1,y[j]+c.call(l,s,j,j,m),y[k]+c.call(l,l,k,j,m)+c.call(s,s,k,j,m)].min};y[r-1]}
t=gets.to_i
t.times do
n,m=gets.split.map(&:to_i)
r=n+2
l=gets.split.map(&:to_i)<<m
s=gets.split.map(&:to_i)<<m
ans=[d.call(r,m,l,s)]
w.call(s)
ans<<d.call(r,m,l,s)
w.call(l)
ans<<d.call(r,m,l,s)
w.call(s)
ans<<d.call(r,m,l,s)
puts ans.min-2
end
