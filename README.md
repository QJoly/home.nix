

# Nix Home-Manager

[Nix Home-Manager](https://github.com/nix-community/home-manager) is a tool for managing a user's environment configuration. It is built on top of the Nix package manager, which provides a declarative approach to package management and system configuration.

With Home-Manager, you can define your entire user environment, including shell configuration, development tools, and other applications, in a single configuration file. This configuration file is then used to generate a set of symbolic links, which are used to point to the corresponding packages in the Nix store. This approach ensures that your environment is always reproducible and consistent across multiple machines.

## My Configuration

This project is an example of what can be done with Nix. I have separated the programs that install into several categories : 
- GUI:
    - code
    - media
    - misc
    - office
    - social
- CLI:
    - ansible
    - kubernetes
    - terraform

I have stored in this repo the config files of these programs:
- git
- zsh
- vim (todo)
- sway (todo)

I preconfigured which programs/configs will be imported in your host in `host/`. You can choose which one will be used by editing the `config.json` file 

## How to install and configure Home-Manager

### Install Nix

Refer to [this page](https://nixos.org/download.html) if you need detail

```bash
sh <(curl -L https://nixos.org/nix/install) --daemon # Multi-User
sh <(curl -L https://nixos.org/nix/install) --no-daemon # Single-User
```

### Install Home-Manager

```bash
mkdir -p ~/.config/nix
echo "experimental-features = nix-command flakes" > ~/.config/nix/nix.conf
nix-channel --add https://github.com/nix-community/home-manager/archive/master.tar.gz home-manager
nix-channel --update -v
nix-shell '<home-manager>' -A install
```

### Add my configuration

```bash
cd ~/.config/home-manager 
sed -i "s;/home/kiko;$HOME;g" config.json
sed -i "s;kiko;$(whoami);g" flake.nix config.json
git clone https://github.com/QJoly/home.nix .
```
