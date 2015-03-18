#!/bin/sh
#app="$0"
app="yurepowatch.sh"
sound='/usr/share/sounds/KDE-Sys-App-Message.ogg'
notify(){
  ( notify-send -u low -a "$app" "$app" 'repository changed' )
  ( paplay $sound >& /dev/null )
}

cont=$(urlwatch --urls="$HOME/.urlwatch/yurepo.txt")
if [ "$cont" ];then
  notify
  echo "$cont"|less
fi

