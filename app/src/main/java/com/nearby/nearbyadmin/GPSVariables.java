package com.nearby.nearbyadmin;

//import android.app.Activity;
//import android.app.Application;

/**
 * Created by ASUS1 on 11/5/2015.
 */
public class GPSVariables {

    // For Location Data Transfer
    private static GPSVariables instance;
    private static double uLati, uLong, shopLong, shopLati;
    private static String devIMEI;

    private GPSVariables(){}

    public void setuLati(double t){
        GPSVariables.uLati=t;
    }

    public double getuLati(){
        return GPSVariables.uLati;
    }

    public void setuLong(double t){
        GPSVariables.uLong=t;
    }

    public double getuLong(){
        return GPSVariables.uLong;
    }

    public void setdevIMEI(String t){
        GPSVariables.devIMEI=t;
    }

    public String getdevIMEI(){
        return GPSVariables.devIMEI;
    }

    public void setshopLong(double t){
        GPSVariables.shopLong=t;
    }

    public double getshopLong(){
        return GPSVariables.shopLong;
    }

    public void setshopLati(double t){
        GPSVariables.shopLati=t;
    }

    public double getshopLati(){
        return GPSVariables.shopLati;
    }

    public static synchronized GPSVariables getInstance(){
        if(instance==null){
            instance=new GPSVariables();
        }
        return instance;
    }

    // For Offer Data Transfer
    // GPSVariables Shop

}
