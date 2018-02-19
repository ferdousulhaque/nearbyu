package com.nearby.nearbyadmin;
 
import android.app.Activity;
import android.app.ProgressDialog;
import android.os.AsyncTask;
import android.os.Bundle;
import android.telephony.TelephonyManager;
import android.view.View;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Spinner;
import android.widget.Toast;

import org.apache.http.HttpResponse;
import org.apache.http.NameValuePair;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.message.BasicNameValuePair;

import java.io.IOException;
import java.util.ArrayList;

public class RegisterActivity3 extends Activity {
    EditText et_usr_name, et_usr_msisdn, et_usr_email;
    Spinner sp_usr_occupation;
    String usr_name, usr_msisdn, usr_email;
    String number, occupation;
    GPSTracker gps;
    Double reg_lati, reg_longi;
    HttpResponse response;

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        // Set View to register.xml
        setContentView(R.layout.register_user);

        //This activity values
        et_usr_name = (EditText)findViewById(R.id.usr_name);
        et_usr_msisdn = (EditText)findViewById(R.id.usr_msisdn);
        et_usr_email = (EditText)findViewById(R.id.usr_email);
        sp_usr_occupation = (Spinner)findViewById(R.id.usr_occupation);

        //Collecting IMEI
        TelephonyManager tm = (TelephonyManager)getSystemService(TELEPHONY_SERVICE);
        number = tm.getDeviceId();
        //Toast.makeText(RegisterActivity3.this,"Unique Code :" + number, Toast.LENGTH_LONG).show();

        //Collecting the GPS Data
        // create class object
        gps = new GPSTracker(RegisterActivity3.this);
        reg_lati = gps.getLatitude();
        reg_longi = gps.getLongitude();

        // For Occupation Array Generator
        Spinner staticSpinner = (Spinner) findViewById(R.id.usr_occupation);

        // Create an ArrayAdapter using the string array and a default spinner
        ArrayAdapter<CharSequence> staticAdapter = ArrayAdapter
                .createFromResource(this, R.array.searchType,android.R.layout.simple_spinner_item);
        // Specify the layout to use when the list of choices appears
        staticAdapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
        // Apply the adapter to the spinner
        staticSpinner.setAdapter(staticAdapter);

        // Back to Main Screen
        Button backScreen = (Button) findViewById(R.id.btnBack);
        backScreen.setOnClickListener(new View.OnClickListener() {

            public void onClick(View arg0) {
                // Closing registration screen
                // Switching to Login Screen/closing register screen
                finish();
            }
        });

        // Back to Main Screen
        Button btnRegister = (Button) findViewById(R.id.btnRegister);
        btnRegister.setOnClickListener(new View.OnClickListener() {

            public void onClick(View arg0) {
                InsertData task1 = new InsertData();
                task1.execute(new String[]{"http://nearby.thecorporatenetwork.org/mx9vp3/register_user.php"});
            }
        });
    }

    //Task to insert the data in the DB for registration
    private class InsertData extends AsyncTask<String, Void, Boolean> {

        ProgressDialog dialog = new ProgressDialog(RegisterActivity3.this);

        @Override
        protected void onPreExecute() {
            //TODO Auto-generated method stub
            //super.onPreExecute();
            usr_name = et_usr_name.getText().toString();
            usr_msisdn = et_usr_name.getText().toString();
            usr_email = et_usr_name.getText().toString();
            occupation = sp_usr_occupation.getSelectedItem().toString();
            dialog.setMessage("Registering User...");
            dialog.show();
        }


        @Override
        protected Boolean doInBackground(String... urls) {
            for (String url1 : urls) {
                try {

                    ArrayList<NameValuePair> pairs = new ArrayList<NameValuePair>();
                    pairs.add(new BasicNameValuePair("usr_name", usr_name));
                    pairs.add(new BasicNameValuePair("usr_msisdn", usr_msisdn));
                    pairs.add(new BasicNameValuePair("usr_email", usr_email));
                    pairs.add(new BasicNameValuePair("usr_imei", number));
                    pairs.add(new BasicNameValuePair("usr_lati", reg_lati.toString()));
                    pairs.add(new BasicNameValuePair("usr_longi", reg_longi.toString()));
                    pairs.add(new BasicNameValuePair("usr_occupation", occupation));

                    HttpClient client = new DefaultHttpClient();
                    HttpPost post = new HttpPost(url1);
                    post.setEntity(new UrlEncodedFormEntity(pairs));
                    response = client.execute(post);

                    //return null;

                } catch (ClientProtocolException e) {
                    Toast.makeText(RegisterActivity3.this, e.toString(), Toast.LENGTH_LONG).show();
                    return false;
                } catch (IOException e) {
                    Toast.makeText(RegisterActivity3.this, e.toString(), Toast.LENGTH_LONG).show();
                    return false;
                }
            }
            return true;
        }

        @Override
        protected void onPostExecute(Boolean result) {
            //TODO Auto-generated method stub
            //super.onPostExecute(result);
            if(result == true){
                Toast.makeText(RegisterActivity3.this,response.toString(), Toast.LENGTH_LONG).show();
                //Toast.makeText(RegisterActivity3.this, "Registered Successfully",Toast.LENGTH_LONG).show();
            }else{
                Toast.makeText(RegisterActivity3.this, "Error while register/Already registered",Toast.LENGTH_LONG).show();
            }
            dialog.dismiss();
        }
    }
}