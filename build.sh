#!/bin/sh
cfgid="xmonad-test"
cache="$XMONAD_CACHE_DIR"
xmonad_name="xmonad-$ENV_ARCH-$ENV_OS"

cabal install "exe:$cfgid" \
  --installdir="$cache" --install-method=copy \
  --overwrite-policy=always
ln -sf "$cache/$cfgid" "$cache/$xmonad_name"
