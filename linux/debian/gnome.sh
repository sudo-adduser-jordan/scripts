



gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'
gsettings set org.gnome.desktop.peripherals.touchpad tap-to-click true
gsettings set org.gnome.desktop.peripherals.touchpad two-finger-scrolling-enabled true

gsettings set org.gnome.TextEditor show-map true
gsettings set org.gnome.TextEditor wrap-text false
gsettings set org.gnome.TextEditor show-line-numbers true
gsettings set org.gnome.TextEditor show-right-margin true
gsettings set org.gnome.TextEditor style-scheme 'classic-dark'

gsettings set org.gnome.Terminal.Legacy.Settings theme-variant 'dark'
gsettings set org.gnome.Terminal.Legacy.Keybindings:/org/gnome/terminal/legacy/keybindings/ copy '<Control>c'
gsettings set org.gnome.Terminal.Legacy.Keybindings:/org/gnome/terminal/legacy/keybindings/ paste '<Control>v'

gsettings set org.gnome.desktop.wm.keybindings close "['<Control>q']"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ name 'gnome-terminal'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ command 'gnome-terminal'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ binding '<Shift>Space'
dconf dump /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/
# org.gnome.settings-daemon.plugins.media-keys custom-keybindings ['/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/']

# gsettings set org.gnome.shell favorite-apps [
#	'org.gnome.Nautilus.desktop', 
#	'org.gnome.TextEditor.desktop'
#	'firefox-esr.desktop',  
#	'code.desktop',  
#	'org.gnome.Software.desktop', 
# ]










