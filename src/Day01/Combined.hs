{-# LANGUAGE ViewPatterns #-}

module Day01.Combined where

main = do
  input <- readFile "src/Day01/input.txt"
  let p1 mass = mass `div` 3 - 2
  _ <- print (sum (p1 . read <$> lines input))
  let p2 (p1 -> mass)
        | mass <= 0 = 0
        | otherwise = mass + p2 mass
  print (sum (p2 . read <$> lines input))
