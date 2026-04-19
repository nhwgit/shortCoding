w=F=->a,b,c,d{a[c]+b[d]>w ?2:1}
R=->{gets.split.map(&:to_i)<<w}
R[][0].times{n,w=R[];l=R[];s=R[]
p 4.times.map{l,s=s,l;l[0],l[n]=l[n],l[0];x=[1];y=[1];z=0,F[l,s,0,0]
1.upto(n){|i|z<<[1+y[i]=[1+r=z[i],x[j=i-1]+q=F[s,s,j,i]].min,1+x[i]=[r+1,y[j]+p=F[l,l,j,i]].min,r+F[l,s,i,i],z[j]+p+q].min}
z[-1]}.min-2}
