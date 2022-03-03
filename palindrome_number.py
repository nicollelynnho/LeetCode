'''Given an integer x, return true if x is palindrome integer. An integer is a palindrome when it reads the same backward as forward. For example, 121 is a palindrome while 123 is not.'''

class Solution:
    def isPalindrome(self, x: int) -> bool:
        #convert to string
        s = str(x)
        b = True
        #check to see if its even or odd amount of characters
        if len(s) % 2 == 0:
            #check if character are the same iterating from both sides 
            for i in range(0,int(len(s)/2)):
                if s[i] == s[-i-1]:
                    continue
                else:
                    return False
            return b
        else:
          #when there are odd amount of characters 
            for i in range(0,len(s)-2):
                if s[i] == s[-i-1]:
                    continue
                else:
                    return False
            return b
