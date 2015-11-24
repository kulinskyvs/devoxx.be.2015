package com.my.app;

import com.my.util.Util;


public class App
{

  public App()
  {
    System.out.println("From App constructor!!!");
  }


  public static void main(String[] args) throws Exception {
      Util.create(App.class);
  }
}
