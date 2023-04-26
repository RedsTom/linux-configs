# Copy configurations
cp -r ./ ~/.config/

# Install all the basic apps
apt install -y policykit-1-gnome i3-wm flameshot rofi polybar nitrogen

# Install alacritty
apt install cargo -y
cargo install alacritty 

# Install neovim
apt install neovim -y
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
nvim +'PlugInstall --sync' +qa
