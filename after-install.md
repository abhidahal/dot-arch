# Installation Commands

The following are commands to install various essential packages, configure Neovim, set up system configurations, and more.

### 1. Install necessary packages

```bash
yay -Syu --needed --noconfirm neovim atuin moar zoxide nodejs npm eza ripgrep cheese lazygit fzf microsoft-edge-stable-bin bat lf silicon fd git-delta update-grub tesseract tesseract-data-eng ttf-joypixels tmux fastfetch openssh pipx pyprland cmake github-cli spicetify spicetify-cli spotify openvpn systemd-resolvconf zsh protonvpn nodejs-browser-sync docker docker-desktop zen-browser docker-compose yazi ffmpegthumbnailer p7zip jq poppler imagemagick update-grub cmake meson cpio cava
```

### 2. Clone Neovim configuration

```bash
git clone https://github.com/abhidahal/avim $HOME/.config/nvim
```

### 3. Create a `work` directory and clone dotfiles

```bash
mkdir $HOME/work && git clone https://github.com/abhidahal/dot-arch $HOME/work/dot-arch
```

### 4. Copy necessary dotfiles

```bash
cp -r $HOME/work/dot-arch/.git $HOME/.config
cp -r $HOME/work/dot-arch/lazygit $HOME/.config
```

### 5. Remove and link `.zshrc`, `.bashrc`, and `.gitconfig`

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
sudo mv $HOME/.oh-my-zsh /usr/share/oh-my-zsh
( cd $ZSH_CUSTOM/plugins && git clone https://github.com/chrissicool/zsh-256color )
( cd $ZSH_CUSTOM/plugins && git clone https://github.com/zsh-users/zsh-syntax-highlighting.git )
( cd $ZSH_CUSTOM/plugins && git clone https://github.com/zsh-users/zsh-autosuggestions)
rm -rf $HOME/.zshrc && rm -rf $HOME/.bashrc
cp -r $HOME/work/dot-arch/.zshrc $HOME/.config
cp -r $HOME/work/dot-arch/.bashrc $HOME/.config/
cp -r $HOME/work/dot-arch/aliases $HOME/.config
cp -r $HOME/work/dot-arch/.gitconfig $HOME/.config/
ln -s $HOME/.config/.zshrc $HOME/.zshrc
ln -s $HOME/.config/.bashrc $HOME/.bashrc
ln -s $HOME/.config/.gitconfig $HOME/.gitconfig
```

### 6. Install Starship prompt

```bash
curl -sS https://starship.rs/install.sh | sh
cp -r $HOME/work/dot-arch/starship.toml $HOME/.config/
```

### 7. Install Atuin and configure

```bash
curl --proto '=https' --tlsv1.2 -LsSf https://setup.atuin.sh | sh
source $HOME/.atuin/bin/env
atuin register -u <username> -e <email> -p LAtecdv55
atuin login -u <username>
```

### 8. Sync system clock

```bash
sudo timedatectl set-ntp true
```

### 9. Set up Hyprdots configuration

```bash
mkdir $HOME/.config/hyprdots
cp -r $HOME/.local/share/bin $HOME/.config/hyprdots/scripts
```

### 10. Build Bat cache

```bash
cp -r $HOME/work/dot-arch/bat $HOME/.config/
cp -r $HOME/work/dot-arch/fastfetch $HOME/.config/
bat cache --build
```

### 11. Replace SDDM and GRUB themes

```bash
sudo rm -rf /usr/share/sddm && sudo cp -r $HOME/work/dot-arch/sddm /usr/share
sudo rm -rf /usr/share/grub && sudo cp -r $HOME/work/dot-arch/grub /usr/share
sudo update-grub
```

### 12. Hyprland Plugin Management

```bash
hyprpm update
hyprpm add <https://github.com/hyprwm/hyprland-plugins>
hyprpm list
hyprpm add hyprexpo
hyprpm enable hyprexpo
hyprpm update
```

### 13. Clone and set up Rofi themes

```bash
git clone https://github.com/lr-tech/rofi-themes-collection.git $HOME/work
mkdir -p $HOME/.local/share/rofi/themes
cp -r $HOME/work/rofi-themes-collection/themes/** $HOME/.local/share/rofi/themes
```

### 14. Generate SSH keys and add to the agent

```bash
ssh-keygen -t rsa -b 4096 -C "<email>"
eval "$(ssh-agent -s)"
ssh-add $HOME/.ssh/id_rsa
cat $HOME/.ssh/id_rsa.pub | wl-copy
> chmod 400 ~/.ssh/id_rsa # if needed

git config --global user.name "Your Name"
git config --global user.email "youremail@yourdomain.com"

gh auth login --web -h github.com
gh extension install github/gh-copilot --force
```

### 15. Install global npm packages

```bash
sudo npm i -g pnpm && sudo npm i -g yarn && sudo npm i -g @antfu/ni
```

### 16. Acer Sense Fan and KB_LIGHTs

```bash
yay -S rsync openrc
cp -r $HOME/work/dot-arch/acerSense $HOME/.config
cd $HOME/.config/acerSense
download from https://github.com/Exodia-OS/exodia-repo/blob/master/x86_64/
sudo pacman -U Predator-Sense-CLI-7.2-11-any.pkg.tar.zst
chmod +x ./*.sh
sudo ./install_service.sh
> sudo ./install_openrc.sh
```

### 17. Pyprland setup

```bash
curl https://raw.githubusercontent.com/hyprland-community/pyprland/main/scripts/get-pypr | sh
```

### 18. Tmux setup

```bash
git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm
tmux source ~/.config/tmux/tmux.conf
```
