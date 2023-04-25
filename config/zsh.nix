{ pkgs, ... }: {

home.packages = with pkgs; [
    zsh
    thefuck
];

programs.zsh = {
  enable = true;
  enableAutosuggestions = true;
  enableCompletion = true;
  enableSyntaxHighlighting = true;
  shellAliases = {
    ll = "ls -l";
  };
  history = {
    size = 10000;
  };

  oh-my-zsh = {
    enable = true;
    plugins = [ "git" "thefuck" ];
    theme = "robbyrussell";
  };
  initExtra = ''
    export DOCKER_HOST=unix:///run/user/1000/docker.sock
    export SOPS_AGE_KEY_FILE=~/.keys/github
    
  '';
};
}