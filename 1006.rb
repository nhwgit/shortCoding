n,w,l,s=F=->a,b,c,d{a[c]+b[d]>w ?2:1}
G=->{l,s=s,l;l[0],l[-1]=l[-1],l[0];x=[1];y=[1];z=0,F[l,s,0,0]
(2...n+2).map{|i|z<<[1+y[j=i-1]=[1+r=z[j],x[k=i-2]+q=F[s,s,k,j]].min,1+x[j]=[r+1,y[k]+p=F[l,l,k,j]].min,r+F[l,s,j,j],z[k]+p+q].min}
z[-1]}
R=->{gets.split.map(&:to_i)<<w}
R[][0].times{n,w=R[];l=R[];s=R[];p 4.times.map{G[]}.min-2}
