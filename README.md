# Retro_Game_PSP_Install

#### 介绍
在gameshell上安装psp模拟器


#### 安装教程

gameshell终端输入并运行：`bash <(curl -s https://github.com/gxk2000/Retro_Game_PSP_Install/blob/main/PSP_retro_install.sh)`


#### 使用说明

如果看到以下提示：
`Warning: Make sure you have mesa 20 or later installed, otherwise you will not be able to run NDS rom!!!For details, please see:https://gitee.com/KXGL/retro_game_nds_install/tree/master/`


请输入`DISPLAY=:0 glxinfo | grep "OpenGL version"` 查看当前mesa版本


如果提示：`No protocol specified Error: unable to open display :0` 则请安装mesa 20 以上版本


安装mesa 20以上版本命令如下：
`bash <(curl -s https://raw.fastgit.org/zzxzzk115/GameShell-Scripts/main/scripts/graphics/upgrade_graphics_cn.sh)`
