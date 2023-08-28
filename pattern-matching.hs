import Data.Bifunctor (Bifunctor(bimap))
lucky :: Int -> String
lucky 7 = "Lucky you!"
lucky x = "Not so lucky"

factorial :: Int -> Int
factorial 0 = 1
factorial x = x * factorial (pred x)

addVectors :: (Double, Double) -> (Double, Double) -> (Double, Double)
addVectors x y = (fst x + fst y, snd x + snd y)

addVectors' :: (Double, Double) -> (Double, Double) -> (Double, Double)
addVectors' x = bimap (fst x +) (snd x +)

addVectors'' :: (Double, Double) -> (Double, Double) -> (Double, Double)
addVectors'' (x1, y1) (x2, y2) = (x1 + x2, y1 + y2)

trd :: (a, b, c) -> c
trd (_, _, z) = z

addPlane :: (Double, Double, Double) -> (Double, Double, Double) -> (Double, Double, Double)
addPlane (x1, y1, z1) (x2, y2, z2) = (x1 + x2, y1 + y2, z1 + z2)

head' :: [a] -> a
head' [] = error "Lsit is empty"
head' (x:_) = x

tell :: (Show a) => [a] -> String
tell [] = "Empty!"
tell [x] = show x
tell [x,y] = show x ++ show y
tell (x:y:_) = "Long!"
