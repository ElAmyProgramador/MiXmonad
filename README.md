# Configuración de XMonad
Este repositorio es mío y es para cuidar mi instalación y configuración de XMonad. Además de hacerlo una guía para quien quiera usar o instalar XMonad con mi configuración u basada en esta.
No he encontrado una buena guía de XMonad para instalar y configurar en español, entonces es posible que esto sirva.
Prefiero los entornos minimalistas tanto en código como en vista, para evitar distracciones y ser mucho mas legible
## Instalación
### Herramientas de haskell
Para instalar y que funcione bien xmonad, debemos de instalar ciertos paquetes y librerias para evitar errores, los cuales se listan en orden

#### Cabal
Cabal es el gestor de paquetes de Haskell, similar a pip en ptyhon. Necesitamos 2 librerías esencialmente.
- xmonad (el estor de ventanas en sí)
- xmonad-contirb, funciones hechas por la comunidad, si mal no recuerdo

Su instalación es algo simple, y ya viene en el (script de instalación)[install.sh], es imporatante que al final del comando usemos --lib, de lo contrario se instalarán como paquetes binarios, y el compilador GHC no los tomará como librerías universales

### Herramientas del sistema
Entre las herramientas del sistema, tenemos:
- ghc, el Glasglow Haskell Compiler, para poder ocmpilar programas en haskell
- cabal, el gestor de paquetes de haskell
- Las herramientas de desarrollo de X11 (viene en el (script de instalación)[install.sh])
- xmobar, si se instala xmobar desde cabal, obtendremos un error, ya que no se ha actualizado en años xmobar en cabal, por lo que debe de instalarse directamente desde los repos de opensuse
- xclip (en mi caso vino por defecto, pero quizás debas de instalarlo usando "sudo zypper install xclip")
- rofi, en mi caso usaré rofi para hacer esto más estético
- packman, repositorio comunitario de la comunidad
- i3lock, para tener bloqueo de pantalla con contraseña al suspender
