module Day01Spec where

import qualified Day01.Combined as C
import qualified Day01.Danm     as D
import qualified Day01.Part1    as P1
import qualified Day01.Part2    as P2
import           Test.Hspec

main :: IO ()
main = hspec spec

spec :: Spec
spec = do
  describe "Part1" $ do
    it "sample input" $ do
      P1.moduleFuelRequired 12 `shouldBe` 2
      P1.moduleFuelRequired 14 `shouldBe` 2
      P1.moduleFuelRequired 1969 `shouldBe` 654
      P1.moduleFuelRequired 100756 `shouldBe` 33583
  describe "Part2" $ do
    it "sample input" $ do
      P2.adjustedModuleFuelRequired 14 `shouldBe` 2
      P2.adjustedModuleFuelRequired 1969 `shouldBe` 966
      P2.adjustedModuleFuelRequired 100756 `shouldBe` 50346
  describe "Danm" $ do
    it "sample input" $ do
      D.findAllFuel (14, 0) `shouldBe` 2
      D.findAllFuel (1969, 0) `shouldBe` 966
      D.findAllFuel (100756, 0) `shouldBe` 50346
