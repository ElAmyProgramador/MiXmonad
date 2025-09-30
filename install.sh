#!/bin/bash
#
# # script para instalar lo necesario para XMonad, recordad que esta instalación y configuración está hecha para que corra en mi maquina con OpenSUSE Tumbleweed
#
# añadir packman y x11de
sudo zypper addrepo https://download.opensuse.org/repositories/X11:lxde/openSUSE_Tumbleweed/X11:lxde.repo
sudo zypper ar -cfp 90 https://ftp.gwdg.de/pub/linux/misc/packman/suse/openSUSE_Tumbleweed/ packman

# actualizar los repos (si aparece algo sobre aceptar las llaves, puedes aceptarla  con "a", o solo temporalmente con "t")
sudo zypper ref

# instalación de herramientas (en primera isntancia usaré feh, aunque puedes usar nitrogen u otro gestor de fondos de pantalla)
sudo zypper install ghc ghc-cabal cabal-install libX11-devel libXext-devel libXft-devel libXrandr-devel libXinerama-devel libXss-devel xmobar feh rofi picom NetworkManager-applet volumeicon

# esto instalará XMonad y XMonad-contrib
cabal install xmonad xmonad-contirb --lib # he encontrado que cabal los intenta instalar como software y no como una libreria universal para ghc

# las versiones recientes tienen el archivo de configuracion en ~/.config/xmonad, es ahí donde debemos de poner nuestro archivo de configuración del escritorio
touch ~/.config/xmonad/xmonad.hs

# posteriormente se puede hacer git clone en ~/.config/xmonad o solo mover el archivo xmonad.hs a esta dirección
