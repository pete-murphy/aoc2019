module Day02Spec where

import qualified Day02.Part1 as P1
import           Test.Hspec

main :: IO ()
main = hspec spec

spec :: Spec
spec = do
  describe "Part1" $ do
    it "sample input" $ do
      P1.solve "1,0,0,0,99" `shouldBe` 2
