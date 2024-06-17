rm *.meta
find . -name '*.jpg' | xargs -n 1 ./create-meta.sh