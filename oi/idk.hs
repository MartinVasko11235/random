memoFib :: Int -> Integer
memoFib n = fibs !! n
  where
    fibs = 0 : 1 : zipWith (+) fibs (tail fibs)

sum2 :: [Int] -> Int
sum2 [] = 0
sum2 [x] = x
sum2 (x:xs) = x + sum2 xs


fib :: Int -> Integer
fib 0 = 0
fib 1 = 1
fib n = fib n-1 + fib n-2

factorial :: Integer -> Integer
factorial 0 = 1
factorial 1 = 1
factorial n = n * factorial n-1

main :: IO ()
main = print $ sum2 [1,2,3,4,5]