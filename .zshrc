export CLICOLOR=1

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
