R=->{gets.split.map &:to_i}
R[][0].times{n,w=R[];l=R[]<<w;s=R[]<<w
p (0..3).map{l,s=s,l;l[0],l[n]=l[n],l[0];X=Y=c=2;b=0
n.times{|i|q,p=w<s[i]+s[j=i+1]?2:1,w<l[i]+l[j]?2:1
b,c,X,Y=c,[nY=[c+2,X+q].min,nX=[c+2,Y+p].min,w<l[j]+s[j]?c+2:c+1,b+p+q].min,nX,nY}
c}.min-2}
