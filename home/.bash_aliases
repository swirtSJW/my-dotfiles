export PATH="$HOME/.composer/vendor/bin:$PATH"
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export PATH=$HOME/bin:/usr/local/bin:$PATH

# misc
alias grep='grep --color=auto'

# dir listing
alias l='ls -alh'
alias la='ls -A'
alias ll='ls -alF'
alias ls='ls --color=auto'
alias lt='l -rt'
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias ws="cd $HOME/workspace"
alias ca="cd $HOME/Documents/civicActions/projects"
alias ca-ed="cd $HOME/workspace/ED"

#cleanup
alias remove-kernals="sudo apt-get remove --purge $(dpkg -l 'linux-*' | sed '/^ii/!d;/'\"$(uname -r | sed \"s/\(.*\)-\([^0-9]\+\)/\1/\")\"'/d;s/^[^ ]* [^ ]* \([^ ]*\).*/\1/;/[0-9]/!d')"
alias remove-db-snapshots="cd ~/workspace; find . -name \"*.sql.gz\" -type f -delete; cd -"
alias remove-web-logs="cd ~/workspace; find . -type f -name '*.log' -exec rm {} +; cd -"

#drush
alias showModules='drush pm-list --type=Module --no core --status=enabled'
alias showFeatures='drush pm-list --type=Feature --no core --status=enabled'
alias uli='drush uli --browser=0'

# git
alias av='git branch -av'
alias bv='git branch -v'
alias rv='git remote -v'
alias gstaged='git diff --staged'
alias gbackone='git checkout HEAD^ && git show --stat'
alias gfixup="git commit --amend -C HEAD"
alias glog="git log --decorate --oneline --graph"
alias gremoveMerged='git branch --merged | grep -v "\*" | grep -v master | grep -v production | grep -v integration | xargs -n 1 git branch -d'
alias gbase-master='git checkout master && git pull && git checkout - && git rebase master'
alias gbase-integration='git checkout integration && git pull && git checkout - && git rebase integration'
alias gbase-7x='git checkout 7.x-1.x && git pull && git checkout - && git rebase 7.x-1.x'

# odd stuff
alias tick="sudo hdparm -B 40 /dev/sdb"
alias go-rvm="source /home/swirt/.rvm/scripts/rvm"
alias run-selenium="export DISPLAY=:0; sudo java -jar /usr/lib/selenium/selenium-server-standalone-2.45.0.jar"
alias ding="spd-say 'ding ding ding'"
alias tail-error="tail /var/log/apache2/error.log -f"


# Connections
alias cnx-collegehouse.prod="ssh -l u43293413 collegehousebb.com"
alias cnx-collegehouse.local="cd ~/websites/clients/CollegeHouse_BB/web/web/"
alias cnx-collegehouse.access="cat ~/websites/clients/CollegeHouse_BB/access.txt"

alias cnx-gillumhouse.prod="ssh -l u52578791 home278053336.1and1-data.host"
alias cnx-gillumhouse.local="cd ~/websites/clients/Gillum House/web/new-site/"
alias cnx-gillumhouse.access="cat ~/websites/clients/Gillum House/access.txt"

alias cnx-princealbert.prod="ssh -l u48017134 princealbertguesthouse.com"
alias cnx-princealbert.local="cd ~/websites/clients/PrinceAlbertGuesthouse/web/dev.princealbertnet"
alias cnx-princealbert.access="cat ~/websites/clients/PrinceAlbertGuesthouse/access.txt"

alias cnx-1and1.prod="ssh -l u41180863 sciencejoywagon.com"
alias cnx-1and1.local="cd ~/websites/1and1master/"
alias cnx-1and1.git="ssh -l u41180863 git.sciencejoywagon.com"

# connection to Castle
alias cnx-castle="cd $HOME/Documents/civicActions/projects/Castle/CNX; sudo openvpn client.conf"
# makes ls -la like display but includes numerical perms
alias perms='stat -c '\''%A %a %n'\'' *'

# Connection to LINCS
alias cnx-lincs-storage="ssh 54.82.195.151;"
alias mnt-lincs-secure='sshfs swirt@54.82.195.151:/var/docs/ ~/lincs-secure -C -o allow_other,nonempty,transform_symlinks'
alias dmnt-lincs-secure='fusermount -z -u /home/swirt/lincs-secure'

# Connection to NAS
alias mnt-nas='sshfs -o nonempty,transform_symlinks -o idmap=none 192.168.1.3:/Public ~/NAS'
alias dmnt-nas='fusermount -z -u /home/swirt/NAS'

# Connection to SECURE
alias cnx-dojo-wifi="ssh nick@192.168.1.17;"
alias mnt-dojo-wifi='sshfs -o nonempty,transform_symlinks,identityfile=/home/nick/.ssh/id_rsa -o idmap=user nick@192.168.1.17:/home/nick ~/Secure_Cloud'
alias cnx-dojo="ssh nick@192.168.1.15;"
alias mnt-dojo='sshfs -o nonempty,transform_symlinks,identityfile=/home/nick/.ssh/id_rsa -o idmap=user nick@192.168.1.15:/home/nick ~/Secure_Cloud'
alias dmnt-dojo='fusermount -z -u /home/swirt/Secure_Cloud'

# File syncs
alias sync-web-dev.wirt.us="rsync -chavzP --stats u41180863@s176840467.onlinehome.us:/kunden/homepages/31/d176840445/htdocs/d7-24/sites/web-dev.wirt.us/files /home/swirt/workspace/d7-24/sites/web-dev.wirt.us/"

# php coding standards
alias drupalcs='phpcs --standard=$path_to_coder_module/coder_sniffer/Drupal --'

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"
eval `keychain --eval id_rsa`
