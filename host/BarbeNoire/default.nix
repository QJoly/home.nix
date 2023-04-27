let
  DOCKER_HOST = "unix:///run/user/1000/docker.sock";
in
rec {
  imports = [
    ../../packages/cli/kubernetes.nix
    ../../packages/cli/terraform.nix
    ../../packages/cli/ansible.nix
    ../../packages/cli/editors.nix
    ../../packages/cli/network.nix
    ../../packages/gui/code.nix
    ../../packages/gui/media.nix
    ../../packages/gui/misc.nix
    ../../packages/gui/office.nix
    ../../packages/gui/social.nix
    ../../config/git.nix
    ../../config/kubernetes.nix
    ../../config/zsh.nix
    ../../config/direnv.nix
    ../../config/vim.nix
    ./espanso.nix

  ];

  programs.zsh = {
    initExtra = ''
      export DOCKER_HOST=${DOCKER_HOST}
      export SOPS_AGE_KEY_FILE=~/.keys/github
    '';
  };
}
