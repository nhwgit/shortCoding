n=0
F=->a,b,c,d,e{a[c]+b[d]>e ?2:1}
G=->p{p[0],p[-1]=p[-1],p[0];p}
H=->m,l,s{x=[0,1,*0*n];y=x.dup;z=[0,F[l,s,0,0,m],*0*n]
(2...n).map{|i|z[i]=[1+y[i]=[r=z[j=i-1]+1,x[j]+q=F[s,s,k=i-2,j,m]].min,1+x[i]=[r,y[j]+p=F[l,l,k,j,m]].min,r-1+F[l,s,j,j,m],z[k]+p+q].min}
z[-1]}
R=->{gets.split.map &:to_i}
gets.to_i.times{n,w=R[];n+=2
p [H[w,l=R[]<<w,s=R[]<<w],H[w,l,G[s]],H[w,G[l],s],H[w,l,G[s]]].min-2}
