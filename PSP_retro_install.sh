#!/bin/bash

# Download nds_install_packet files
cd ~
git clone https://gitee.com/KXGL/retro_game_psp_install.git
cd ~/retro_game_psp_install/
unzip psp_install_packet.zip

# move file
cd ~/retro_game_psp_install/
sudo mv "/home/cpi/retro_game_psp_install/PSP.png" "/home/cpi/launcher/skin/default/Menu/GameShell/20_Retro Games/PSP.png"
sudo mv "/home/cpi/retro_game_psp_install/12_PSP/" "/home/cpi/apps/Menu/20_Retro Games/12_PSP/"
sudo mv "/home/cpi/retro_game_psp_install/psp-1.12/" "/home/cpi/psp-1.12"
sudo chmod +x "/home/cpi/psp-1.12/PPSSPPSDL"

# tip
printf "\e[33m Warning: Make sure you have mesa 20 or later installed, otherwise you will not be able to run NDS rom!!!For details, please see : https://gitee.com/KXGL/retro_game_psp_install"

Path1="/home/cpi/apps/Menu/20_Retro Games/12_PSP/"
Path2="/home/cpi/psp-1.12/"
File1="/home/cpi/launcher/skin/default/Menu/GameShell/20_Retro Games/PSP.png"

if [[ ! -d "$Path1" ]]; then

    printf "！！！！！！！！！！Installation Failed !！！！！！！！！！！\n"

else

    if [[ ! -d "$Path2" ]]; then

        printf "！！！！！！！！！！Installation Failed !！！！！！！！！！！\n"

    else

        if [[ ! -e "$File1" ]]; then

            printf "！！！！！！！！！！Installation Failed !！！！！！！！！！！\n"

        else

            printf "！！！！！！！！！！Installation complete !！！！！！！！！！！\n"

        fi

    fi

fi

# delete file
cd ~
sudo rm -rf ~/retro_game_psp_install/
