{-# LANGUAGE TemplateHaskell #-}
module Main where
import Lists.P1_10
import Test.QuickCheck.All

prop_myLast = myLast [1,2,3,4] == 4 && myLast ['x','y','z'] == 'z'
prop_myButLast = myButLast [1,2,3,4] == 3 && myButLast ['a'..'z'] == 'y'
prop_elementAt = elementAt [1,2,3] 2 == 2 && elementAt "haskell" 5 == 'e'
prop_myLength = myLength [123, 456, 789] == 3 && myLength "Hello, world!" == 13
prop_myReverse = myReverse [1,2,3,4] == [4,3,2,1]
prop_isPalindrome = isPalindrome [1,2,3] == False && isPalindrome "madamimadam" == True

return []
runTests = $quickCheckAll

main = do
       runTests
