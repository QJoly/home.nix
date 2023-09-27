{ pkgs, ... }:

let
  configFile = builtins.fromJSON (builtins.readFile ../config.json);
in

rec {

  home.packages = with pkgs; [
    zsh
    thefuck
    z-lua
  ];

  programs.zsh = {
    enable = true;
    enableAutosuggestions = true;
    enableCompletion = true;
    enableSyntaxHighlighting = true;
    shellAliases = {
      ll = "ls -l";
    };
    history = {
      size = 10000;
    };

    oh-my-zsh = {
      enable = true;
      plugins = [
        "docker"
        "encode64"
        "git"
        "git-extras"
        "man"
        "nmap"
        "ssh-agent"
        "sudo"
        "systemd"
        "tig"
        "tmux"
        "vi-mode"
        "yarn"
        "zsh-navigation-tools"
        "mix"
        "thefuck"
      ];

      theme = "robbyrussell";
    };

    initExtra = "
      bindkey -s '^z' 'fg^M'
      path+=('${configFile.userConfig.home}/.krew/bin')
      path+=('${configFile.userConfig.home}/.local/bin')
      . ${configFile.userConfig.home}/.guix-profile/etc/profile
      please showtasks
    ";
  };
}
