puts "Enter two strings"
s1=gets.chomp().to_i
s2=gets.chomp().to_i

sum=""
carry=0
while(s1>0 or s2>0)
    n=(s1%10)+(s2%10)+carry
    if(n==0)
        sum+="0"
        carry=0        
    elsif(n==1)
        sum+="1"
        carry=0
    elsif(n==2)
        sum+="0"
        carry=1
    elsif(n==3)     #1010 1011      1
        sum+="1"
        carry=1
    end
    #puts sum
    s1=s1/10
    s2=s2/10
end
if carry==1
    sum+="1"
    puts sum.reverse!
end