#!/bin/bash 
rm -rf mods/
mkdir -p mods/hello.globe
mkdir -p mods/hello.world

rm -rf mlib/
mkdir mlib

#hello galaxy
printf "============================ \n"
printf "Compiling hello.globe...\n"
$JAVA9_HOME/bin/javac \
        -d mods/hello.globe \
        src/hello.globe/module-info.java \
        src/hello.globe/com/hello/Globe.java

printf "\nPacking hello.globe ...\n"
$JAVA9_HOME/bin/jar --create --file=mlib/hello.globe@1.0.jar --module-version=1.0 --main-class=com.hello.Globe -C mods/hello.globe .
$JAVA9_HOME/bin/jar -p --file=mlib/hello.globe@1.0.jar


#hello planet
printf "\n============================ \n"
printf "Compiling hello.world...\n"
$JAVA9_HOME/bin/javac \
        -d mods/hello.world \
        src/hello.world/module-info.java \
        src/hello.world/com/hello/World.java

printf "\nPacking hello.world ...\n"
$JAVA9_HOME/bin/jar --create --file=mlib/hello.world@1.0.jar --module-version=1.0 --main-class=com.hello.World -C mods/hello.world .
$JAVA9_HOME/bin/jar -p --file=mlib/hello.world@1.0.jar