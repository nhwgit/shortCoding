w=R=->{gets.split.map(&:to_i)<<w}
F=->a,b,c,d=c{a[c]+b[d]>w ?2:1}
R[][0].times{n,w=R[];l=R[];s=R[]
p (0..4).map{l,s=s,l;l[0],l[n]=l[n],l[0];x=[1];y=[1];z=0,F[l,s,0]
n.times{|i|z<<[1+y[j=i+1]=[1+r=z[j],x[i]+q=F[s,s,i,j]].min,1+x[j]=[r+1,y[i]+p=F[l,l,i,j]].min,r+F[l,s,j],z[i]+p+q].min}
z[-1]}.min-2}
