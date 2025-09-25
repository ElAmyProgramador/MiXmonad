module Keys (myKeys) where

import XMonad
import XMonad.Util.EZConfig (additionalKeysP)

miTerminal :: String
miTerminal = "kitty"

myKeys :: XConfig l -> XConfig l
myKeys conf =
    conf `additionalKeysP` [
        ("M-d", spawn "rofi -show drun"),
        ("M-S-p", spawn "rofi -show run"),
        ("M-w", spawn "rofi -show menu"),
        ("M-<Return>", spawn miTerminal),
        ("M-S-k", kill)
    ]
