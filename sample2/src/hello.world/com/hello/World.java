package com.hello;

import com.hello.planet.*;

public class World {

	public static void main(String[] args) {
		System.out.println("Hello, "+Planet.PLANET_NAME+" from "+Planet.getGalaxy().getName()+"!");
	}

}