f=->p,q,r,c,m{p[r]+q[c]>m ?2:1}
g=->p{p[0],p[-1]=p[-1],p[0]}
h=->n,m,l,s{x=[0]*n;y=[0]*n;z=[0]*n;x[1]=y[1]=1;z[1]=f[l,s,0,0,m];(2...n).each{|i|j=i-1;k=i-2;x[i]=[z[j]+1,y[j]+f[l,l,k,j,m]].min;y[i]=[z[j]+1,x[j]+f[s,s,k,j,m]].min;z[i]=[y[i]+1,x[i]+1,z[j]+f[l,s,j,j,m],z[k]+f[l,l,k,j,m]+f[s,s,k,j,m]].min};z[n-1]}
gets.to_i.times{
A,B=gets.split.map &:to_i
C=A+2
L=(gets.split.map &:to_i)<<B
S=(gets.split.map &:to_i)<<B
p [h[C,B,L,S],(g[S];h[C,B,L,S]),(g[L];h[C,B,L,S]),(g[S];h[C,B,L,S])].min-2
}
