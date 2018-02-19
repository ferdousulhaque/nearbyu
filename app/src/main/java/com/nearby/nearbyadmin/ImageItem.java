package com.nearby.nearbyadmin;

//import android.graphics.Bitmap;

public class ImageItem {
    private String image_url;
    //private String title;

    public ImageItem(String image_url) {
        super();
        this.image_url = image_url;
        //this.title = title;
    }

    public String getImage() {
        return image_url;
    }

    public void setImage(String image_url) {
        this.image_url = image_url;
    }

    /*public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }*/
}
