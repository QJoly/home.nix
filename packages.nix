{ pkgs, ... }: {
  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
# GUI 
    geany
    meld
    vlc
    tdesktop
    etcher
    rpi-imager 

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
    k9s
    terraform
    terragrunt
    element-desktop
    nerdfonts
    (pkgs.callPackage ./app/devspace.nix {})
    docker-compose
    kubernetes-helm
    kompose
  ];
}
