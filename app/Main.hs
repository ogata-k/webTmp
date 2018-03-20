module Main where

import Lib
import System.Environment
import Control.Monad

main :: IO ()
main = do
    fPaths <- getArgs
    forM_ fPaths $ \fPath -> do{
          putStrLn $ "now read file is " ++ fPath
        ; content <- readFile fPath
        ; doStarts $ lines content
        }

