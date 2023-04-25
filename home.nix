  { config, pkgs, hostname, sops-nix, ... }:

let 
  configFile = builtins.fromJSON (builtins.readFile ./config.json);  
in rec {
  
  imports = [
    (./host + ("/" + configFile.systemHostname))
  ];
  
  home.username = configFile.userConfig.username;
  home.homeDirectory = configFile.userConfig.home;
  home.stateVersion = "22.11"; 
  home.sessionVariables = {
    EDITOR = "vim";
  };
  programs.home-manager.enable = true;
}