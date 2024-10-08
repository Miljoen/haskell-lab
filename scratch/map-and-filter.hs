collatz :: Int -> [Int]
collatz 1 = [1]
collatz x
    | even x = x : collatz (x `div` 2)
    | odd x = x : collatz (x * 3 + 1)
