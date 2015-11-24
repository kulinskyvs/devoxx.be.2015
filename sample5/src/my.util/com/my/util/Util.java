package com.my.util;

import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;

import java.lang.reflect.*;


public class Util
{
  public static <T> T create(Class<T> fromClass) throws NoSuchMethodException, IllegalAccessException,
      InvocationTargetException, InstantiationException
  {
    //addModuleRead(fromClass);

    Constructor<T> defaultConstructor = fromClass.getDeclaredConstructor();
    return defaultConstructor.newInstance();
  }


  public static void addModuleRead(Class<?> forClass) {
  	Util.class.getModule().addReads(forClass.getModule());
  }
}
