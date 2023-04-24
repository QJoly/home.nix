{ pkgs, ... }: {
  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
    geany
    meld
    vlc
    tdesktop
    chromium
    firefox
    thunderbird
    flameshot
    vscode
    libreoffice-fresh
  ];
}
