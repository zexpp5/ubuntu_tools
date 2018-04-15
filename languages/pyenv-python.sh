#!/bin/bash
# clone the github repo
echo "Installing pyenv..."
git clone https://github.com/yyuu/pyenv.git ~/.pyenv

# set variables
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)"

# update .bashrc
cat << 'END' >> ~/.bashrc
# pyenv settings:
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
END
# install python and virtualenv
echo "Installing python..."
pyenv install 3.6.5
#pyenv install 3.5.3
#pyenv install 3.4.6
#pyenv install 3.3.6
#pyenv install 2.7.13
#pyenv global 3.6.1 3.5.3 3.4.6 3.3.6 2.7.13
pyenv global 3.6.5  2.7.13
pip install --no-cache-dir --upgrade pip
pip install --no-cache-dir virtualenv
echo "pyenv has been installed with python 3.6.5 and virtualenv"
