list = take 10 [1, 2..]

multiply = sum . map (*2)

multiplyListComprehension :: [Integer]
multiplyListComprehension = [x * 2 | x <- [1..10]]

remainderThree = [x | x <- [50..100], mod x 7 == 3]
