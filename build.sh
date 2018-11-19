curl https://nim-lang.org/choosenim/init.sh -sSf > init.sh
sh init.sh -y
nim -v
nim c -r test.nim
