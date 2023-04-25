#{ config, pkgs, ... }:
{
    imports = [
    ../../packages/cli/kubernetes.nix
    ../../packages/cli/git.nix
    ];

}