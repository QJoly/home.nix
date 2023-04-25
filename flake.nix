{
  description = "Home Manager configuration";

  # Specify the source of Home Manager and Nixpkgs and vim plugins.
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    nixpkgs-stable.url = "github:nixos/nixpkgs/nixos-22.05";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = {
    self,
    nixpkgs,
    nixpkgs-stable,
    sops-nix,
    home-manager,
    ...
  }: 
  let
    system = "x86_64-linux";
    #pkgs = nixpkgs.legacyPackages.${system};
    pkgs = import nixpkgs {
        inherit system;
        config.allowUnfree = true;
      };
  in {
    homeConfigurations.kiko = home-manager.lib.homeManagerConfiguration {
      inherit pkgs;
      modules = [
        ./home.nix
        ];
      extraSpecialArgs = {
        inherit home-manager;
      };
    };

    # templates = {
    #   default = {
    #     path = ./templates/flake;
    #     description = "Flake with python and go stuff";
    #   };
    #   ansible = {
    #     path = ./templates/ansible;
    #     description = "Flake with ansible and shellhook to login to awx";
    #   };
    # };
  };
}
