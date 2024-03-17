#!/bin/bash

APPNAME=$(basename $0)

function __usage(){
    echo "
    $1

    usage: $APPNAME GH_REPO [DH_REPO]
    
    where:
        - GH_REPO: GitHub repo
        - DH_REPO: DockerHub repo

    are both of form 'username/reponame'
    "
    exit $2
}

if [ $# -lt 1 ]; then
    __usage "give me at least 1 param" 1
elif [ $# -gt 2 ]; then
    __usage "you gave more than 2 params, this is currently unsupported" 0
fi

if [[ ! $1 =~ ^(.+)\/(.+)$ ]]; then
    __usage "'$1' is not a valid 'user/repo' name!" 1
fi

GH_USER=${BASH_REMATCH[1]}
GH_REPO=${BASH_REMATCH[2]}

DH_DEST=${2:-$1}
if [[ ! $DH_DEST =~ ^(.+)\/(.+)$ ]]; then
    __usage "'$2' is not a valid 'user/repo' name!" 1
fi
EX33_WORKDIR=.ex3.3-workdir

git clone https://github.com/$GH_USER/$GH_REPO $EX33_WORKDIR
cd "$EX33_WORKDIR"

docker build . -t $DH_DEST \
    && docker push $DH_DEST \
    && echo "build succeeded, image pushed" \
    || echo "building or pushing the image failed"

cd ..
rm -rf "$EX33_WORKDIR"
