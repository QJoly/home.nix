{ lib, pkgs, ... }: {

  home.packages = with pkgs; [
    spotify
    audacity
    vlc
  ];

}
