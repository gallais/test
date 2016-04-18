#!/bin/sh
if ! type "agda" > /dev/null || [ ! `agda -V | sed "s/[^2]*//"` = "2.5.1" ]; then
  cabal update
  cabal install alex happy
  cabal install Agda
fi
