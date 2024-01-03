{-
-- EPITECH PROJECT, 2024
-- cpppool01
-- File description:
-- My
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
    then a
    else b

myTuple :: a -> b -> (a, b)
myTuple a b = (a, b)

myTruple :: a -> b -> c -> (a, b, c)
myTruple a b c = (a, b, c)

myFst :: (a, b) -> a
myFst (a, b) = a

mySnd :: (a, b) -> b
mySnd (a, b) = b

mySwap :: (a, b) -> (b, a)
mySwap (a, b) = (b, a)

myHead :: [a] -> a
myHead (a:_) = a
myHead [] = error "ono empty list"

myTail :: [a] -> [a]
myTail (_:a) = a
myTail [] = error "ono empty list"

myLength :: [a] -> Int
myLength [] = 0
myLength (_:a) = myLength a + 1

myNth :: [a] -> Int -> a
myNth [] _ = error "out of range rip bozo"
myNth (a:_) 0 = a
myNth (_:a) n = (myNth a) (n - 1)

myTake :: Int -> [a] -> [a]
myTake 0 _ = []
myTake _ [] = []
myTake n (a:b) = a : myTake (n - 1) b
