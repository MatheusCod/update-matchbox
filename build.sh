#!/bin/bash

LOCALPATH=$TRAVIS_BUILD_DIR
REPO1="/teste/matheus"

cd $LOCALPATH
wget https://github.com/poseidon/matchbox/archive/v0.8.3.zip
wget https://github.com/poseidon/matchbox/archive/v0.8.0.zip
wget https://github.com/poseidon/matchbox/archive/v0.7.1.zip
unzip v0.8.3.zip
unzip v0.8.0.zip
unzip v0.7.1.zip

cd matchbox-0.8.3
make
cd bin
mv matchbox matchbox-0.8.3
echo "Terminou 1"

cd $LOCALPATH

cd matchbox-0.8.0
make
cd bin
mv matchbox matchbox-0.8.0
echo "Terminou 2"

cd $LOCALPATH

cd matchbox-0.7.1
echo "Antes do make"
ls
make
cd bin
mv matchbox matchbox-0.7.1
echo "Arquivos"
ls

lftp -c "open -u $USER,$PASS ftp://oplab9.parqtec.unicamp.br; put -O $REPO1 $LOCALPATH/matchbox-0.8.3/bin/matchbox-0.8.3"
lftp -c "open -u $USER,$PASS ftp://oplab9.parqtec.unicamp.br; put -O $REPO1 $LOCALPATH/matchbox-0.8.0/bin/matchbox-0.8.0"
lftp -c "open -u $USER,$PASS ftp://oplab9.parqtec.unicamp.br; put -O $REPO1 $LOCALPATH/matchbox-0.7.1/bin/matchbox-0.7.1"
