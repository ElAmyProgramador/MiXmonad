module MyLayout (myLayout) where

import XMonad
import XMonad.Layout.Spacing
import XMonad.Layout.Grid
import XMonad.Layout.NoBorders
import XMonad.Layout.LayoutModifier (ModifiedLayout)

myLayout :: ModifiedLayout SmartBorder
             (Choose (ModifiedLayout Spacing Tall)
                     (Choose (Mirror (ModifiedLayout Spacing Tall))
                             (Choose Grid Full))) Window
myLayout = smartBorders (tiled ||| Mirror tiled ||| Grid ||| Full)
  where
    tiled = spacing 8 $ Tall 1 (3/100) (1/2)
