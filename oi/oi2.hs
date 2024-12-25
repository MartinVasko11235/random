import Control.Arrow ((>>>))
import Control.Monad.ST
import Data.Array.ST (STArray)
import Data.Array.Base
import Control.Monad (forM_)

type Offer = (Bool, Int, Int)
type Vec s = STArray s Int Int

inf :: Int
inf = 2000000000

main :: IO ()
main = interact $
    lines >>> map words >>> process

process :: [[String]] -> String
process ([n]: xs) = show res
  where
    offers = map (\[u, t, c] -> (u == "N", read t, read c)) (take (read n) xs)
    res = solve (read n) offers

solve :: Int -> [Offer] -> Int
solve n offers = runST $ 
    do
        return 22
        
