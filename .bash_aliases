alias dps='docker ps -a --format "table {{.Names}}\t{{.Image}}\t{{.ID}}\t{{.Status}}"'
alias dstats="docker stats $(docker ps|grep -v 'NAMES'|awk '{ print $NF }'|tr '\n' ' ')"
alias dclean="docker ps -qa --no-trunc --filter 'status=exited' | xargs docker rm && docker images --filter 'dangling=true' -q --no-trunc | xargs docker rmi && docker images | grep 'none' | awk '/ / { print $3 }' | xargs docker rmi && docker volume ls -qf dangling=true | xargs docker volume rm"
