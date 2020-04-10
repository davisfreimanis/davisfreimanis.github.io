# davisfreimanis.github.io
A personal website

* Hugo
* Bootstrap
* Travis-ci

## How to use
* Download Docker
* Build image with `docker build -t davisfreimanis/davisfreimanis.github.io .`
* Run container `docker run --rm -d --net="host" -v "$PWD":/go/src/app davisfreimanis/davisfreimanis.github.io`
* Application will run on `localhost:1313`

## How to commit
* Clone the repository with `git clone`. Then fetch the `source` branch with `git checkout origin/source && git checkout source`
* Develop on `source` branch
* Commit and push to the `source` branch
* Travis CI will pull the code and compile it and push it to the `master` branch
