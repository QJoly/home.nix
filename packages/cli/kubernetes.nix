{ pkgs, ... }: {
  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
    kubectl
    k9s
    stern
    terraform
    terragrunt
    element-desktop
    nerdfonts
    docker-compose
    kubernetes-helm
    kompose
    kubectx
    k2tf
    ansible
  ];
}
