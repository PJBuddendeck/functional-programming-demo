-- Write printAMessage here
printAMessage :: Show a => a -> IO ()
printAMessage a = print a

-- Write division here
division :: Double -> Double -> Maybe Double
division x y =
    if y==0
        then Nothing
        else Just (x/y)

-- Write factorial here
factorial :: Int -> Int
factorial 1 = 1
factorial n = n * factorial (n - 1)

-- Write factList here
factList :: Int -> [Int]
factList n = map factorial [1..n]

-- Write merge here
merge :: [Int] -> [Int] -> [Int]
merge [] x = x
merge x [] = x
merge (x: xs) (y: ys)
    | y<x = y : merge (x : xs) ys
    | otherwise = x : merge xs (y: ys)


main = printAMessage (merge [1, 5, 7, 9] [0, 3, 4, 8]) -- Replace this with your testing code
