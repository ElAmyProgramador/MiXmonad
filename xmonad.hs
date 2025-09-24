import XMonad
--import XMonad.Util.SpawnOnce
import MyStartup
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ManageDocks
import qualified XMonad.StackSet as W
--import "containers" qualified Data.Map as M

-- esta funcion inicia el fondo de pantalla e inicia xmobarspawnOnce :: String -> X, donde X es una funcion del sistema supongo :v
--myStartupHook :: X ()
--myStartupHook = do
    --spawnOnce "feh --bg-fill /home/psykokwak/Images/fondos/GatoBoca.jpg &" -- la ruta de tu fondo de pantalla
    --spawnOnce "xmobar &"

main :: IO ()
main = xmonad =<< xmobar def
    {modMask = mod4Mask,
    borderWidth = 2,
    normalBorderColor = "282828",
    focusedBorderColor = "ff79c6",
    terminal = "kitty", -- esta es la terminal que tengo por defecto, cambiala por la tuya
    startupHook = myStartupHook,
    layoutHook = avoidStruts $ layoutHook def,
    manageHook = manageHook def <+> manageDocks
    }
