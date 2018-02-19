<?php
$host="localhost"; //replace with database hostname 
$username="root"; //replace with database username 
$password=""; //replace with database password 
$db_name="nearby"; //replace with database name
 
$con=mysql_connect("$host", "$username", "$password")or die("cannot connect"); 
mysql_select_db("$db_name")or die("cannot select DB");
$sql = "select 
		pref_db.loc_usr_id, 
		pref_db.pref_id, 
		store_info.store_name, 
		store_info.store_active, 
		store_info.type_id, 
		store_info.store_id, 
		store_loc.sub_store_tnt, 
		store_loc.sub_store_mobile, 
		store_loc.sub_store_longi, 
		store_loc.sub_store_lati,  
		usr_loc.usr_rad, 
		store_loc.store_loc_active, 
		store_rating.sum_count,
		store_rating.sum_rating,
		store_offr.sub_store_id, 
		store_offr.offer_tagline,
		store_offr.offer_id,
		store_info.open_from_to, 
		store_logo.image,
		store_offr.offer_active 
			from store_loc 
				inner join store_offr on store_offr.sub_store_id=store_loc.sub_store_id 
				inner join store_info on store_info.store_id=store_loc.store_id 
				inner join pref_db on pref_db.type_id=store_info.type_id 
				inner join usr_loc on pref_db.loc_usr_id=usr_loc.loc_usr_id 
				inner join store_logo on store_logo.store_id=store_info.store_id
				inner join store_rating on store_rating.store_id=store_info.store_id 				
				where usr_loc.usr_msisdn='+8801711084714'"; 
$result = mysql_query($sql);
$json = array();
 
if(mysql_num_rows($result)){
while($row=mysql_fetch_assoc($result)){
$json['get_nearby'][]=$row;
}
}
mysql_close($con);
print json_encode($json); 
?>