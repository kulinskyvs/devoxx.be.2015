#!/bin/bash 
rm -rf hello.world.app
mkdir hello.world.app

$JAVA9_HOME/bin/jlink --modulepath $JAVA9_HOME/jmods:../sample2/mlib --addmods hello.world --output hello.world.app

du -sh $JAVA9_HOME
du -sh hello.world.app