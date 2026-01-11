module Keys (myKeys) where

import XMonad
import XMonad.Util.EZConfig (additionalKeysP)

miTerminal :: String
miTerminal = "kitty"

myKeys :: [(String, X())]
myKeys = [
    ("M-d", spawn "rofi -show drun"),
    ("M-S-p", spawn "rofi -show run"),
    ("M-w", spawn "rofi -show menu"),
    ("M-t", spawn "dolphin"),
    ("M-<Return>", spawn miTerminal),
    ("M-S-k", kill),
    ("<XF86AudioRaiseVolume>", spawn "pactl set-sink-volume @DEFAULT_SINK@ +5%"),
    ("<XF86AudioLowerVolume>", spawn "pactl set-sink-volume @DEFAULT_SINK@ -5%"),
    ("<XF86AudioMute>", spawn "pactl set-sink-mute @DEFAULT_SINK@ toggle"),
    ("<XF86MonBrightnessUp>", spawn "brightnessctl set +5%"),
    ("<XF86MonBrightnessDown>", spawn "brightnessctl set 5%-")
    ]
