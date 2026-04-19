F=->a,b,c,d,e{a[c]+b[d]>e ?2:1}
G=->p{p[0],p[-1]=p[-1],p[0]}
H=->n,m,l,s{x=[0]*n;y=[0]*n;z=[0]*n
x[1]=y[1]=1
z[1]=F[l,s,0,0,m]
(2...n).each{|i|j=i-1;k=i-2
x[i]=[z[j]+1,y[j]+F[l,l,k,j,m]].min
y[i]=[z[j]+1,x[j]+F[s,s,k,j,m]].min
z[i]=[y[i]+1,x[i]+1,z[j]+F[l,s,j,j,m],z[k]+F[l,l,k,j,m]+F[s,s,k,j,m]].min}
z[-1]}
R=->{gets.split.map &:to_i}
gets.to_i.times{n,w=R[]
n+=2
l=R[]<<w
s=R[]<<w
p [H[n,w,l,s],G[s]&&H[n,w,l,s],G[l]&&H[n,w,l,s],G[s]&&H[n,w,l,s]].min-2}
