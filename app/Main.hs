module Main where

import XMonad
import XMonad.Config.Desktop
import XMonad.Config.Gnome
import XMonad.Hooks.EwmhDesktops
import XMonad.Hooks.SetWMName
import XMonad.Util.EZConfig
import XMonad.Util.Run

main :: IO ()
main = do
  --dirs <- getDirectories
  --let xmDir = cfgDir dirs
  spawn "feh --bg-scale /home/abastro/Pictures/Universe/Andromeda_Galaxy.jpg"
  xmonad desktopConfig
  {-
  xmonad . ewmhFullscreen $
    desktopConfig
      { --modMask = mod4Mask,
        --startupHook = startupHook desktopConfig <> do
        --  setWMName "LG3D"
        --  gnomeRegister, -- Registers xmonad with gnome
        terminal = "gnome-terminal"
        --manageHook =  isDialog --> doFloat
      }
      `additionalKeysP` [("M-d", safeSpawnProg "nautilus")]
      -}
