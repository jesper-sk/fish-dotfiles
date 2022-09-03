if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -g async_prompt_functions _pure_prompt_git
set -g pure_symbol_prompt ⇴
set -g pure_symbol_reverse_prompt ᐸ
set -g pure_symbol_git_unpulled_commits ⇣
set -g pure_symbol_git_unpushed_commits ⇡
set -g pure_symbol_git_dirty •
set -g pure_symbol_git_stash ≣
set -g pure_prefix_root_prompt true
set -g pure_show_jobs true
set -g pure_subsecond_command_duration true
set -g pure_separate_prompt_on_error false
set -g pure_color_prompt_on_success green

alias currbranch='git rev-parse --abbrev-ref HEAD'
alias dpsq='docker ps -q | tr \'\n\' \' \''
alias pls='echo \'Use Alt+S to add sudo to your current command!\''

abbr --add -g -- update 'sudo apt update'
abbr --add -g -- upgrade 'sudo apt upgrade -y'
abbr --add -g -- dupgrade 'sudo apt dist-upgrade -y'
abbr --add -g -- clean 'sudo apt autoclean -y; sudo apt autoremove -y'
abbr --add -g -- install 'sudo apt install -y'
abbr --add -g -- remove 'sudo apt remove -y'
abbr --add -g -- uudc 'sudo apt update; sudo apt upgrade -y; sudo apt dist-upgrade -y; sudo apt autoclean -y; sudo apt autoremove -y'
abbr --add -g -- search 'apt-cache search'
abbr --add -g -- clear-thrash 'rm -rf ~/.local/share/Trash/*'

abbr --add -g -- dc 'docker-compose'
abbr --add -g -- dcbuild 'docker-compose build'
abbr --add -g -- dcupd 'docker-compose up -d'
abbr --add -g -- dcup 'docker-compose up'
abbr --add -g -- dcdown 'docker-compose down'

abbr --add -g -- add 'git add .'
abbr --add -g -- cmit 'git commit -m'
abbr --add -g -- camit 'git add .; git commit -m'
abbr --add -g -- push 'git push'
abbr --add -g -- push-init 'get push --set-upstream origin $(git rev-parse --abbrev-ref HEAD)'
abbr --add -g -- pull 'git pull'
abbr --add -g -- chout 'git checkout'
abbr --add -g -- branch 'git checkout $(git rev-parse --abbrev-ref HEAD) -b'
abbr --add -g -- chdev 'git checkout develop'
abbr --add -g -- gitignore 'git rm --cached `git ls-files -i -X .gitignore`'

abbr --add -g -- gofish 'exec fish'
abbr --add -g -- dkillall 'docker container kill $(docker container ls -q)'
