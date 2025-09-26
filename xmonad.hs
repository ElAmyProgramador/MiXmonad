import XMonad
import MyStartup
import Keys
import MyWorkspaces
import MyLayout
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ManageDocks
import XMonad.Util.EZConfig (additionalKeysP)
import XMonad.Util.Run (spawnPipe)
import XMonad.Layout.Spacing
import qualified XMonad.StackSet as W
import System.IO (hPutStrLn)

main = do
  xmproc <- spawnPipe "xmobar ~/.config/xmobar/xmobarrc"
  xmonad (docks (def
    { modMask            = mod4Mask
    , borderWidth        = 2
    , normalBorderColor  = "#282828"
    , focusedBorderColor = "#ff79c6"
    , workspaces         = myWorkspaces
    , terminal           = "kitty"
    , startupHook        = myStartupHook
    , layoutHook         = myLayout
    , manageHook         = manageHook def <+> manageDocks
    , logHook            = dynamicLogWithPP xmobarPP
                            { ppOutput = hPutStrLn xmproc }
    }) `additionalKeysP` myKeys)
