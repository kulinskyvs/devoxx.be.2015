#!/bin/bash 
rm -rf hello.world.app
mkdir hello.world.app

#$JAVA9_HOME/bin/jlink --modulepath $JAVA9_HOME/jmods:../sample2/mlib --addmods hello.world --output hello.world.app
$JAVA9_HOME/bin/jlink --modulepath "$JAVA9_HOME/jmods;../sample2/mlib" --addmods hello.world --output hello.world.app

du -sh $JAVA9_HOME
du -sh hello.world.app

printf "\n==========================\n"
./hello.world.app/bin/java -listmods

printf "\n==========================\n"
./hello.world.app/bin/java -m hello.world
./hello.world.app/bin/hello.world