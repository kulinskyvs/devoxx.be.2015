#!/bin/bash 
rm -rf classes/
mkdir -p classes/hello.planet

rm -rf mods/
mkdir -p mods/hello.world

rm -rf mlib/
mkdir mlib

#hello planet
printf "Compiling hello.planet...\n"
$JAVA9_HOME/bin/javac \
        -d classes/hello.planet \
        src/hello.planet/com/hello/planet/Planet.java

printf "Packing hello.planet ...\n"
$JAVA9_HOME/bin/jar --create --file=mlib/hello.planet.jar classes/hello.planet
$JAVA9_HOME/bin/jar --print-module-descriptor --file=mlib/hello.planet.jar


#hello world
printf "\nCompiling hello.world...\n"
$JAVA9_HOME/bin/javac -verbose \
        -modulepath mlib \
        -d mods/hello.world \
        src/hello.world/module-info.java \
        src/hello.world/com/hello/World.java

# printf "Packing hello.world...\n"
# $JAVA9_HOME/bin/jar --create --file=mlib/hello.world.jar --main-class=com.hello.World -C mods/hello.world .       
# $JAVA9_HOME/bin/jar --print-module-descriptor --file=mlib/hello.world.jar