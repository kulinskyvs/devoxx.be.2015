Reflection module  dependencies demo

* Demostrate **runtime** error when trying to instantiate the class through reflection from module that is not read
 * compile.sh
 * run.sh

* Demostrate **runtime** error when trying to instantiate the class through reflection from module that doesn't export the package
 * uncomment *addModuleRead()* in *com.my.util.Util*
 * compile.sh
 * run.sh

* Demostrate normal workflow when trying to instantiate teh class through reflection from another module
 * uncomment *exports ..* in *hello.app*
 * compile.sh
 * run.sh

