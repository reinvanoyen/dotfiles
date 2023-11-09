export CLICOLOR=1

# Git autocompletion
autoload -Uz compinit && compinit

# Source all files
for file in ~/.{path,aliases,prompt}; do
    [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
for file in ~/functions/(.)*; do
    [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

# When you open the terminal
echo
echo
echo
cat ~/motd
echo
echo
echo
dadjoke
echo
echo
