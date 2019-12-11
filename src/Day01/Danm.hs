module Day01.Danm where

findFuel :: Integer -> Integer
findFuel mass = mass `div` 3 - 2

findAllFuel :: (Integer, Integer) -> Integer
findAllFuel (mass, acc) =
  let s = findFuel mass
   in if s > 0
        then findAllFuel (s, acc + s)
        else acc
