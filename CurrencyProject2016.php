
<?php

error_reporting(E_ALL);

$link = mysql_connect('localhost', 'root', '');

if (!$link) {
    echo "-ERR MySQL Error: " . mysql_error();
    mysql_close($link);
    exit();
}

if (!(mysql_select_db("currencydata"))){ 
    echo "-ERR no selected DB  MySQL Error: ". mysql_error();
    exit();
}
$smsID = $_GET["smsID"];
$MSISDN = $_GET["MSISDN"];
$mobileSP = $_GET["msp"];
$smsCurrency = $_GET["smsCurrency"];
$smsCurrency = str_replace(" ", "", $smsCurrency);
$smsID = addslashes($smsID);
$MSISDN = addslashes($MSISDN);
$mobileSP = addslashes($mobileSP);
$smsCurrency = addslashes($smsCurrency);

$argArr=explode(':', $smsCurrency );
$Npar=count($argArr);
 if ($Npar==2){
     $smsCurrency=$argArr[0] ;
     $Amount=$argArr[1] ;
      if ( !is_numeric($Amount) )
     {
        echo "+OK  Invalid type of amount ( Amount=$Amount )"; 
        mysql_close($link);
        exit();
     }
 }


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
    mysql_close($link);
    exit();
} else {
    $count = mysql_num_rows($rSelect);
    if ($count == 0) {

        echo "+OK Invalid CurrencyName.";
        mysql_close($link);

        exit();
    }
    $row = mysql_fetch_array($rSelect);
    $CurrencyName = $row['CurrencyName'];
    $Price= $row['Price'];
    $DateTime=$row['Date_Time'];
    if ($Npar==2){
        $AmountConverted=$Price*$Amount;
        echo " +OK  The converted amount for" . $CurrencyName. " is " .$AmountConverted. " at " . $DateTime;
    } else
        {
        echo " +OK The rate of " . $CurrencyName. " is " . $Price . " at " . $DateTime;
    }
}
mysql_close($link);
?>
