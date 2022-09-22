{ pkgs, ... }: {
  imports = [
    ./packages.nix
    ./programs.nix
    ./dotfiles.nix
  ];


}
