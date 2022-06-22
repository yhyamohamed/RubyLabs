def copy_string(str,n)
    puts "hola #{str} \n"*n;
end

name ='yaya'
copy_string(name,3)


def find_if(str)
    res = false
    if str =~ /^if/
        res= true
  
    end
    puts res
end

find_if("if all good")
find_if("all good")


def replace_str(str)
    res = str
    len=str.length-1
    res[0],res[len] = res[len],res[0]
    puts res
end
strr = "python"
replace_str(strr)


def repeat_last_ch(str)
    len= str.length-1
    res=str[len]
    res+=str+res
    puts res
end

repeat_last_ch('abc')

def rotate_array(arr)
    last_index = arr.length-1
    for i in (0...arr.length/2)
        arr[i] ,arr[last_index]=arr[last_index],arr[i]
    end
end
arrr = [1,2,3]
rotate_array(arrr)
print arrr

def compute_sum(arr)
    i=0;
    res=0;
    while i<arr.length
        if(arr[i]== 17)
            i+=2
        else
            res+=arr[i]
        end
        i+=1
    end
    puts res
end

compute_sum([3, 5, 1, 17])

def test_leap_year(year)
    if (year%4 ==0 && year%100 !=0) || year%400==0
        res = "its  a leap year"
    else
         res = "its not a leap year"
    end
    puts res
end
test_leap_year(2020)
test_leap_year(2017)


def two_sum(nums,target)
 hash_num={}
 arr=[]
 for i  in (0...nums.length)
    num = nums[i]
#    papulate hash map with nums 
    hash_num[num]=i
 end
#  loop again ang check for two sums
 for i  in(0...nums.length)
    num = nums[i]
    remaining_number = target - num
    # delete the number from hash case of exact halfs 
    hash_num.delete(num)
  if hash_num[remaining_number]
    arr.push(i)
    arr.push(hash_num[remaining_number])
    re_index= hash_num[remaining_number]
    return [i , re_index]
  end
 end
end

# ar = two_sum([3,2,4],6)
ar = two_sum([1,6142,8192,10239],18431)
print ar


def matching_baracket(str)
    arr = []
    res = "YES"
    needle=nil;
    str.chars.each do |ch|
        if(ch =='{' || ch == '(' || ch == '[')
                arr.push(ch)
                
        elsif arr.length >0
            if (ch =='}' && arr.pop() != '{')
                res="NO"
            elsif (ch ==']'&& arr.pop() != '[')
            res="NO"
            elsif (ch ==')'&& arr.pop() != '(')
                res="NO"
            end 
        else
            res = "NO"
        end
    end
puts res
end

matching_baracket("{[()]}")
matching_baracket("{[(])}")
matching_baracket("{{[[(())]]}}")

def count_comomon_words(words1,words2)
    h = {}
    appears= 0;

    for word in words1
    if  h[word]
        h[word]+=1
    else
        h[word] =1
    end
    end 

    for word in words2
    if h[word] 
        h[word]+=1
    else
        h[word] =1
    end
    end 



    h.each do |key,value|
        if value == 2
            appears+=1
        end
    end
    return appears
end
words1 = ["leetcode","is","amazing","as","is"]
words2 = ["amazing","leetcode","is"]

# words1 = ["b","bb","bbb"]
#  words2 = ["a","aa","aaa"]

# words1 = ["a","ab"]
# words2 = ["a","a","a","ab"]
 
count  = count_comomon_words(words1,words2)
 puts count