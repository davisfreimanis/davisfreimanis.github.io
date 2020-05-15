# davisfreimanis.github.io

A personal website built with Hugo and MathJax. 

Hosted [here](https://davisfreimanis.github.io/)

## How to Use

There are three ways to contribute with content:

* Docker
* Local installation
* Github

### Docker

* Download Docker
* Build image with `docker build -t davisfreimanis/davisfreimanis.github.io .`
* Run container `docker run --rm -d --net="host" -v "$PWD":/go/src/app davisfreimanis/davisfreimanis.github.io`
* Application will run on `localhost:1313`

### Local Installation

* Install GO
* Configure GOPATH environmental variable
* Run `hugo server -D` and the application will run on `localhost:1313`

### Github

You can edit content directly in Github and when commited the edits will be public

## How to commit

* Clone the repository with `git clone`. Then fetch the `source` branch with `git checkout origin/source && git checkout source`
* Develop on `source` branch
* Commit and push to the `source` branch
* Github Actions will pull the code, compile it and push it to the `master` branch
