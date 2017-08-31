{-
primeCheck :: Integral a => a -> Bool
primeCheck 1 = True
primeCheck x = all (\y -> mod x y /= 0) [2..(x-1)]

--mySqrt :: (Integral c, RealFrac a, Floating c) => a -> c
mySqrt = floor . sqrt

primes n = filter primeCheck [2..(n-1)] 

input_number :: Num a => a
input_number = 600851475143
sqrt_number :: Integer
sqrt_number = mySqrt input_number

factors = map (\x -> (x, input_number `mod` x == 0)) (reverse $ primes sqrt_number)
--result :: Integral a => a
result = head $ filter snd factors

main :: IO ()
main = (print . fst) result
-}


 
bar :: Integral a => a -> a
bar x = go x 2
    where
        go x y = if x > y 
                     then 
                         if x `mod` y == 0 
                             then bar (x `div` y)
                             else go x (y+1)
                     else 
                         x
        
main :: IO ()
main = print $ bar 600851475143
