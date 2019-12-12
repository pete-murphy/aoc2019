module Day02.Part1 where

parse :: String -> [Int]
parse str = read $ '[' : str <> "]"

setAt :: Int -> a -> [a] -> [a]
setAt index y list = go ([], list) index
  where
    go (seen, x:xs) count =
      case count of
        0 -> reverse seen ++ (y : xs)
        _ -> go (x : seen, xs) (count - 1)

interpretAt :: Int -> [Int] -> [Int]
interpretAt ix list =
  let (opCode: ~(i:j:k:_)) = drop ix list
      x = list !! i
      y = list !! j
   in case opCode of
        1 ->
          let list' = setAt k (x + y) list
           in interpretAt (ix + 4) list'
        2 ->
          let list' = setAt k (x * y) list
           in interpretAt (ix + 4) list'
        99 -> list

initialize :: [Int] -> [Int]
initialize = setAt 2 2 . setAt 1 12

solve :: String -> Int
solve = head . interpretAt 0 . initialize . parse

main = do
  input <- readFile "src/Day02/input.txt"
  print $ solve input
