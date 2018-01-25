# If on Linux, add path for linuxbrew
if [[ $MACHINE == "Linux" ]]; then
  export PATH=$PATH:/home/linuxbrew/.linuxbrew/opt/go/libexec/bin
fi
