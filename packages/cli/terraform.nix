{ pkgs, ... }: {
  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
    terragrunt
    terraform
    terraform-docs
  ];
}


