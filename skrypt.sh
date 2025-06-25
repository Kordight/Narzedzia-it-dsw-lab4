elif [[ $1 == "--error" || $1 == "-e" ]]; then
  num=${2:-100}
  for i in $(seq 1 $num); do
    mkdir -p error$i
    echo "error$i.txt created by skrypt.sh on $(date)" > error$i/error$i.txt
  done
fi
