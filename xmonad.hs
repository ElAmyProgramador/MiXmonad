import XMonad
import MyStartup
import Keys
import MyWorkspaces
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ManageDocks
import qualified XMonad.StackSet as W

main = xmonad =<< xmobar (def
    {modMask = mod4Mask, -- tecla super/windows
    borderWidth = 2,
    normalBorderColor = "282828",
    focusedBorderColor = "ff79c6",
    workspaces = myWorkspaces,
    terminal = "kitty", -- esta es la terminal que tengo por defecto, cambiala por la tuya
    startupHook = myStartupHook,
    layoutHook = avoidStruts $ layoutHook def,
    manageHook = manageHook def <+> manageDocks
    }
    `myKeys`)
