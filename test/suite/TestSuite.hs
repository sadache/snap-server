module Main where

import Test.Framework (defaultMain, testGroup)

import qualified Snap.Internal.Http.Parser.Tests
import qualified Snap.Internal.Http.Server.Tests
main :: IO ()
main = defaultMain tests
  where tests = [
                  testGroup "Snap.Internal.Http.Parser.Tests"
                            Snap.Internal.Http.Parser.Tests.tests
                , testGroup "Snap.Internal.Http.Server.Tests"
                            Snap.Internal.Http.Server.Tests.tests
                ]
