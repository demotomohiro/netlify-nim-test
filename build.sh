curl https://nim-lang.org/choosenim/init.sh -sSf > init.sh
sh init.sh -y
export PATH=/opt/buildhome/.nimble/bin:$PATH
nim -v
nim c -r test.nim
