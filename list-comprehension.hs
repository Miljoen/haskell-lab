list = take 10 [1, 2..]

multiply = sum . map (*2)

multiplyListComprehension :: [Integer]
multiplyListComprehension = [x * 2 | x <- [1..10]]

remainderThree = [x | x <- [50..100], mod x 7 == 3]

boomBangs xs = [if x > 10 then "BANG!" else "BOOM!" | x <- xs, odd x, x /= 13]

sumLists :: [Integer] -> [Integer] -> [Integer]
sumLists xs ys = [x + y | x <- xs, y <- ys]

productOfLists :: (Ord a, Num a) => [a] -> [a] -> [a]
productOfLists xs ys = [x * y | x <- xs, y <- ys, x + y > 50]

nouns = ["awesome", "stupid", "smart"]
adjectives = ["cat", "dog", "tuna"]

combinations :: [[Char]] -> [[Char]] -> [[Char]]
combinations xs ys = [x ++ " " ++ y | x <- xs, y <- ys]

length' :: Num a => [t] -> a
length' xs = sum [1 | _ <- xs]

removeUpperCase xs = [x | x <- xs, elem x ['a'..'z']]

multiDimensional :: Integral a => [[a]] -> [[a]]
multiDimensional xxs = [[x | x <- xs, even x] | xs <- xxs]
