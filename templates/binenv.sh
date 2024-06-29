# This file is Ansible managed,
# your manual changes change be lost.

# When ~/.disable_binenv exists, binenv is not install

# create ~/.binenv and setup it otherwise

if ! [ -f ~/.disable_binenv ]; then

  mkdir -p ${HOME}/.binenv
  export PATH=${HOME}/.binenv/:${PATH}
  if [ ! -f ${HOME}/.binenv/binenv ]; then
    binenv update
    binenv install binenv
  fi

fi
