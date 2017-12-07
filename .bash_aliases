# Common
alias ll='ls -alhF'
alias la='ls -alhF'
alias rvim='sudo vim -u ~/.vimrc'

# Docker
alias dps='docker ps -a --format "table {{.Names}}\t{{.Image}}\t{{.ID}}\t{{.Status}}"'
alias dstats="docker ps|grep -v 'NAMES'|awk '{ print $NF }'|tr '\n' ' ' | docker stats"
alias dclean="docker ps -qa --no-trunc --filter 'status=exited' | xargs docker rm && docker images --filter 'dangling=true' -q --no-trunc | xargs docker rmi && docker images | grep 'none' | awk '/ / { print $3 }' | xargs docker rmi && docker volume ls -qf dangling=true | xargs docker volume rm"

# YouTube
alias youtube-dl-mp3='youtube-dl -x --audio-format mp3'

