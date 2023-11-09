# Workspace
function ws() {
    if [ $# -eq 0 ]; then
        cd ~/Workspace;
    else
       cd ~/Workspace/"$@";
    fi;
}
_ws() {
    _files -W ~/Workspace;
}

compdef _ws ws