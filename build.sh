#!/bin/bash

#LOCALPATH=$TRAVIS_BUILD_DIR
LOCALPATH=$GOPATH/src/github.com
REPO1="/teste/matheus"

cd $LOCALPATH
# 0.8.3
#git clone https://github.com/poseidon/matchbox.git
#cd matchbox
#git checkout v0.8.3

# 0.8.0
#git clone https://github.com/poseidon/matchbox.git
#cd matchbox
#git checkout v0.7.1

# 0.7.1
mkdir coreos
cd coreos
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
echo "LS"
cd matchbox-0.7.1
make
cd bin
mv matchbox matchbox-0.7.1

#lftp -c "open -u $USER,$PASS ftp://oplab9.parqtec.unicamp.br; put -O $REPO1 $LOCALPATH/matchbox/bin/matchbox-0.8.3"
#lftp -c "open -u $USER,$PASS ftp://oplab9.parqtec.unicamp.br; put -O $REPO1 $LOCALPATH/matchbox/bin/matchbox-0.8.0"
lftp -c "open -u $USER,$PASS ftp://oplab9.parqtec.unicamp.br; put -O $REPO1 $LOCALPATH/coreos/matchbox/bin/matchbox-0.7.1"
