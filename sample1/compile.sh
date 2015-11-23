#!/bin/bash 
rm -rf mods
mkdir -p mods/hello.world

$JAVA9_HOME/bin/javac -d mods/hello.world \
        src/hello.world/module-info.java \
        src/hello.world/com/hello/World.java