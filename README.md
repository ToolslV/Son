# Instalasi Termux ori & zero.
```
pkg update && pkg upgrade
pkg install git -y
pkg install make -y
pkg install make-guile -y
git clone --depth 32 https://github.com/ToolslV/Son
cd Son
make run
