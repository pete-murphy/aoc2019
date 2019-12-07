module Day01.Part1 where

moduleFuelRequired :: Int -> Int
moduleFuelRequired n = div n 3 - 2

main :: IO ()
main = do
  inputs <- lines <$> readFile "src/Day01/input.txt"
  let moduleMasses = read <$> inputs
  print $ sum (moduleFuelRequired <$> moduleMasses)
