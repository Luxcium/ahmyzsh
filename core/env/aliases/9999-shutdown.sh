alias playshutdown="(play  -qv 0.05 /usr/share/sounds/deepin/stereo/system-shutdown.wav)"
alias dnfup="( (sudo nice -n -35 ionice -c 1 -n 0 dnf upgrade --downloadonly -y &) &)>/dev/null; sudo nice -n 15 dnf upgrade"
alias upnboot="dnfup && playshutdown& sleep 5;sudo reboot"
alias up="sudo nice -n -15 ionice -c 1 -n 3 dnf upgrade && sudo reboot& bye"
