#!/bin/sh
export PATH=/$HOME/.cabal/bin:$opt/ghc/7.10.3/bin:/opt/cabal/1.22/bin:$PATH;
if ! type "agda" > /dev/null || [ ! `agda -V | sed "s/[^2]*//"` = "2.5.1" ]; then
  cabal update
  cabal install alex happy
  cabal install Agda
fi
