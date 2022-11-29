{ pkgs, ... }: {

  programs = {
    git = {
    enable = true;
    userName = "QJoly";
    userEmail = "qjoly@users.noreply.github.com";
    ignores =  [
      "*~"
      "*.swp"
     ];
    };
    firefox.enable = true;
    starship.enable = false;
    bash = {
      enable = true;
      shellAliases = {
        ll = "ls -lh";
        la = "ls -a";
      };
    };
};


 dconf.enable = true;


}
