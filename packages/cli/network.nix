{ pkgs, ... }: {

  home.packages = with pkgs; [
    #    shuttle
    dnstop
  ];
}

