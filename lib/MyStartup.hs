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
    spawn "setxkbmap -device 15 latam -variant dvorak &"
    spawnOnce "trayer --edge top --align right --widthtype request --padding 0 --SetDockType true --SetPartialStrut true --expand true --monitor primary --transparent false --alpha 255 --tint 0x1c1c1c --height 22 &"
    --spawnOnce "orage &"
    spawnOnce "nm-applet &"
    spawnOnce "pasystray &"
    spawnOnce "flatpak run com.github.hluk.copyq --start-server &"
    spawnOnce "cbatticon -n &"
    spawnOnce "picom --config ~/.config/picom/picom.conf &"
    spawnOnce "./setKB.sh &"
    spawnOnce "xss-lock -- i3lock -i ~/Images/fondos/MonikaWindows.png &"
