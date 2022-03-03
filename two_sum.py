'''Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.

You may assume that each input would have exactly one solution, and you may not use the same element twice.

You can return the answer in any order.'''

class Solution:
    def twoSum(self, nums: List[int], target: int) -> List[int]:
        #index for first integer
        counti = 0
        for i in nums:
          #index for second integer
            countj = 1
            for j in nums[1:]:
              #dont use the same element twice
                if counti == countj:
                    continue
                #if it adds up to target, return indices    
                if i + j == target:
                    return [counti,countj]
                countj += 1
            counti +=1
