add_remote () { repo="$(basename -s .git `git config --get remote.origin.url`)" ; git remote add $1 git@github.com:$1/$repo.git ; git fetch $1 }

verify () { 
    if [[ $# -eq 0 ]] ; then
        echo 'usage: verify <branch name> <remote>'
    else
        if [ -z "$2" ]
            then
                add_remote 'upstream' ;
        else
            add_remote $2 ;
        fi
        git checkout $1 ;
    fi
}

view_alias () {
    cat /Users/ciaranroche/.dotfiles/zsh/alias.zsh
}

view_java_versions () {
    /usr/libexec/java_home -V
}

restart_zsh () {
    source /Users/ciaranroche/.dotfiles/zsh/zshrc
}

mkcd () {
    mkdir -p $1; cd $1;
}

minikube_start () {
    minikube start && eval $(minikube docker-env)
}