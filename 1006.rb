n,w=0
F=->a,b,c,d,e{a[c]+b[d]>e ?2:1}
H=->l,s{l[0],l[-1]=l[-1],l[0];x=[0]+[1]*n;y=x.dup;z=[0]+[F[l,s,0,0,w]]*n
(2...n).map{|i|z[i]=[1+y[i]=[r=z[j=i-1]+1,x[j]+q=F[s,s,k=i-2,j,w]].min,1+x[i]=[r,y[j]+p=F[l,l,k,j,w]].min,r-1+F[l,s,j,j,w],z[k]+p+q].min}
z[-2]}
R=->{gets.split.map &:to_i}
gets.to_i.times{n,w=R[];n+=2
p [H[l=R[]<<w,s=R[]<<w],H[l,s],H[s,l],H[l,s]].min-2}
