# Install all the basic apps
apt install -y policykit-1-gnome i3-wm flameshot rofi polybar nitrogen

# Install alacritty
apt install cargo -y
cargo install alacritty 

# Copy configurations
cp -r ./ ~/.config/
