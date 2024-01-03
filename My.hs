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
myMin a b = if a < b
    then a
    else b

myMax :: Int -> Int -> Int
myMax a b = if a > b
    then b
    else a

myTuple :: a -> b -> (a, b)
myTuple a b = (a, b)

myTruple :: a -> b -> c -> (a, b, c)
myTruple a b c = (a, b, c)

myFst :: (a, b) -> a
myFst (a, b) = a

mySnd :: (a, b) -> b
mySnd (a, b) = b
