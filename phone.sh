#!/bin/bash
set -euo pipefail
termux-setup-storage
mv ~/storage/shared/si.tar.gpg.zstd .
curl https://raw.githubusercontent.com/megahomyak/shitcryption/refs/heads/master/shitcryption.sh -o shitcryption.sh
chmod +x shitcryption.sh
./shitcryption.sh si
rm shitcryption.sh
cd si/keys/cmf1
cp id_ed25519 id_ed25519.pub config ~/.ssh
cp -r ../mi ~/micronotes
cp -r ../ss ~/ss
pkg install neovim python tree git gh
cd ~
mkdir i
cd i
git clone git@github.com:megahomyak/dotfiles.git
git clone git@github.com:megahomyak/micronotes.git
git clone git@github.com:megahomyak/shitcryption.git
git clone git@github.com:megahomyak/secret_stash.git
git clone git@github.com:megahomyak/project_manager.git
cd dotfiles
NOSUDO=1 ./apply.sh
printf 'source ~/bash_utils.sh\n' >> ~/.bashrc
