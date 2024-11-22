module Main where

import Data.Functor
import Foreign.Ptr
import Foreign.C.Types
import System.Mem

foreign import ccall unsafe "leak1"
  leak1 :: IO ()

foreign import ccall safe "leak2"
  leak2 :: IO ()

foreign import ccall unsafe "leak4"
  leak4 :: IO (Ptr CChar)

foreign import ccall safe "leak8"
  leak8 :: IO (Ptr CChar)

main :: IO ()
main = do
  leak1
  leak2
  leak4
  leak8
  performGC
