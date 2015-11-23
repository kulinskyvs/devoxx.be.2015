package com.hello.planet;

import com.hello.galaxy.*;

public class Planet {

	public static final String PLANET_NAME = "Earth";

    public static final Galaxy getGalaxy() {
    	return new Galaxy();
    }
}