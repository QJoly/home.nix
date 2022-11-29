{ pkgs, ... }: {
  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
# GUI 
    geany
    meld
    vlc
    tdesktop
    chromium
    thunderbird
    flameshot
    vscode
    yubioath-desktop
    yubikey-manager
    libreoffice-fresh

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
    img2pdf
    libwebp
#    imagemagick
    unzip
#    (pkgs.callPackage ./app/comicconverter-nix/default.nix {})

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
