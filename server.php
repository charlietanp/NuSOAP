<?php
 require_once('dbconn.php');
 require_once('lib/nusoap.php'); 
 $server = new nusoap_server();
/* Fetch 1 book data */
function fetchHp($kode_hp){
  global $dbconn;
  $sql = "SELECT kode_hp, nama, tipe, spesifikasi, harga FROM data_hp where kode_hp = :kode_hp";
  // prepare sql and bind parameters
    $stmt = $dbconn->prepare($sql);
    $stmt->bindParam(':kode_hp', $kode_hp);
    // insert a row
    $stmt->execute();
    $data = $stmt->fetch(PDO::FETCH_ASSOC);
    return json_encode($data);
    $dbconn = null;
}
$server->configureWSDL('phonesServer', 'urn:phone');
$server->register('fetchHp',
      array('kode_hp' => 'xsd:string'),  //parameter
      array('data' => 'xsd:string'),  //output
      'urn:phone',   //namespace
      'urn:phone#fetchHp' //soapaction
      );  
$server->service(file_get_contents("php://input"));
?>