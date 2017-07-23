#alias tmux='TERMINFO=/usr/share/terminfo/x/xterm-16color TERM=xterm-16color tmux'

alias wifiap="nmcli d wifi list"

alias chat='profanity -a rburns@paiges.net'
alias cnxtech='profanity -a rburns@cnxtech.xmpp.slack.com'

alias mountsd='sudo mount -o umask=077,uid=1000,gid=1000 /dev/mmcblk0p1 /media/sd'
alias umountsd='sudo umount /media/sd'
alias mountusb='sudo mount /dev/sda1 /media/usb'
alias umountusb='sudo umount /media/usb'
alias mountusb1='sudo mount /dev/sdb1 /media/usb1'
alias umountusb1='sudo umount /media/usb1'

alias darktable-generate-cache='darktable-generate-cache --max-mip=7'
