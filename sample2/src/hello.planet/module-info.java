module hello.planet { 
	requires public hello.galaxy;
	//requires hello.galaxy;

	exports com.hello.planet;
	//exports com.hello.planet to hello.galaxy;
}