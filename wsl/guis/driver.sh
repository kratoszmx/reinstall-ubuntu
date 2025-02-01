# !/bin/bash

# https://mmmhj2.github.io/%E9%97%B2%E7%AC%94/2022/03/23/hardware-acceleration-for-wsl2.html
# https://blog.csdn.net/old_power/article/details/145009713

# Mesa 不提供官方的二进制文件，需要添加第三方源
sudo add-apt-repository ppa:kisak/kisak-mesa
sudo apt-get update
sudo apt install libegl-mesa0
