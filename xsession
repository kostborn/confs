# http://kalgan.cc/blog/posts/Gnome_3_and_XMonad/
#
exec >/tmp/xsession.log 2>&1
#echo ~/.xsession works > /tmp/xsession-works.delme
set -x
eval $(cat $HOME/.fehbg)
urxvtd -q -f -o
xxkb&
setxkbmap -layout 'us,ru,ua,de' -option 'grp:caps_toggle'
#exec gnome-session --session xmonad-gnome-nopanel "$@"


#exec gnome-session --session xmonad-gnome "$@"
gnome-session --session xmonad-gnome "$@"&
gnome-panel&
exec xmonad
