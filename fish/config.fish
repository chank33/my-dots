if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -g fish_greeting ''

alias oo="systemctl restart sddm.service"
alias c="clear"
alias h="htop"
alias m="micro"
alias cdh="cd ~/.config/hypr"
alias y="f && yay"
alias f="fastfetch -l small --logo-padding-top 7"
alias yeet="yay -Rns"

function cd --argument dir
    if [ "dir" = "" ]
        builtin cd $HOME
    else
        builtin cd $dir
    end
    ls -a
end

# prompt..

set --universal pure_color_success cyan
set --universal pure_color_primary yellow

set --universal pure_enable_single_line_prompt true

node hello.js
