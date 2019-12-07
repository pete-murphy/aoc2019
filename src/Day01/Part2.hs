{-# LANGUAGE ViewPatterns #-}

module Day01.Part2 where

import qualified Data.Function as Function
import qualified Day01.Part1   as P1

adjustedModuleFuelRequired :: Int -> Int
adjustedModuleFuelRequired =
  Function.fix $ \f (P1.moduleFuelRequired -> mass) ->
    if mass <= 0
      then 0
      else (+) <$> id <*> f $ mass

main :: IO ()
main = do
  inputs <- lines <$> readFile "src/Day01/input.txt"
  let moduleMasses = read <$> inputs
  print $ sum (adjustedModuleFuelRequired <$> moduleMasses)
