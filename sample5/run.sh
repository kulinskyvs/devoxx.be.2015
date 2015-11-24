#!/bin/bash 

#run the application as a module from modulepath
printf "\n==run the application as a module from modulepath==\n"
$JAVA9_HOME/bin/java -mp mlib -m my.app

#run the application from classpath with dependencies from modulepath
printf "\n==run the application from classpath with dependencies from modulepath==\n"
$JAVA9_HOME/bin/java -mp mlib -addmods my.util -cp mlib/my.app.jar com.my.app.App