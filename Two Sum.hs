-- // <!-- Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.
-- // You may assume that each input would have exactly one solution, and you may not use the same element twice.
-- // You can return the answer in any order.

-- // Example 1:
-- // Input: nums = [2,7,11,15], target = 9
-- // Output: [0,1]
-- // Explanation: Because nums[0] + nums[1] == 9, we return [0, 1].

-- // Example 2:
-- // Input: nums = [3,2,4], target = 6
-- // Output: [1,2]

-- // Example 3:
-- // Input: nums = [3,3], target = 6
-- // Output: [0,1]

-- // Constraints:

-- // 2 <= nums.length <= 104
-- // -109 <= nums[i] <= 109
-- // -109 <= target <= 109
-- // Only one valid answer exists.

-- // Follow-up: Can you come up with an algorithm that is less than O(n2) time complexity? -->
-- const twoSum = (nums, target) => {

import Data.Maybe (fromJust, isJust)
import Data.List (foldl')
import qualified Data.Map as Map

twoSum :: [Integer] -> Integer -> (Integer, Integer)
twoSum nums target = fromJust (foldl' complement Nothing zipped)
  where
    indexes = [0..]
    zipped = zip nums indexes
    -- [ [ 2, 0 ], [ 7, 1 ], [ 11, 2 ], [ 15, 3 ] ]
    location :: Map.Map Integer Integer
    location = Map.fromList zipped
    -- {2:0, 7:2, 11:3, 15:4}
    diff x = target - x
    complement :: Maybe (Integer,Integer) -> (Integer,Integer) -> Maybe (Integer,Integer)
    complement acc (n,i)
      | isJust acc = acc
      | isJust i2 && (fromJust i2) /= i = Just (i, (fromJust i2))
      | otherwise = Nothing
        where
          i2 = Map.lookup (diff n) location
   


main = do
    print $ twoSum  [2,7,11,15] 9 -- "Output: [0,1]"
    print $ twoSum  [3,2,4] 6  -- "Output: [1,2]"
    print $ twoSum  [3,3] 6  -- "Output: [0,1]"