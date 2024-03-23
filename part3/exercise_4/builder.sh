#!/bin/sh
# The first argument is the owner of the git repository,
# the second argument is the name of the git repository,
# and the third argument is <docker-username>/<docker-reponame>

git clone "https://github.com/$1/$2.git"

docker build ./"$2" -t exercise4

docker tag exercise4 "$3"

docker push "$3"

