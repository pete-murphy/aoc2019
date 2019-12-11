module Day01.Part1 where

moduleFuelRequired :: Int -> Int
moduleFuelRequired n = n `div` 3 - 2

isEven n
  | mod n 2 == 0 = True
  | otherwise = False

main :: IO ()
main = do
  input <- readFile "src/Day01/input.txt"
  let moduleMasses = read <$> lines input
  print $ sum (moduleFuelRequired <$> moduleMasses)
