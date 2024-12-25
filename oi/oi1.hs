import Control.Monad (forM_, when)
import Data.Array.ST
    ( getElems, readArray, writeArray, MArray(newArray), STUArray )
import Data.Array.Unboxed
import Data.Maybe (isNothing)
import Control.Monad.ST (runST, ST)
import Data.List (foldl')
import Data.STRef
import Control.Monad.Cont
import Control.Arrow ((>>>))

type Edge = (Int, Int, Int)

main :: IO ()
main =
  interact $
    lines
      >>> map (words >>> map read)
      >>> process

process :: [[Int]] -> String
process ([t,n]:xs) = if good then unwords (map show res) ++ "\n" else "neexistuje\n"
    where (good, res) = solve t n (map (\[a, b, d] -> (a-1, b-1, -d)) (take n xs))



solve :: Int -> Int -> [Edge] -> (Bool, [Int])
solve t n xs =
    runST $ do
        dist <- newArray (0, t-1) 0 :: ST s (STUArray s Int Int)
        changed <- newSTRef True
        let update =
                forM xs $ \(a, b, d) -> do
                    da <- readArray dist a
                    db <- readArray dist b
                    when (da + d < db) $ writeArray dist b (da + d)
                    when (da + d < db) $ writeSTRef changed True

        forM_ [1..t] $ \_ ->
          do
            writeSTRef changed False
            update

        finalChanged <- readSTRef changed
        if finalChanged
        then return (False, [])
        else do
          res <- getElems dist
          return (True, res)




