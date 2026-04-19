F=->a,b,c,d,e{a[c]+b[d]>e ?2:1}
G=->p{p[0],p[-1]=p[-1],p[0];p}
H=->n,m,l,s{x=[0]*n;y=x.dup;z=x.dup
x[1]=y[1]=1;z[1]=F[l,s,0,0,m]
(2...n).map{|i|j=i-1;k=i-2
p=F[l,l,k,j,m]
x[i]=[z[j]+1,y[j]+p].min
y[i]=[z[j]+1,x[j]+F[s,s,k,j,m]].min
z[i]=[y[i]+1,x[i]+1,z[j]+F[l,s,j,j,m],z[k]+p+F[s,s,k,j,m]].min}
z[-1]}
R=->{gets.split.map &:to_i}
gets.to_i.times{n,w=R[];l=R[]<<w
p [H[n+=2,w,l,s=R[]<<w],H[n,w,l,G[s]],H[n,w,G[l],s],H[n,w,l,G[s]]].min-2}
