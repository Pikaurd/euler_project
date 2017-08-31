fibnacci :: (Eq a, Num a, Num p) => a -> p
fibnacci 0 = 1
fibnacci 1 = 1
fibnacci n = fibnacci (n - 1) + fibnacci (n - 2)

-- from: https://stackoverflow.com/questions/6716315/on-improving-haskells-performance-compared-to-c-in-fibonacci-micro-benchmark
fibs :: [Integer]
fibs = 0:1:zipWith (+) fibs (tail fibs)

fib n = fibs !! n

main = print ( sum $ filter even $ takeWhile (<=4000000) fibs )
