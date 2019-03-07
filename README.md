ss j2Heroku 

Build:
[![Build Status](https://travis-ci.org/infchg/j2.svg)](https://travis-ci.org/infchg/j2) 
Passed 2019 Mar 6th 
https://travis-ci.org/infchg/j2

## Standalone mode in your own docker or server

``` bash

go get -u github.com/infchg/j2 


go install ./...

PORT=3333 $GOPATH/bin/j2

curl -i http://localhost:3333

HTTP/1.1 200 OK
Date: Wed, 06 Mar 2019 00:26:40 GMT
Content-Length: 28
Content-Type: text/plain; charset=utf-8

Hi this is J2 http response

```

## Cloud run on Heroku

echo "web: j2" > Procfile

git add Procfile

git commit -m Procfile


go get -u github.com/tools/godep

godep update -goversion

cd $GOPATH/src/github.com/infchg/j2

godep save   ./...  # old has no -r godep save and commit that before pushing to Heroku.

 git add -A Godeps

  git commit -m Godeps1.12

cat Godeps/Godeps.json

## heroku create -b https://github.com/heroku/heroku-buildpack-go.git # Create a new Heroku app using the Go Buildpack:

git commit -a -m "deploying handle static + for Heroku"



git push heroku master




## Cloud run on GC 

refactoring ancient appspot.com version as deployed 2010 in google app engine cloud, presented at STEP 2010, 
