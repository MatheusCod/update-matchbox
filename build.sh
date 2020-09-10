#!/bin/bash

#LOCALPATH=$TRAVIS_BUILD_DIR
LOCALPATH=$GOPATH/src/github.com
REPO1="/teste/matheus"

cd $LOCALPATH
mkdir coreos
cd coreos
#wget https://github.com/poseidon/matchbox/archive/v0.8.3.zip
git clone https://github.com/poseidon/matchbox.git
cd matchbox
git checkout v0.8.3

#wget https://github.com/poseidon/matchbox/archive/v0.8.0.zip
git clone https://github.com/poseidon/matchbox.git
cd matchbox
git checkout v0.7.1

#wget https://github.com/poseidon/matchbox/archive/v0.7.1.zip
git clone https://github.com/poseidon/matchbox.git
cd matchbox
git checkout v0.7.1

#cd matchbox-0.8.3
#make
#cd bin
#mv matchbox matchbox-0.8.3

#cd $LOCALPATH

#cd matchbox-0.8.0
#make
#cd bin
#mv matchbox matchbox-0.8.0

#cd $LOCALPATH

ls
cd matchbox-0.7.1
echo "Make"
make
echo "Fim do make"
cd bin
mv matchbox matchbox-0.7.1

#lftp -c "open -u $USER,$PASS ftp://oplab9.parqtec.unicamp.br; put -O $REPO1 $LOCALPATH/matchbox/bin/matchbox-0.8.3"
#lftp -c "open -u $USER,$PASS ftp://oplab9.parqtec.unicamp.br; put -O $REPO1 $LOCALPATH/matchbox/bin/matchbox-0.8.0"
lftp -c "open -u $USER,$PASS ftp://oplab9.parqtec.unicamp.br; put -O $REPO1 $LOCALPATH/coreos/matchbox/bin/matchbox-0.7.1"
