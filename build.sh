#!/bin/bash

#LOCALPATH=$GOPATH/src
LOCALPATH=$TRAVIS_BUILD_DIR/matchbox-0.8.3/bin
REPO1="/teste/matheus"

#cd $LOCALPATH
wget https://github.com/poseidon/matchbox/archive/v0.8.3.zip
unzip v0.8.3.zip
cd matchbox-0.8.3
make
cd bin
ls
mv matchbox matchbox-0.8.3
lftp -c "open -u $USER,$PASS ftp://oplab9.parqtec.unicamp.br; put -O $REPO1 $LOCALPATH/matchbox-0.8.3"

#wget https://github.com/poseidon/matchbox/archive/v0.8.3.zip
#wget https://github.com/poseidon/matchbox/archive/v0.8.0.zip
#wget https://github.com/poseidon/matchbox/archive/v0.7.1.zip

#unzip v0.8.3.zip
#unzip v0.8.0.zip
#unzip v0.7.1.zip

#cd matchbox-0.8.3
#make
#./bin/matchbox -version
