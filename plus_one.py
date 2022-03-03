'''You are given a large integer represented as an integer array digits, where each digits[i] is the ith digit of the integer. The digits are ordered from most significant to least significant in left-to-right order. The large integer does not contain any leading 0's.

Increment the large integer by one and return the resulting array of digits.'''

#https://leetcode.com/problems/plus-one/

class Solution:
    def plusOne(self, digits: List[int]) -> List[int]:
        #convert array ints to strings and concatenate 
        s = str(digits[0])
        for digit in digits[1:]:
            s = s+str(digit)
        #turn string into int and increment
        s = int(s)
        s = s+1
        l = []
        #append each char into the array
        for c in str(s):
            l.append(c)
        return l
