docker run --workdir='/flake' -it --rm -v `pwd`:'/flake' nixos/nix nix develop --extra-experimental-features nix-command --extra-experimental-features flakes
