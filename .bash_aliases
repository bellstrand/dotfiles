alias dps='docker ps -a --format "table {{.ID}}\t{{.Image}}\t{{.Names}}\t{{.Status}}"'
alias dstats="docker stats $(docker ps|grep -v 'NAMES'|awk '{ print $NF }'|tr '\n' ' ')"
