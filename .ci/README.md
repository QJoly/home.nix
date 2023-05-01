
Run the tests in a docker container.

```bash
docker exec -it nixos-tester /root/.nix-profile/bin/bash
mkdir -p ~/.config/nix
echo "experimental-features = nix-command flakes" > ~/.config/nix/nix.conf
home-manager init
cp -r /data/* ~/.config/home-manager/
cd ~/.config/home-manager
nix-env -i gnused -v
nix-env -e git
sed -i "s;BarbeNoire;common;g" config.json
sed -i "s;/home/kiko;$HOME;g" config.json
sed -i "s;kiko;$(whoami);g" flake.nix config.json
    
```