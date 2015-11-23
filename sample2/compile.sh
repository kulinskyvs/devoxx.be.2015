#!/bin/bash 
rm -rf mods/
mkdir -p mods/hello.galaxy
mkdir -p mods/hello.planet
mkdir -p mods/hello.world

rm -rf mlib/
mkdir mlib

#hello galaxy
printf "============================ \n"
printf "Compiling hello.galaxy...\n"
$JAVA9_HOME/bin/javac \
        -d mods/hello.galaxy \
        src/hello.galaxy/module-info.java \
        src/hello.galaxy/com/hello/galaxy/Galaxy.java

printf "\nPacking hello.galaxy ...\n"
$JAVA9_HOME/bin/jar --create --file=mlib/hello.galaxy@1.0.jar --module-version=1.0 -C mods/hello.galaxy .
$JAVA9_HOME/bin/jar --print-module-descriptor --file=mlib/hello.galaxy@1.0.jar


#hello planet
printf "\n============================ \n"
printf "Compiling hello.planet...\n"
$JAVA9_HOME/bin/javac \
        -d mods/hello.planet \
        -modulepath mlib \
        src/hello.planet/module-info.java \
        src/hello.planet/com/hello/planet/Planet.java

printf "\nPacking hello.planet ...\n"
$JAVA9_HOME/bin/jar --create --file=mlib/hello.planet@1.0.jar --module-version=1.0 -C mods/hello.planet .
$JAVA9_HOME/bin/jar --print-module-descriptor --file=mlib/hello.planet@1.0.jar
#$JAVA9_HOME/bin/jar --create --file=mlib/hello.planet@2.0.jar --module-version=2.0 -C mods/hello.planet .
#cp mlib/hello.planet@1.0.jar mlib/hello.planet@1.1.jar


#hello world
printf "\n============================\n"
printf "Compiling hello.world...\n"
$JAVA9_HOME/bin/javac \
        -modulepath mlib \
        -d mods/hello.world \
        src/hello.world/module-info.java \
        src/hello.world/com/hello/World.java

printf "\nPacking hello.world...\n"
$JAVA9_HOME/bin/jar --create --file=mlib/hello.world.jar --main-class=com.hello.World -C mods/hello.world .       
$JAVA9_HOME/bin/jar --print-module-descriptor --file=mlib/hello.world.jar

 printf "\n============================\n"
 printf "Dependencies ....\n"
 $JAVA9_HOME/bin/jdeps -s mlib/hello.*.jar