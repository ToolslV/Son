cd $HOME
e="echo -e "

g="\033[32;1m"
c="\033[36;1m"
r="\033[31;1m"
y="\033[33;1m"
n="\033[0m"

: 'Pembuat : ViewTech Official'
: 'Pengembangan : Thxyzz404'

pyversion=$(python --version 2>&1)

if (grep -o "3.13" <<< "$pyversion") &>/dev/null; then
  clear 
  echo ""
  $e "${r}[ ${g}✓ ${r}]${c} Python saat ini sudah ada di versi 3.13"
  echo ""
  exit 1
fi

if (test -z "$(command -v pyenv)"); then
  clear 
  echo ""
  $e "${r}[ ${g}+ ${r}]${c} Downgrade py ${pyversion} -> 3.13.5"
  $e "${n}"
  [ -d "$HOME/.pyenv" ] && rm -rf "$HOME/.pyenv"  
  curl -s https://pyenv.run | bash
  echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc
  echo '[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc
  echo 'eval "$(pyenv init -)"' >> ~/.bashrc
  source ~/.bashrc
else
  [ -d "$HOME/.pyenv" ] && rm -rf "$HOME/.pyenv"
fi
$e "${r}[ ${g}+ ${r}]${y} Python install pyenv memerlukan waktu 2 jam."
$e "${n}"
export CPPFLAGS="-Wno-error=implicit-function-declaration -Wno-implicit-function-declaration -Wno-error=int-conversion -Wno-int-conversion"
export LDFLAGS="-latomic"
export ac_cv_func_getpwent=no
export ac_cv_func_copy_file_range=no
export ac_cv_func_sendfile=no
export ac_cv_func_posix_spawn=no
export ac_cv_func_posix_spawnp=no
export PYTHON_CONFIGURE_OPTS="--disable-shared"
pyenv install 3.13.5

echo ""
$e "${r}[ ${g}>> ${r}]${g} Python versi 3.13 sudah berhasil di install"
$e "${r}[ ${g}>> ${r}]${c} Jalankan perintah berikut : pyenv global 3.13.5"
echo ""