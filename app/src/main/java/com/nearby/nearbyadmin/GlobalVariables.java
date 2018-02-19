package com.nearby.nearbyadmin;

//import android.app.Activity;
//import android.app.Application;

/**
 * Created by ASUS1 on 11/5/2015.
 */
public class GlobalVariables {

    // For Location Data Transfer
    private static GlobalVariables instance;
    private static String devIMEI="";

    private GlobalVariables(){}

    public void setdevIMEI(String t){
        GlobalVariables.devIMEI=t;
    }

    public String getdevIMEI(){
        return GlobalVariables.devIMEI;
    }

    public static synchronized GlobalVariables getInstance(){
        if(instance==null){
            instance=new GlobalVariables();
        }
        return instance;
    }

    // For Offer Data Transfer
    // GlobalVariables

}
