f :: Integral a => a -> Bool
f x = x `mod` 3 == 0 || x `mod` 5 == 0

input_array :: Integral a => [a]
input_array = [1..999]

main :: IO()
main = print ( sum $ filter f input_array )
