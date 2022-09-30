{ pkgs, ... }: {
  imports = [
    ./packages.nix
    ./programs.nix
    ./dotfiles.nix
    ./doom.nix
#    ./discord_patched.nix
  ];


}
