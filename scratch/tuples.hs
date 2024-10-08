first :: Integer
first = fst (1, 2)

zipped :: [(Integer, String)]
zipped = zip [1, 2, 3] ["a", "b", "c"]

infinite :: [(Integer, String)]
infinite = zip [1 ..] ["a", "b", "c"]

-- Finding the right Triangle

triples :: [(Integer, Integer, Integer)]
triples =
  [ (a, b, c)
    | c <- [1 .. 10],
      a <- [1 .. c],
      b <- [1 .. a],
      a ^ 2 + b ^ 2 == c ^ 2,
      a + b + c == 24
  ]
