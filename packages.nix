{ pkgs, ... }: {
  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
# native
    file
    findutils

# CLI
    htop
    zsh
    poppler_utils
    starship
    neovim
    file
    findutils
    git
    wget
    lightlocker
    tree
    libwebp
    unzip

# DEVOPS
    kubectl
    k9s
    stern
    terraform
    terragrunt
    element-desktop
    nerdfonts
    (pkgs.callPackage ./app/devspace.nix {})
    docker-compose
    kubernetes-helm
    kompose
    kubectx
    k2tf
    ansible

# I3
    rofi
    polybar
    feh
    

  ];
}
