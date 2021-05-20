<?php
  ini_set('display_errors', true);
  
 
  require_once('lib/nusoap.php');
  
  $error  = '';
  
  $result = array();
  
  $wsdl = "http://localhost/ws_nusoap/server.php?wsdl";
  
  if(isset($_POST['sub'])){
    $kode_hp = trim($_POST['kode_hp']);
    if(!$kode_hp){
      $error = 'kode_hp cannot be left blank.';
    }
    if(!$error){
      //create client object
      $client = new nusoap_client($wsdl, true);
      $err = $client->getError();
      if ($err) {
        echo '<h2>Constructor error</h2>' . $err;
          exit();
      }
      try {
        $result = $client->call('fetchHp', array($kode_hp));
        $result = json_decode($result);
        }catch (Exception $e) {
          echo 'Caught exception: ',  $e->getMessage(), "\n";
       }
    }
  }
?>

<!DOCTYPE html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
  <title>WS CLIENT NUSOAP</title>
</head>
<body>
<div class="container">
<div class='row'>
   <form class="form-inline" method = 'post' name='form1'>

     <?php if($error) { ?> 

       <div class="alert alert-danger fade in">

         <a href="#" class="close" data-dismiss="alert">&times;</a>
         <strong>Error!</strong>&nbsp;<?php echo $error; ?> 

         </div>

         

   <?php } ?>

     <div class="form-group">
       <label for="email">Kode Hp:</label>
       <input type="text" class="form-control" name="kode_hp" id="kode_hp" placeholder="kode_hp">
     </div>
     <button  type="submit" name='sub' class="btn btn-primary">Cari Informasi Hp</button>
   
   
   </form>
   <h2> </br> </br> Handphone Information </br> </br> </h2>
   

<table  class="table table-dark  table-bordered">

  <thead>

    <tr>

      <th scope="col">Kode Hp</th>

      <th scope="col">Nama </th>

      <th scope="col">Tipe</th>

      <th scope="col">Spesifikasi</th>

      <th scope="col">Harga</th>

    </tr>

  </thead>

  <tbody>

  <?php if(count($result)){ 

        for ($i=0; $i < count($result); $i++) { ?>

        <tr>

          <td><?php echo $result->kode_hp; ?></td>

          <td><?php echo $result->nama; ?></td>

          <td><?php echo $result->tipe; ?></td>

          <td><?php echo $result->spesifikasi; ?></td>  

          <td><?php echo $result->harga; ?></td>

        </tr>

             <?php 

      }

    } else {  ?>

    <?php } ?>

  </tbody>

</table>
  </div>
  </div>

</body>
</html>