# Copyright (c) 2026 Kevin(TALPAD-BOOM Team). All Rights Reserved.（仅限本脚本）
# 脚本调用的am.apk基于Termux项目进行修改，修改日期：2026.1.27，修改者PublicWY(TALPAD-BOOM Team)
# 本脚本使用GPLv3开源
echo "免责声明："
echo "1.使用本脚本时，应确保加入了TALPAD-BOOM主群而非其它非官方群聊。"
echo "2.使用本脚本造成的任何财产、名誉等损失，皆由您自己负责，无论是学习成绩下降还是任何损失。"
echo "3.根据脚本使用的GPLv3，您传播本项目时应署名TALPAD-BOOM，否则即视为违反开源许可证。"
echo "使用本脚本前应同意免责声明，您同意吗？(Y/N)"
read FirstQuestion < /dev/tty
if [ "$FirstQuestion" = "Y" ]
then
  echo "欢迎使用TALPAD-OPEN-ACTIVITY-TOOL"
  echo "--------------------------------------------------"
  echo "1.修改壁纸"
  echo "2.系统设置"
  echo "3.退出脚本"
  read IWantFuckZaoChaGuang < /dev/tty
  if [ "$IWantFuckZaoChaGuang" = "1" ]
  then
    app_process -Djava.class.path=am.apk /system/bin com.termux.termuxam.Am start -n com.android.wallpaperpicker/.WallpaperPickerActivity
  fi
  if [ "$IWantFuckZaoChaGuang" = "2" ]
  then
    app_process -Djava.class.path=am.apk /system/bin com.termux.termuxam.Am start -n com.android.settings/.Settings\$SystemDashboardActivity
  fi
  if [ "$IWantFuckZaoChaGuang" = "3" ]
  then
    echo "脚本退出~有缘再见~"
    exit
  fi
else
  echo "在不同意免责协议的情况下，您不得使用本脚本，程序将在 3 秒后退出"
  sleep 3
  exit
fi
