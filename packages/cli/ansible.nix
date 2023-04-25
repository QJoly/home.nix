{ pkgs, ... }: {
  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
    ansible
    ansible-lint
    ansible-doctor
    kargo
  ];
}

