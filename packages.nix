{ pkgs, ... }: {
  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
# GUI 
    geany
    meld
    vlc
    tdesktop

# CLI
    starship
    neovim
    git
    wget
    thunderbird
    lightlocker
    flameshot

# DEVOPS
    kubectl
    terraform
    terragrunt
    element-desktop
    nerdfonts


  ];



}
