{ pkgs, inputs, system, ... }:
{
  home.file.".config/user-dirs.dirs".source = ./dotfiles/user-dirs.dirs;
}
