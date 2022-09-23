{ pkgs, ... }: {
  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
    geany
    meld
    vlc
    neovim
    discord
    tdesktop
    starship
    git
    wget
    thunderbird
    lightlocker
    flameshot
    kubectl
    terraform
    element-desktop
  ];
}
