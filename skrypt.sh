elif [[ $1 == "--init" ]]; then
  git clone <URL_DO_REPO> cloned_repo
  export PATH=$PATH:$(pwd)/cloned_repo
fi
