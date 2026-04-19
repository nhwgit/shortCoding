f=->l,s,r,c,m{l[r]+s[c]>m ?2:1}
g=->p{p[0],p[-1]=p[-1],p[0]}
h=->n,m,l,s{a=[0]*n;b=[0]*n;c=[0]*n;a[1]=b[1]=1;c[1]=f[l,s,0,0,m];(2...n).each{|i|j=i-1;k=i-2;a[i]=[c[j]+1,b[j]+f[l,l,k,j,m]].min;b[i]=[c[j]+1,a[j]+f[s,s,k,j,m]].min;c[i]=[b[i]+1,a[i]+1,c[j]+f[l,s,j,j,m],c[k]+f[l,l,k,j,m]+f[s,s,k,j,m]].min};c[-1]}
gets.to_i.times{
n,w=gets.split.map &:to_i
n+=2
l=gets.split.map(&:to_i)<<w
s=gets.split.map(&:to_i)<<w
p [h[n,w,l,s],(g[s];h[n,w,l,s]),(g[l];h[n,w,l,s]),(g[s];h[n,w,l,s])].min-2}
