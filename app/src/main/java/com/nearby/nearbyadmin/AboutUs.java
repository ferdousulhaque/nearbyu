package com.nearby.nearbyadmin;

import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.ActionBarActivity;
import android.view.Menu;
import android.view.MenuItem;
import android.widget.Toast;

public class AboutUs extends ActionBarActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.about);
    }


    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        // Inflate the menu; this adds items to the action bar if it is present.
        getMenuInflater().inflate(R.menu.main_shopview, menu);
        return true;
    }
    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        switch (item.getItemId()) {
            // action with ID action_refresh was selected
            case R.id.action_home:
                //Intent i = new Intent(getApplicationContext(), ShopListByTypeOfferActivity.class);
                //startActivity(i);
                break;
            // action with ID action_settings was selected
            case R.id.action_Search:
                Toast.makeText(this, "Search selected", Toast.LENGTH_SHORT)
                        .show();
                break;
            // action with ID action_settings was selected
            case R.id.action_AboutUs:
                Intent aboutus = new Intent(getApplicationContext(), AboutUs.class);
                startActivity(aboutus);
                break;
            // action with ID action_settings was selected
            case R.id.action_ContactUs:
                Intent contactus = new Intent(getApplicationContext(), ContactUs.class);
                startActivity(contactus);
                break;
            default:
                break;
        }

        return true;
    }
}
