{-# LANGUAGE ViewPatterns #-}

module Day01.Part2 where

import qualified Day01.Part1 as P1

adjustedModuleFuelRequired :: Int -> Int
adjustedModuleFuelRequired (P1.moduleFuelRequired -> mass)
  | mass <= 0 = 0
  | otherwise = mass + adjustedModuleFuelRequired mass

main :: IO ()
main = do
  input <- readFile "src/Day01/input.txt"
  let moduleMasses = read <$> lines input
  print $ sum (adjustedModuleFuelRequired <$> moduleMasses)
