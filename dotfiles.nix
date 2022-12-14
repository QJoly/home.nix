{ pkgs, inputs, system, ... }:
{
  home.file.".config/user-dirs.dirs".source = ./dotfiles/user-dirs.dirs;
  home.file.".zshrc".source = ./dotfiles/zshrc;
  home.file.".p10k.zsh".source = ./dotfiles/p10k.zsh;

# i3
  home.file.".config/.wallpaper.png".source = ./dotfiles/wallpaper.png;
  home.file.".config/i3/config".source = ./dotfiles/i3config;
  home.file.".polybar.sh".source = ./dotfiles/polybar.sh;
  home.file.".config/polybar/config.ini".source = ./dotfiles/polybar.config.ini;
}
