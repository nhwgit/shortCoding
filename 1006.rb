n,w=F=->a,b,c,d{a[c]+b[d]>w ?2:1}
H=->l,s{l[0],l[-1]=l[-1],l[0];x=[1];y=[1];z=[0]+[F[l,s,0,0]]*n
(2...n).map{|i|z[i]=[1+y[j=i-1]=[1+r=z[j],x[k=i-2]+q=F[s,s,k,j]].min,1+x[j]=[r+1,y[k]+p=F[l,l,k,j]].min,r+F[l,s,j,j],z[k]+p+q].min}
z[-2]}
R=->{gets.split.map &:to_i}
gets.to_i.times{n,w=R[];n+=2
p [H[l=R[]<<w,s=R[]<<w],H[s,l],H[l,s],H[s,l]].min-2}
