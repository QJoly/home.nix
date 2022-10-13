{ pkgs, ... }: {
  imports = [
    ./packages.nix
    ./programs.nix
    ./dotfiles.nix
#    ./doom.nix
  ];

}
