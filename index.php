<!DOCTYPE html>
<html lang="en">
<head>
  <title>Este es el inicio</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>

<style type="text/css">
  .jumbotron {
   background:  #2471a3;
   color: #fff;
   padding: 20px 0;
 }
</style>


<body>


  <section class="jumbotron">
    <div class="container">
      <h1>Proceso Academico de Inscripción de las Facultades</h1>
    </div>
  </section>





  <header>  
    <nav class="navbar navbar-inverse navbar-static-top" role="navigation">       
      <div class="container">
        <div class="navbar-header">
          <a class="navbar-brand" href="http://www.umsa.bo/web/guest/">UMSA</a>
        </div>

      </div>
    </nav>
  </header>
  <form method="POST" action="motor.php">

      <div class="col-sm-6 col-md-4">
        <div class="thumbnail" style="margin-left:105px;">
        <div class="caption">
          <div class="radio">
          <label><input type="radio" name="tipoIngreso[]">Examen de dispensación</label>
          </div>
          <div class="radio">
            <label><input type="radio" name="tipoIngreso[]">Curso Prefacultativo</label>
          </div>

          <button type="submit" class="btn btn-info">CONTINUAR</button>

        </div>
      </div>
    </div>
  </form>





</body>
</html>