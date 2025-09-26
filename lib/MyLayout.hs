module MyLayout (myLayout) where

import XMonad
import XMonad.Layout.Spacing
import XMonad.Layout.Grid
import XMonad.Layout.NoBorders
import XMonad.Layout.LayoutModifier
import XMonad.Layout.Gaps
import XMonad.Hooks.ManageDocks

myLayout :: ModifiedLayout AvoidStruts
               (ModifiedLayout SmartBorder
                   (ModifiedLayout Gaps
                       (Choose (ModifiedLayout Spacing Tall)
                               (Choose (Mirror (ModifiedLayout Spacing Tall))
                                       (Choose Grid Full)))))
               Window
myLayout = avoidStruts $
             smartBorders $
               gaps [(U,20), (D,8), (L,8), (R,8)] $
                 (tiled ||| Mirror tiled ||| Grid ||| Full)
  where
    tiled = spacing 8 $ Tall 1 (3/100) (1/2)
