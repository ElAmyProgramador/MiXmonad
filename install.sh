#!/bin/bash
#
# # script para instalar lo necesario para XMonad, recordad que esta instalación y configuración está hecha para que corra en mi maquina con OpenSUSE Tumbleweed
#
# instalación de herramientas (en primera isntancia usaré feh, aunque puedes usar nitrogen u otro gestor de fondos de pantalla)
sudo zypper install ghc ghc-cabal cabal-install libX11-devel libXext-devel libXft-devel libXrandr-devel libXinerama-devel libXss-devel feh

# esto instalará XMonad y XMonad-contrib
cabal install xmonad xmonad-contirb --lib # he encontrado que cabal los intenta instalar como software y no como una libreria universal para ghc

# las versiones recientes tienen el archivo de configuracion en ~/.config/xmonad, es ahí donde debemos de poner nuestro archivo de configuración del escritorio
touch ~/.config/xmonad/xmonad.hs

# posteriormente se puede hacer git clone en ~/.config/xmonad o solo mover el archivo xmonad.hs a esta dirección
