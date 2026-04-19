j=w=R=->{gets.split.map(&:to_i)<<w}
F=->a,b,c=j{a[c]+b[j]>w ?2:1}
R[][0].times{n,w=R[];l=R[];s=R[]
p (0..4).map{l,s=s,l;l[j=0],l[n]=l[n],l[0];x=[1];y=[1];z=0,2
n.times{|i|z<<[1+y[j+=1]=[1+r=z[j],x[i]+q=F[s,s,i]].min,1+x[j]=[r+1,y[i]+p=F[l,l,i]].min,r+F[l,s],z[i]+p+q].min}
z[-1]}.min-2}
