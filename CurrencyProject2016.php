
<?php
//
//	Currency Converter 2016
//	
//	http://localhost/
//
//      http://localhost/PhpPrj2016/CurrencyProject2016.php?smsID=1&MSISDN=359899866747&msp=87&msp=87&smsCurrency=EUR/USD
//
//	set error reporting
error_reporting(E_ALL);
$link = mysql_connect('localhost', 'root', '');
if (!$link) {
    echo "-ERR MySQL Error: " . mysql_error();
    exit();
}
echo"<br>CurrencyProject<br>";
mysql_select_db("currencydata");
$smsID = $_GET["smsID"];
$MSISDN = $_GET["MSISDN"];
$mobileSP = $_GET["msp"];
$smsCurrency = $_GET["smsCurrency"];
$smsCurrency = str_replace(" ", "", $smsCurrency);
$smsID = addslashes($smsID);
$MSISDN = addslashes($MSISDN);
$mobileSP = addslashes($mobileSP);
$smsCurrency = addslashes($smsCurrency);

$selectSQL = "
	SELECT 
		* 
	FROM 
		Currency
     WHERE 
		CurrencyName = '$smsCurrency'        
     order by  `Date_Time` DESC 
";

$rSelect = mysql_query($selectSQL);
if ($rSelect == false) {
    echo "-ERR MySQL Error: " . mysql_error() . "\nSQL: $selectSQL";
    exit();
} else {
    $count = mysql_num_rows($rSelect);
    if ($count == 0) {
        
        echo "<br>";
        echo "+OK Invalid CurrencyName.";
        
        exit();
    }
    $row = mysql_fetch_array($rSelect);
    $CurrencyName = $row['CurrencyName'];
    
    echo " +OK " . $row['CurrencyName'] . " _ " . $row['Price'] . " _ " . $row['Date_Time'];
}
mysql_close($link);
?>
