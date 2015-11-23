Module dependencies demo

* Demostrate normal workflow with transitive dependencies (*hello.world* transitively depends on *hello.galaxy*)
 * compile.sh
 * run.sh

* Demonstrate **compilation** error when **export** is missed in *hello.planet*
 * remove **exports** from *hello.planet*
 * compile.sh

* Demonstrate **compilation** error when **export ... to hello.galaxy** is specifief in *hello.planet*
 * specify **exports ... to hello.galaxy** from *hello.planet*
 * compile.sh

* Demonstrate **compilation** error when **requires** is missed in *hello.world*
 * remove **requires* from *hello.world*
 * compile.sh

* Demostrate **compilation** error when when error exposes public API from another module but doesn't use **requires public**
 * remove **public** from *module.planet*
 * compile.sh
 * run.sh

* Demonstrate **runtime** error when the module jat is not found in modulepath
 * compile.sh
 * remove *hello.planet@1.0.jar* from modulepath
 * run.sh

* Demonstrate **compilation** error when having **two different** versions of **same** module in modulepath
 * uncomment statement to create two versions of *hello.planet* in compile.sh
 * create two different versions of the hello.planet module
 * compile.sh

* Demonstrate **compilation** error when having **the same** versions of **same** module in modulepath 
 * uncomment statement to copy hello.planet@1.1.jar in compile.sh
 * compile.sh
 * run.sh