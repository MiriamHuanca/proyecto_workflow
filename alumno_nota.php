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
  <h2>Notas Acumuladas</h2>
  <p>Universidad Mayor de San Andres</p>            
  <table class="table table-hover">
    <thead>
      <tr>
        <th>Materia</th>
        <th>Sigla</th>
        <th>Nota</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>Computacion</td>
        <td>Com-111</td>
        <td>66</td>
      </tr>
      <tr>
        <td>Informatica</td>
        <td>inf-1112</td>
        <td>55</td>
      </tr>
      <tr>
        <td>Fisica</td>
        <td>fis-111</td>
        <td>88</td>
      </tr>
      <tr>
        <td>Matematicas</td>
        <td>mat-111</td>
        <td>99</td>
      </tr>
    </tbody>
  </table>
</div>
<!--

<div class="container">
  <h2>Notas Acumuladas</h2>
  <p>Universidad Mayor de San Andres</p>            
  <table class="table table-hover">
        <thead>
            <tr>
                <th>Materia1</th>
                <th>Sigla1</th>
                <th>Nota1</th>
            </tr>
        </thead>

        <tbody>   
    <?php
                $con=mysql_connect("localhost","root","");
                mysql_select_db("academico",$con);

                $sql="  select      *
                        from        usuario";
                $data=mysql_query($sql,$con);
                while ($row=mysql_fetch_row($data))
                {
                  echo "<tr>";
                  echo 
                  "<td>".$row["0"]."</td>
                   <td>".$row["1"]."</td>
                   <td>".$row["2"]."</td>";
                  echo "</tr>";
                }
        ?>                
        </tbody>
    </table>
</div>
-->
</body>
</html>
