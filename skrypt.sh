#!/bin/bash

case $1 in
  --date|-d)
    date
    ;;
  --logs|-l)
    num=${2:-100}
    for i in $(seq 1 $num); do
      echo "log$i.txt created by skrypt.sh on $(date)" > log$i.txt
    done
    ;;
  --error|-e)
    num=${2:-100}
    for i in $(seq 1 $num); do
      mkdir -p error$i
      echo "error$i.txt created by skrypt.sh on $(date)" > error$i/error$i.txt
    done
    ;;
  --init)
    git clone <URL_DO_REPO> cloned_repo
    export PATH=$PATH:$(pwd)/cloned_repo
    ;;
  --help|-h)
    echo "--date | -d        Print current date"
    echo "--logs [n] | -l n  Create n log files"
    echo "--error [n] | -e n Create n error files"
    echo "--init             Clone repo and set PATH"
    echo "--help | -h        Show this help"
    ;;
  *)
    echo "Nieznana flaga. Użyj --help lub -h, aby zobaczyć dostępne opcje."
    ;;
esac
