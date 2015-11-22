#!/bin/bash 
mkdir -p mods/helloworld

$JAVA9_HOME/bin/javac -d mods/helloworld \
        src/helloworld/module-info.java \
        src/helloworld/com/hello/Main.java