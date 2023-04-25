{ pkgs, ... }: {
  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
    kubectl
    k9s
    stern
    kubernetes-helm
    kompose
    kubectx
    k2tf
    kind
    fluxcd
  ];
}


