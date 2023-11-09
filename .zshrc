export CLICOLOR=1

autoload -Uz compinit && compinit

for file in ~/.{path,aliases,prompt,functions}; do
    [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

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
