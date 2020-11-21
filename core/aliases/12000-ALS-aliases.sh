LXI_SESSION='luxcium-io'
clearall='\u001b[2J\u001b[0;0H'

alias vsx="cd ${PATH_LXIO}; code -n ${PATH_LXIO}"
alias vsqt="cd ${PATH_QUESTRADE}; code -n  ${PATH_QUESTRADE}"
alias vs-iex-cloud="cd ${PATH_IEXCLOUD_API_WRAPPER}; code ${PATH_IEXCLOUD_API_WRAPPER}"
alias vs-iex-api="cd ${PATH_IEX_API}; code -n ${PATH_IEX_API}"
alias vsram='cd ${PATH_LXIO}/../ramda; code -n ${PATH_LXIO}/../ramda'
alias lxi="cd ${PATH_LXIO_PRJ}/luxcium.io"
alias lxicd=" mycode ${PATH_LXIO_PRJ}/luxcium.io; lxi;"
alias lxq="cd ${PATH_LXIO_PRJ}/questrade-ts"
alias lxqc="mycode ${PATH_LXIO_PRJ}/questrade-ts && cd ${PATH_LXIO_PRJ}/questrade-ts"
alias lxqtx="env tmux -uv -f ${TMUX_CONFIGS}/questrade.tmux.conf new-session -A -s questrade-ts -c ${PATH_LXIO_PRJ}/questrade-ts"
alias txio="env tmux -uv -f ${TMUX_CONFIGS}/luxcium.tmux.conf new-session -A -s luxcium-io -c ${PATH_LXIO_PRJ}/luxcium.io"
alias lux="open $PATH_LXIO_PRJ"
alias lx="cd ${PATH_LXIO_PRJ}/luxcium.io && mycode ${PATH_LXIO_PRJ}/luxcium.io"
alias lxc="mycode ${PATH_LXIO_PRJ}/luxcium.io && cd ${PATH_LXIO_PRJ}/luxcium.io"
alias lxe="cd ${PATH_LXIO_PRJ}/iex-luxcium-api"
alias lxec="mycode ${PATH_LXIO_PRJ}/iex-luxcium-api && cd ${PATH_LXIO_PRJ}/iex-luxcium-api"
alias iexc="mycode ${PATH_LXIO_PRJ}/iex-luxcium-api && cd ${PATH_LXIO_PRJ}/iex-luxcium-api"
alias lxp="cd ${PATH_LXIO_PRJ}/"
alias lxpc="mycode ${PATH_LXIO_PRJ}/ && cd ${PATH_LXIO_PRJ}/"
alias lx3="lxqc;lxec;lxic && cd ${PATH_LXIO_PRJ}/"
alias lx4="cd ~ && atom . ;lxqc;lxec;lxic && cd ${PATH_LXIO_PRJ}/"
alias path='echo ${PATH}'
alias nx='tmux neww'
alias dx='tmux detach -a; mxd'
alias k='_p9k_dump_instant_prompt;notmytty; tmux kill-session -a; killall tmux'
alias kx='k'
alias mylab=" tmux new-window -d -c '/Users/neb_401/JupyterLab' -n 'Jupyter Lab' 'env jupyter lab'"
alias jlab=" tmux new-window -d -n 'Jupyter Lab' 'env jupyter lab'"
alias n='new'
alias quit='tmux detach'
alias q='_p9k_dump_instant_prompt;exit'
alias alsa="atom ${MY_ALIASES}"
alias alsc="code ${MY_ALIASES}"
alias als="load_ ${MY_ALIASES} 'load_aliases'"
alias ala=alsa
alias finder='open .'
alias allo='echo allo tout le monde'
alias vx=vsx
alias vsz="cd ${CUSTOM_ZSH}/..; code -n ${CUSTOM_ZSH}/.."
alias vz=vsz
alias vsr="cd ${ZSH_LUXCIUM}/repl/node-repl; code -n ${ZSH_LUXCIUM}/repl/node-repl"
alias vr=vr
alias vsq=vsqt
alias vq=vsq
alias vqt=vq
alias vstm="cd ${DEV_POPNLOCK}; insiders  -n ${DEV_POPNLOCK}"
alias vst=vstm
alias lximux="tmux-luxcium"
alias lxic="lxicd;" # lximux
alias lxikill="tmux kill-session -t $LXI_SESSION"
alias runqt='ts-node --pretty "${HOME}/Developer/LuxciumProject/questrade-ts/src/test/playground/debug/debug.ts"'
alias buildqt='tsc --pretty -p "${HOME}/Developer/LuxciumProject/questrade-ts/configs/tsconfig.commonjs.json"'
alias wbuildqt='tsc --pretty -w -p "${HOME}/Developer/LuxciumProject/questrade-ts/configs/tsconfig.commonjs.json"'
alias startqt='node /Users/neb_401/Developer/LuxciumProject/questrade-ts/build/src/test/playground/debug/debug.js'
alias bstartqt='buildqt && startqt'
alias bnsqt='bstartqt'
alias sqt='startqt'
alias qtrun='runqt'
alias qtbuild='buildqt'
alias qtwbuild='wbuildqt'
alias qtstart='startqt'
alias qtbstart='bstartqt'
alias qtbns='bnsqt'
alias qts='sqt'
alias lxcq='lxqc'
alias lxz="cd ${CUSTOM_ZSH}/.."
alias lxzc="mycode ${CUSTOM_ZSH}/.. && cd ${CUSTOM_ZSH}/.."
alias jpac='code ./package.json'
alias tsfig='code ./tsconfig.json'
alias insdr='/usr/local/bin/insiders'
alias mycode='code'
alias py='export PYTHONSTARTUP="$HOME/.pythonrc";clear;python3 -q'

alias chrome='Google\ Chrome\ Canary --remote-debugging-port=222'
alias lsc='lc'
alias new='_p9k_dump_instant_prompt && zsh -i'
alias newnlni='zsh --no-login --no-interactive'
alias newninl='newnlni'
alias newni='zsh --login --no-interactive'
alias newnl='zsh --no-login --interactive'
alias newl='zsh --login'
alias newi='zsh --interactive'
alias hconf='code ~/.hyper.js'
alias p9k='compute_p9k'
alias zshcnf='atom ~/.zshrc'
alias zshcode='code ~/.oh-my-zsh'
alias zshatom='atom ~/.oh-my-zsh'
alias cnftmx='atom ~/.tmux.conf'
alias clearall='\u001b[2J\u001b[0;0H'
alias js="hardcls; env NODE_NO_READLINE=1 rlwrap ${NODELATEST}/node ${NODE_REPL_SCRIPT}"
alias noderepl="env NODE_NO_READLINE=1 rlwrap node"
alias rnd4='echo $(sha224hmac <<< $(date +%s%N) | cut -c -4 | tr \[a-z\] \[A-Z\])'
alias rnd6='echo $(sha224hmac <<< $(date +%s%N) | cut -c -6 | tr \[a-z\] \[A-Z\])'
alias rnd8='echo $(sha224hmac <<< $(date +%s%N) | cut -c -8 | tr \[a-z\] \[A-Z\])'
alias rnd16='echo $(sha224hmac <<< $(date +%s%N) | cut -c -16 | tr \[a-z\] \[A-Z\])'
alias rnd24='echo $(sha224hmac <<< $(date +%s%N) | cut -c -24 | tr \[a-z\] \[A-Z\])'
alias rnd32='echo $(sha224hmac <<< $(date +%s%N) | cut -c -32 | tr \[a-z\] \[A-Z\])'
alias ping='ping -c 5'
alias clr='clear; echo Currently logged in on $TTY, as $USER in directory $PWD.'
alias path='print -l $path'
alias mkdir='mkdir -pv'
alias psmemall='ps -e -orss=,args= | sort -b -k1,1n'
alias psmem='ps -e -orss=,args= | sort -b -k1,1n| head -10'
alias pscpuall='ps -e -o pcpu,cpu,nice,state,cputime,args|sort -k1,1n -nr'
alias pscpu='ps -e -o pcpu,cpu,nice,state,cputime,args|sort -k1,1n -nr | head -10'
alias hist5='print -l ${(o)history%% *} | uniq -c | sort -nr | head -n 5'
alias hist10='print -l ${(o)history%% *} | uniq -c | sort -nr | head -n 10'
alias hist15='print -l ${(o)history%% *} | uniq -c | sort -nr | head -n 15'
alias hist20='print -l ${(o)history%% *} | uniq -c | sort -nr | head -n 20'
alias hist25='print -l ${(o)history%% *} | uniq -c | sort -nr | head -n 25'
alias hist50='print -l ${(o)history%% *} | uniq -c | sort -nr | head -n 50'
alias histall='print -l ${(o)history%% *} | uniq -c | sort -nr'
alias mktmp='TMPDIRLOCATION="/tmp/LXCM$(uxid)"; mkdir "${TMPDIRLOCATION:0:27}S"; cd "${TMPDIRLOCATION:0:27}S" ;unset -v TMPDIRLOCATION'

alias ucp="sudo nice -n -10 ionice -c 1 -n 5 cp -uRL"
alias vucp="sudo nice -n -10 ionice -c 1 -n 5 cp -vuR"
alias vrmf="sudo nice -n -15 ionice -c 1 -n 3 rm -vRf"
alias al="ls -alhSvF -X"
alias alt="ls -alGhSvF -rt"
alias alu="ls -alGhSvF -rut"
alias alc="ls -alGhSvF -rct"
alias rmout="rm -fr ./out"
alias lxicode="nice -5 /home/luxcium/bin/code-luxcium.io; cd /home/luxcium/dev/vscode-luxcium.io/project/luxcium.io"
alias rdhard="rdfind -deterministic true -followsymlinks true -removeidentinode false -makehardlinks true -deleteduplicates false -outputname 'rdhard-results.txt' ./"
alias rdsoft="rdfind -deterministic true -followsymlinks true -removeidentinode false -makesymlinks true -deleteduplicates false -outputname 'rdsoft-results.txt' ./"
alias rdsoftdry="rdfind -n true -deterministic true -followsymlinks true -removeidentinode false -makesymlinks true -deleteduplicates false -outputname 'rddry-results.txt' ./"
alias rdharddry="rdfind -n true -deterministic true -followsymlinks true -removeidentinode false -makehardlinks true -deleteduplicates false -outputname 'rdhard-results.txt' ./"
alias apt-get="sudo nice -n -15 ionice -c 1 -n 3 dnf"
alias apt="sudo nice -n -15 ionice -c 1 -n 3 dnf"
alias dnf="sudo nice -n -15 ionice -c 1 -n 3 dnf"
alias ahmy="code ~/ahmyzsh"
alias testtext="echo '0OoLl1IiGQgq;&function;=>*const;fi;!@ ( ) [ ] { } « » < > (‽)-?'"
alias wheelr="sudo chgrp -R wheel ./ && sudo chmod -c -R g+r ./"
alias wheelw="sudo chgrp -R wheel ./ && sudo chmod -c -R g+w ./"
alias wheelx="sudo chgrp -R wheel ./ && sudo chmod -c -R g+x ./"
alias wheelrw="wheelr;wheelw"
alias wheelrx="wheelr;wheelx"
alias wheelwx="wheelw;wheelx"
alias wheelrwx="wheelr;wheelw;wheelx"
alias luxciumr="sudo chgrp -R luxcium ./ && sudo chmod -c -R g+r ./"
alias luxciumw="sudo chgrp -R luxcium ./ && sudo chmod -c -R g+w ./"
alias luxciumx="sudo chgrp -R luxcium ./ && sudo chmod -c -R g+x ./"
alias luxciumrw="luxciumr;luxciumw"
alias luxciumrx="luxciumr;luxciumx"
alias luxciumwx="luxciumw;luxciumx"
alias luxciumrwx="luxciumr;luxciumw;luxciumx"
alias c16x9="echo '0.5625 or 1.7777777778'"
alias p480x16x9="echo 480 x 853"
alias p720x16x9="echo 1280 x 720"
alias p1080x16x9="echo 1080 x 1920"
alias vmdaloc="az vm deallocate -g 'GroupeONE-UKSouth' --name 'MEAN-VirtualONE'"
alias vmstart="az vm start -g 'GroupeONE-UKSouth' --name 'MEAN-VirtualONE'"
