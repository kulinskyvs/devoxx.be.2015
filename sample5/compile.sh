#!/bin/bash 
rm -rf mods/
mkdir -p mods/my.util
mkdir -p mods/my.app

rm -rf mlib/
mkdir mlib

#hello planet
printf "Compiling my.util...\n"
$JAVA9_HOME/bin/javac \
        -d mods/my.util \
        src/my.util/module-info.java \
        src/my.util/com/my/util/Util.java 

printf "Packing my.util ...\n"
$JAVA9_HOME/bin/jar --create --file=mlib/my.util.jar -C mods/my.util .       
$JAVA9_HOME/bin/jar -p --file=mlib/my.util.jar


#hello world
printf "\nCompiling my.app ...\n"
$JAVA9_HOME/bin/javac \
        -modulepath mlib \
        -d mods/my.app \
        src/my.app/module-info.java \
        src/my.app/com/my/app/App.java

printf "Packing my.app ...\n"
$JAVA9_HOME/bin/jar --create --file=mlib/my.app.jar --main-class=com.my.app.App -C mods/my.app .       
$JAVA9_HOME/bin/jar -p --file=mlib/my.app.jar