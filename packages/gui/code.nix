{ pkgs, ... }: {

  home.packages = with pkgs; [
    meld
    vscode
    geany
  ];
}
