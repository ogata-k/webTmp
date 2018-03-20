module Lib
    ( doStarts
    ) where

import System.Process
import Control.Monad

doStarts :: [String] -> IO ()
doStarts = mapM_ $ system . ("start " ++)
