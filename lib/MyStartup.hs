module MyStartup (myStartupHook) where

import XMonad
import XMonad.Util.SpawnOnce

myStartupHook :: X ()
myStartupHook = do
    spawnOnce "feh --bg-fill /home/psykokwak/Images/fondos/GatoBoca.jpg &"
    spawnOnce "xmobar &"
    spawnOnce "picom &"
    spawnOnce "nm-applet &"
    spawnOnce "volumeicon &"
