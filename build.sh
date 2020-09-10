#!/bin/bash

#LOCALPATH=$GOPATH/src

wget https://github.com/poseidon/matchbox/archive/v0.8.3.zip
unzip v0.8.3.zip
cd matchbox-0.8.3
make
./bin/matchbox -version

#wget https://github.com/poseidon/matchbox/archive/v0.8.3.zip
#wget https://github.com/poseidon/matchbox/archive/v0.8.0.zip
#wget https://github.com/poseidon/matchbox/archive/v0.7.1.zip

#unzip v0.8.3.zip
#unzip v0.8.0.zip
#unzip v0.7.1.zip

#cd matchbox-0.8.3
#make
#./bin/matchbox -version
