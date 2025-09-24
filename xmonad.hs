import XMonad
import XMonad.Util.SpawnOnce

-- esta funcion inicia el fondo de pantalla spawnOnce :: String -> X, donde X es una funcion del sistema supongo :v
myStartupHook :: X ()
myStartupHook = do
    spawnOnce "feh --bg-fill /home/psykokwak/Images/fondos/GatoBoca.jpg &"

main :: IO ()
main = xmonad $ def
    {modMask = mod4Mask,
    borderWidth = 2,
    normalBorderColor = "dddddd",
    focusedBorderColor = "ff0000",
    terminal = "kitty", -- esta es la terminal que tengo por defecto, cambiala por la tuya
    startupHook = myStartupHook
    }
