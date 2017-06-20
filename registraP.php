<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
  <h2>Formulario Registro</h2>
  </br>
  <form class="form-horizontal" action="/action_page.php">
   <div class="form-group">
        <label class="control-label col-sm-2" for="exampleInputName2">Cédula de Identidad</label>
        <div class="col-sm-10">
          <input type="text" class="form-control" name="ci" id="ci"  required="required" placeholder="10076284 L.P.">
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-2" for="exampleInputEmail2">Nombres y Apellidos:</label>
        <div class="col-sm-10">
          <input type="text" class="form-control" name="nombre" id="nom" required="required" class="form-control" placeholder="JOSE TORRES BUSTAMANTE">
        </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="email">Cod Departamento:</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="cod_dep" value="01">
      </div>
    </div>

    <div class="form-group">
        <label class="control-label col-sm-2" for="exampleInputEmail2">Sexo:</label>
        <div class="col-sm-10">
        <select name="sexo" id="">
          <option value="F">Femenino</option>
          <option value="M">Masculino</option>
        </select>
        </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="pwd">Direccion:</label>
      <div class="col-sm-10">          
        <input type="text" class="form-control" name="direccion">
      </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-2" >Unidad Educativa de Procedencia:</label>
      <div class="col-sm-10">          
        <input type="text" class="form-control" name="unid_prod">
      </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-2" >Fecha de Nacimiento:</label>
      <div class="col-sm-10">          
        <input type="date" class="form-control" name="fecha_nac">
      </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-2" >Municipio:</label>
      <div class="col-sm-10">          
        <input type="text" class="form-control" name="munic">
      </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-2" >Paralelo:</label>
      <div class="col-sm-10">          
        <select name="par" id="">
          <option value="a">A</option>
          <option value="b">B</option>
          <option value="c">C</option>
        </select>
      </div>
    </div>

    <div class="form-group">
      <div class="col-sm-offset-2 col-sm-10">
        <button type="submit" class="btn btn-default">Registrar</button>
      </div>
    </div>

  </form>
</div>

</body>
</html>
