{
    imports = [
    ../../packages/cli/kubernetes.nix
    ../../packages/cli/terraform.nix
    ../../packages/cli/ansible.nix
    ../../packages/gui/code.nix
    ../../packages/gui/media.nix
    ../../packages/gui/misc.nix
    ../../packages/gui/office.nix
    ../../packages/gui/social.nix
    ../../config/git.nix
    ../../config/zsh.nix
    ];

programs.zsh = {
  initExtra = ''
    export DOCKER_HOST=unix:///run/user/1000/docker.sock
    export SOPS_AGE_KEY_FILE=~/.keys/github
  '';
  };
}