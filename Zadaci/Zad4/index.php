<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title></title>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>
  <!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title></title>
</head>
<body>
<div class="container mt-5">
  <form class="" action="" method="POST">
    @csrf
    <input type="text" name="Ime" value="/">
    <input type="submit" name="" value="Pronadji">
  </form>

<?php
if(isset($_POST['Ime'])){

  $dir = $_POST['Ime'];
  $a = scandir($dir);
  foreach ($a as $i) {
    print_r("- " .$i); ?><br> <?php
  }


}

?>
</div>
</body>
</html>

</body>
</html>
