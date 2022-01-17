def recursion(s)
    s1=""
    i=0
     #puts s.reverse()
     if s.length==1
        return s
     else
        # s1<<s[s.length-1...s.length-2]
        #return p s1<<recursion(s[s.length-i...s.length-(i-1)])
        return s[s.length-1].chr+recursion(s[0,s.length-1])
     end
    
end

puts "Enter the size"
n=gets.chomp().to_i
ar=[]
for i in 0...n
    ar[i]=gets.chomp()
end

s=ar.join
puts recursion(s)
