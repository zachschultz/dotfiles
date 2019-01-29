# If on Mac, add path for Homebrew
if [[ $MACHINE == "Mac" ]]; then
  export PATH=$PATH:/usr/local/sbin
fi

export PATH=~/.local/bin:$PATH
export PATH=/Users/zachschultz/Library/Python/2.7/bin:$PATH
