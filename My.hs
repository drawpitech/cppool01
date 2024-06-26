{-
-- EPITECH PROJECT, 2024
-- cpppool01
-- File description:
-- Source
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
myHead [] = error "ono empty list"
myHead (a:_) = a

myTail :: [a] -> [a]
myTail [] = error "ono empty list"
myTail (_:a) = a

myLength :: [a] -> Int
myLength [] = 0
myLength (_:a) = myLength a + 1

myNth :: [a] -> Int -> a
myNth [] _ = error "out of range rip bozo"
myNth (a:_) 0 = a
myNth (_:a) n = myNth a (n - 1)

myTake :: Int -> [a] -> [a]
myTake 0 _ = []
myTake _ [] = []
myTake n (a:b) = a : myTake (n - 1) b

myDrop :: Int -> [a] -> [a]
myDrop 0 a = a
myDrop _ [] = []
myDrop n (a:b) = myDrop (n - 1) b

myAppend :: [a] -> [a] -> [a]
myAppend [] b = b
myAppend (a:c) b = a : myAppend c b

myReverse :: [a] -> [a]
myReverse [] = []
myReverse (a:b) = myAppend (myReverse b) [a]

myInit :: [a] -> [a]
myInit [] = error "ono empty list"
myInit a = myTake (myLength a - 1) a

myLast :: [a] -> a
myLast [] = error "ono empty list"
myLast a = myHead (myDrop (myLength a - 1) a)

myZip :: [a] -> [b] -> [(a, b)]
myZip _ [] = []
myZip [] _ = []
myZip (a:ae) (b:be) = (a, b) : myZip ae be

myUnzip :: [(a, b)] -> ([a], [b])
myUnzip [] = ([], [])
myUnzip ((a, b):r) = (a:ae, b:be) where (ae, be) = myUnzip r

myMap :: (a -> b) -> [a] -> [b]
myMap _ [] = []
myMap f (e:arr) = f e : myMap f arr

myFilter :: (a -> Bool) -> [a] -> [a]
myFilter _ [] = []
myFilter f (e:arr) = if f e
    then e : myFilter f arr
    else myFilter f arr

myFoldl :: (b -> a -> b) -> b -> [a] -> b
myFoldl _ start [] = start
myFoldl f start (e:arr) = myFoldl f (f start e) arr

myFoldr :: (a -> b -> b) -> b -> [a] -> b
myFoldr _ start [] = start
myFoldr f start arr = myFoldr f (f (myLast arr) start) (myInit arr)

myPartition :: (a -> Bool) -> [a] -> ([a] , [a])
myPartition _ [] = ([], [])
myPartition f arr = (myFilter f arr, myFilter (\ e -> (f e) == False) arr)

myQuickSort :: (a -> a -> Bool) -> [a] -> [a]
myQuickSort _ [] = []
myQuickSort f (e:arr) = myAppend
        (myAppend (myQuickSort f left) [e])
        (myQuickSort f right)
    where (left, right) = myPartition (`f` e) arr
