# j2 Heroku 


[![Build Status](https://travis-ci.org/infchg/j2.svg)](https://travis-ci.org/infchg/j2) Passed 2019 Mar 6th 


## Standalone mode in your own docker or server

``` bash

go get -u github.com/infchg/j2 


go install ./...

PORT=3333 $GOPATH/bin/j2-hi

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




## Cloud run on GC 


