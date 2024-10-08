module GS where

divides :: Integral a => a -> a -> Bool
divides d n = rem n d == 0

ld :: Integral t => t -> t
ld n = ldf 2 n

ldf :: Integral t => t -> t -> t
ldf k n | divides k n = k
        | k^2 > n = n
        | otherwise = ldf (k+1) n

factors :: Integer -> [Integer]
factors n | n < 0 = error "Cannot be less than zero"
          | n == 1 = []
          | otherwise = p : factors (n `div` p)
          where p = ld n
