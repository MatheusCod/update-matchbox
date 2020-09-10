#!/bin/bash

LOCALPATH=$GOPATH/src
REPO1="/teste/matheus"

cd $LOCALPATH
wget https://github.com/poseidon/matchbox/archive/v0.8.3.zip
unzip v0.8.3.zip
cd matchbox-0.8.3
make
cd bin
mv matchbox matchbox-0.8.3
lftp -c "open -u $USER,$PASS ftp://oplab9.parqtec.unicamp.br; put -O $REPO1 $LOCALPATH/bin/matchbox-0.8.3"

#wget https://github.com/poseidon/matchbox/archive/v0.8.3.zip
#wget https://github.com/poseidon/matchbox/archive/v0.8.0.zip
#wget https://github.com/poseidon/matchbox/archive/v0.7.1.zip

#unzip v0.8.3.zip
#unzip v0.8.0.zip
#unzip v0.7.1.zip

#cd matchbox-0.8.3
#make
#./bin/matchbox -version
