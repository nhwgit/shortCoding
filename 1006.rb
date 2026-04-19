R=->{gets.split.map &:to_i}
R[][0].times{n,w=R[];l=R[]<<w;s=R[]<<w
p (0..3).map{l,s=s,l;l[0],l[n]=l[n],l[j=0];x=[1];y=[1];z=0,2
n.times{|i|F=->a{w<a[i]+a[j]?2:1};z<<[1+y[j+=1]=[r=z[j]+1,x[i]+q=F[s]].min,1+x[j]=[r,y[i]+p=F[l]].min,w<l[j]+s[j]?r+1:r,z[i]+p+q].min}
z[-1]}.min-2}
