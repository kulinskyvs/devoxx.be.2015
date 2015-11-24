package com.my.util;

import java.lang.reflect.*;


public class Util
{
  public static <T> T create(Class<T> fromClass) throws Exception
  {
    //addModuleRead(fromClass);

    Constructor<T> defaultConstructor = fromClass.getDeclaredConstructor();
    return defaultConstructor.newInstance();
  }


  public static void addModuleRead(Class<?> forClass) {
  	Util.class.getModule().addReads(forClass.getModule());
  }
}
