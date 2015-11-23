#!/bin/bash 

#run the application as a module from modulepath
printf "\n==run the application as a module from modulepath==\n"
$JAVA9_HOME/bin/java -modulepath mlib -m hello.world

#run the application from classpath with dependencies from modulepath
printf "\n==run the application from classpath with dependencies from modulepath==\n"
$JAVA9_HOME/bin/java -mp mlib -addmods hello.planet -cp mlib/hello.world.jar com.hello.World