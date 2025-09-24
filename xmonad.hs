import XMonad

main :: IO ()
main = xmonad $ def
    {modMask = mod4Mask,
    borderWidth = 2,
    normalBorderColor = "dddddd",
    focusedBorderColor = "ff0000",
    terminal = "kitty" -- esta es la terminal que tengo por defecto, cambiala por la tuya
    }
