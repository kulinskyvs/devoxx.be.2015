#!/bin/bash 

printf "\n==run the application as a module from modulepath==\n"
$JAVA9_HOME/bin/java -modulepath mods -m hello.world/com.hello.World

printf "\n==run the application as a jar from classpath==\n"
$JAVA9_HOME/bin/java -cp mods/hello.world com.hello.World