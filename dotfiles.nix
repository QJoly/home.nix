{ pkgs, inputs, system, ... }:
{
  home.file.".config/user-dirs.dirs".source = ./dotfiles/user-dirs.dirs;
  home.file.".zshrc".source = ./dotfiles/zshrc;
  home.file.".p10k.zsh".source = ./dotfiles/p10k.zsh;
}
