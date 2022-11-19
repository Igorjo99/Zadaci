<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title></title>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>

  <div class="container">
<form method="POST" id="mojaForma" action="">
  @csrf
  <div class="form-row mt-5">
    <div class="form-group col-md-6">
      <label for="Ime">Ime</label>
      <input type="textfield" class="form-control" id="Ime" name="Ime" placeholder="Ime">
    </div>
    <div class="form-group col-md-6">
      <label for="Prezime">Prezime</label>
      <input type="textfield" class="form-control" id="Prezime" name="Prezime" placeholder="Prezime">
    </div>
  </div>
  Pol :
 <div class="form-check">
  <input type="radio"  class="form-check-input" id="radio1" name="Pol" value="Musko" checked>
  <label class="form-check-label" for="radio1">Musko</label>
</div>
<div class="form-check">
  <input type="radio" class="form-check-input" id="radio2" name="Pol" value="Zensko">
  <label class="form-check-label" for="radio2">Zensko</label>
</div><br>

  <div class="form-group ">
      <label for="GodinaRodj">Unesite godinu rodjenja : </label>
      <input type="textfield" class="form-control" id="GodinaRodj" name="GodinaRodj" placeholder="11/11/2000">
  </div>


  <div class="form-group">
    <label for="Adresa">Adresa</label>
    <input type="textarea" class="form-control" name="Adresa" id="Adresa" placeholder="Ulica 123">
  </div>
  <div class="form-row">
    <div class="form-group col-md-4">
      <label for="inputState">Grad</label>
      <select id="Grad" name="Grad" class="form-control">
        <option selected>Izaberi...</option>
        <option>...</option>
        <option>Beograd</option>
        <option>Novi Sad</option>
        <option>Niš</option>
        <option>Kragujevac</option>
        <option>Subotica</option>
      </select>
    </div>


  </div>
  <button type="button" onclick="f()" class="btn btn-primary" name="" value="unesi">unesi </button>
</form>
</div>

  <script type="text/javascript">
  function f(){
    var filter1=/([A-Z])\w+/g;
    var filter2=/[0-9]+\/[0-9]+\/[0-9]+/g;
    var ime=mojaForma.Ime.value;
    var prezime=mojaForma.Prezime.value;
    var pol=mojaForma.Pol.value;
    var godina=mojaForma.GodinaRodj.value;
    var adresa=mojaForma.Adresa.value;
    var grad=mojaForma.Grad.value;
    var uspesno=0;

    if(ime.match(filter1)!=null && prezime.match(filter1)!=null && godina.match(filter2) && adresa.match(filter1)!=null){
      alert("Uspesna registracija");
    }
    else{
      alert("Neispravno uneti podaci");
    }
  }
  </script>

</body>
</html>
