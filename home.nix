{ config, pkgs, ... }:

{
  imports = [ ./configs/main.nix ./packages/main.nix ./dev ./apps];
  nixpkgs.overlays = [ (import ./overlays/main.nix) ];

  home = {
    username = "valeran";
    homeDirectory = "/home/valeran";
    keyboard.layout = "fr";
  };

  home.stateVersion = "21.05";
}
