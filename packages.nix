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
    thunderbird
    flameshot
    deluge
# CLI
    starship
    neovim
    git
    wget
    lightlocker
    tree
    img2pdf
    libwebp
    imagemagick
    unzip

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
    kubectx
  ];
}
