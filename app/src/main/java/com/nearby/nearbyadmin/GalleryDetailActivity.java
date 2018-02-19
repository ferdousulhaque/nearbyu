package com.nearby.nearbyadmin;

import android.os.Bundle;
import android.support.v7.app.ActionBarActivity;
import android.widget.ImageView;

import com.squareup.picasso.Picasso;

public class GalleryDetailActivity extends ActionBarActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.shopview_gallery_details);

        String url = getIntent().getStringExtra("image");
        //Bitmap bitmap = getIntent().getParcelableExtra("image");

        //TextView titleTextView = (TextView) findViewById(R.id.title);
        //titleTextView.setText(title);

        ImageView imageView = (ImageView) findViewById(R.id.image);
        //imageView.setImageBitmap(bitmap);
        Picasso.with(GalleryDetailActivity.this).load(url).into(imageView);
    }
}
