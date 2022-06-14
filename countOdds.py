#https://leetcode.com/problems/count-odd-numbers-in-an-interval-range/
class Solution:
    def countOdds(self, low: int, high: int) -> int:
        count = 0
        if low%2>0:
            count = count+1
        if high%2>0:
            count = count+1
        return int((high-low+count) / 2)
