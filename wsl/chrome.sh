# !/bin/bash
# https://blog.csdn.net/lujian45/article/details/135314466

cd ~/Downloads;
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb;
sudo apt -f install;
sudo dpkg -i google-chrome-stable_current_amd64.deb;
sudo apt install language-pack-zh-hant

# sudo vim /etc/fonts/local.conf
# <?xml version="1.0"?>
# <!DOCTYPE fontconfig SYSTEM "fonts.dtd">
# <fontconfig>
#     <dir>/mnt/c/Windows/Fonts</dir>
# </fontconfig>
# fc-cache -f -v

sudo apt install fcitx dbus-x11 im-config
sudo dpkg -i sogoupinyin_4.2.1.145_amd64.deb
sudo apt install libqt5qml5 libqt5quick5 libqt5quickwidgets5 qml-module-qtquick2 libgsettings-qt1 libpulse0
