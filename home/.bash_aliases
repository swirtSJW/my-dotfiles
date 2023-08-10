
# misc
alias grep='grep --color=auto'
alias keyz='keychain --nogui --attempts 4 --eval id_rsa'


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
alias ca-va="cd $HOME/workspace/va"
alias docs="cd /media/swirt/ExtraDrive/Documents"


#VA
alias copy-govdelivery-bulletins-git="rm -rf /home/swirt/workspace/va/vagov/docroot/modules/contrib/govdelivery_bulletins/.git; cp /home/swirt/workspace/mods/govdelivery_bulletins/.git/ /home/swirt/workspace/va/vagov/docroot/modules/contrib/govdelivery_bulletins/.git/ -R;"
alias copy-allow_only_one-git="cd /home/swirt/workspace/mods/allow_only_one; git fetch --all; git pull; cd -; rm -rf /home/swirt/workspace/va/vagov/docroot/modules/contrib/allow_only_one/.git; cp /home/swirt/workspace/mods/allow_only_one/.git/ /home/swirt/workspace/va/vagov/docroot/modules/contrib/allow_only_one/.git/ -R;"
alias copy-content_model_documentation-git="cd /home/swirt/workspace/mods/content_model_documentation; git fetch --all; git pull; cd -; rm -rf /home/swirt/workspace/va/vagov/docroot/modules/contrib/content_model_documentation/.git; cp /home/swirt/workspace/mods/content_model_documentation/.git/ /home/swirt/workspace/va/vagov/docroot/modules/contrib/content_model_documentation/.git/ -R;"
alias copy-node_link_report-git="cd /home/swirt/workspace/mods/node_link_report; git fetch --all; git pull; cd -; rm -rf /home/swirt/workspace/va/vagov/docroot/modules/contrib/node_link_report/.git; cp /home/swirt/workspace/mods/node_link_report/.git/ /home/swirt/workspace/va/vagov/docroot/modules/contrib/node_link_report/.git/ -R;"
alias copy-entity_field_fetch-git="cd /home/swirt/workspace/mods/entity_field_fetch; git fetch --all; git pull; cd -; rm -rf /home/swirt/workspace/va/vagov/docroot/modules/contrib/entity_field_fetch/.git; cp /home/swirt/workspace/mods/entity_field_fetch/.git/ /home/swirt/workspace/va/vagov/docroot/modules/contrib/entity_field_fetch/.git/ -R;"
alias copy-migration_tools-git="cd /home/swirt/workspace/mods/migration_tools; git fetch --all; git pull; cd -; rm -rf /home/swirt/workspace/va/vagov/docroot/modules/contrib/migration_tools/.git; cp /home/swirt/workspace/mods/migration_tools/.git/ /home/swirt/workspace/va/vagov/docroot/modules/contrib/migration_tools/.git/ -R;"
alias copy-site_alert="rm -rf /home/swirt/workspace/va/vagov/docroot/modules/contrib/site_alert; cp /home/swirt/workspace/mods/site_alert/ /home/swirt/workspace/va/vagov/docroot/modules/contrib/site_alert/ -R;"
alias copy-migrate_plus="rm -rf /home/swirt/workspace/va/vagov/docroot/modules/contrib/migrate_plus; cp /home/swirt/workspace/mods/migrate_plus/ /home/swirt/workspace/va/vagov/docroot/modules/contrib/migrate_plus/ -R;"
alias copy-post_api-git="cd /home/swirt/workspace/mods/post_api; git fetch --all; git pull; cd -; rm -rf /home/swirt/workspace/va/vagov/docroot/modules/contrib/post_api/.git; cp /home/swirt/workspace/mods/post_api/.git/ /home/swirt/workspace/va/vagov/docroot/modules/contrib/post_api/.git/ -R;"

#cleanup
#alias remove-kernals="sudo apt-get remove --purge $(dpkg -l 'linux-*' | sed '/^ii/!d;/'\"$(uname -r | sed \"s/\(.*\)-\([^0-9]\+\)/\1/\")\"'/d;s/^[^ ]* [^ ]* \([^ ]*\).*/\1/;/[0-9]/!d')"
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
alias gbase-main='git checkout main && git pull && git checkout - && git rebase main'
alias gbase-integration='git checkout integration && git pull && git checkout - && git rebase integration'
alias gbase-7x='git checkout 7.x-1.x && git pull && git checkout - && git rebase 7.x-1.x'

# odd stuff
alias noblue="redshift -O 3700"
alias blue="redshift -O 5500"
alias tick="sudo hdparm -B 40 /dev/sdb"
alias go-rvm="source /home/swirt/.rvm/scripts/rvm"
alias run-selenium="export DISPLAY=:0; sudo java -jar /usr/lib/selenium/selenium-server-standalone-2.45.0.jar"
alias ding="spd-say 'ding ding ding'"
alias tail-error="tail /var/log/apache2/error.log -f"


# Connections
alias cnx-ca-vpn='sudo openvpn --config ~/.ssh/ca-client.ovpn'
alias cnx-va-socks-int='ssh socks-va -D 2001 -N &'
alias cnx-va-socks='killall ssh; ssh socks -D 2001 -N &'

alias cnx-collegehouse.prod="ssh -4 -l u43293413 collegehousebb.com"
alias cnx-collegehouse.local="cd ~/websites/clients/CollegeHouse_BB/web/web"
alias cnx-collegehouse.access="cat ~/websites/clients/CollegeHouse_BB/access.txt"

alias cnx-1and1.prod="ssh -4 -l u41180863 sciencejoywagon.com"
alias cnx-1and1.local="cd ~/websites/1and1master/"
alias cnx-1and1.git="ssh -4 -l u41180863 git.sciencejoywagon.com"

# connection to Castle
alias cnx-castle="cd $HOME/Documents/civicActions/projects/Castle/CNX; sudo openvpn client.conf"
# makes ls -la like display but includes numerical perms
alias perms='stat -c '\''%A %a %n'\'' *'

# Connection to NAS
alias mnt-nas='sshfs -o nonempty,transform_symlinks -o idmap=none 192.168.1.10:/Public ~/NAS'
alias dmnt-nas='fusermount -z -u /home/swirt/NAS'

# Connection to SECURE
alias cnx-dojo-wifi="ssh nick@192.168.1.17;"
alias mnt-dojo-wifi='sshfs -o nonempty,transform_symlinks,identityfile=/home/nick/.ssh/id_rsa -o idmap=user nick@192.168.1.17:/home/nick ~/Secure_Cloud'
alias cnx-dojo="ssh nick@192.168.1.15;"
alias mnt-dojo='sshfs -o nonempty,transform_symlinks,identityfile=/home/nick/.ssh/id_rsa -o idmap=user nick@192.168.1.15:/home/nick ~/Secure_Cloud'
alias dmnt-dojo='fusermount -z -u /home/swirt/Secure_Cloud'

# Update VS Code
alias update-vscode="wget https://vscode-update.azurewebsites.net/latest/linux-deb-x64/stable -O /tmp/code_latest_amd64.deb && sudo dpkg -i /tmp/code_latest_amd64.deb;"

# File syncs
alias sync-web-dev.wirt.us="rsync -chavzP --stats u41180863@s176840467.onlinehome.us:/kunden/homepages/31/d176840445/htdocs/d7-24/sites/web-dev.wirt.us/files /home/swirt/workspace/d7-24/sites/web-dev.wirt.us/"

# php coding standards
alias drupalcs='phpcs --standard=$path_to_coder_module/coder_sniffer/Drupal --'
