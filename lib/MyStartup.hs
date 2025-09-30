module MyStartup (myStartupHook) where

import XMonad
import XMonad.Util.SpawnOnce

myStartupHook :: X ()
myStartupHook = do
    spawnOnce "feh --bg-fill /home/psykokwak/Images/fondos/GatoBoca.jpg &"
    spawnOnce "xmobar &"
    -- esta seccion es solo para poner el touchpad y trackpoint en modo zurdo
    spawn "xinput set-button-map 'TPPS/2 IBM TrackPoint' 3 2 1"
    spawn "xinput set-button-map 'SynPS/2 Synaptics TouchPad' 3 2 1"
    spawn "xinput set-button-map 'Gaming Mouse' 3 2 1 " -- un mouse gamer
    spawn "picom &"
    spawnOnce "trayer --edge top --align right --widthtype request --padding 6 \
                  \ --expand true --transparent true --alpha 0 --tint 0x1c1c1c \
                  \ --height 16 --SetDockType false --SetPartialStrut false &"
    spawnOnce "nm-applet &"
    spawnOnce "volumeicon &"
