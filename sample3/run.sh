#!/bin/bash 
#$JAVA9_HOME/bin/java -mp mlib -m hello.world
#$JAVA9_HOME/bin/java -mp mlib -addmods hello.globe -m hello.world
$JAVA9_HOME/bin/java -mp mlib -addmods hello.globe -cp mlib/hello.world@1.0.jar com.hello.World
