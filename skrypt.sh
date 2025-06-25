elif [[ $1 == "--logs" ]]; then
  num=${2:-100}
  for i in $(seq 1 $num); do
    echo "log$i.txt created by skrypt.sh on $(date)" > log$i.txt
  done
fi
