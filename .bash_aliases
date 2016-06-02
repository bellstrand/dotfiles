alias dps='docker ps -a --format "table {{.Names}}\t{{.Image}}\t{{.ID}}\t{{.Status}}"'
alias dstats="docker stats $(docker ps|grep -v 'NAMES'|awk '{ print $NF }'|tr '\n' ' ')"

