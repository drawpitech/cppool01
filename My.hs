{-
--  EPITECH PROJECT, 2024
--  cpppool01
--  File description:
--  My
-}

mySucc :: Int -> Int
mySucc n = n + 1

myIsNeg :: Int -> Bool
myIsNeg n = n < 0

myAbs :: Int -> Int
myAbs n = if myIsNeg n
    then (-n)
    else n

myMin :: Int -> Int -> Int
myMin = min

myMax :: Int -> Int -> Int
myMax = max
