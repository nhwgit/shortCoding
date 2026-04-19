F=->a,b,c,d,e{a[c]+b[d]>e ?2:1}
G=->p{p[0],p[-1]=p[-1],p[0];p}
H=->n,m,l,s{x=[0,1,*0*n];y=x.dup;z=[0,F[l,s,0,0,m],*0*n]
(2...n).map{|i|z[i]=[1+y[i]=[r=z[j=i-1]+1,x[j]+q=F[s,s,k=i-2,j,m]].min,1+x[i]=[r,y[j]+p=F[l,l,k,j,m]].min,r-1+F[l,s,j,j,m],z[k]+p+q].min}
z[-1]}
R=->{gets.split.map &:to_i}
gets.to_i.times{n,w=R[]
p [H[n+=2,w,l=R[]<<w,s=R[]<<w],H[n,w,l,G[s]],H[n,w,G[l],s],H[n,w,l,G[s]]].min-2}
