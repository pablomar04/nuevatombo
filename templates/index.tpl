<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title> La Tombo</title>
    <!--<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">-->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.1.1.slim.min.js" integrity="sha384-A7FZj7v+d/sdmMqp/nOQwliLvUsJfDHW+k9Omg/a/EheAdgtzNs3hpfag6Ed950n" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js" integrity="sha384-DztdAPBWPRXSA/3eYEEUWrWCy7G5KFbe8fFjk5JAIxUYHKkDx6Qin1DkWx51bBrb" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js" integrity="sha384-vBWWzlZJ8ea9aCX4pEW3rVHjgjt7zpkNpZk+02D9phzyeVkE+jo0ieGizqPLForn" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="css/main.css">
  </head>

  <body>


    <nav class="navbar navbar-toggleable-md navbar-light bg-faded">
      <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
      </button>
      <a class="navbar-brand" href="index.php?action=home">LA TOMBO</a>

      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
          <li class="nav-item active">
            <a class="nav-link" href="index.php?action=home">Fecha<span class="sr-only">(current)</span></a>
          </li>
          <!--<li class="nav-item">
            <a class="nav-link" href="index.php?action=cupones">Jugadas</a>
          </li>-->
        </ul>
      </div>
    </nav>



    <div class="container container-fluid">
    <div class="row">
      <div class="col-2"></div>
      <div class="col-8">
      <h1>Fecha 24</h1>

      <form action="index.php?action=addCupon" method="POST">

      
        <div class="form-group">
          <label for="example-text-input" class="col-2 col-form-label">Nombre</label>
            <div class="col-6">
              <input class="form-control" type="text"  id="jugador" name="jugador">
            </div>
        </div>
      

      <fieldset class="form-group">
              
          <table class="tabla table table-hover" >
            <thead><tr><td></td><td></td><td></td><td>Local</td><td>Empate</td><td>Visitante</td><td></td><td></td></tr></thead>
            <tbody>
              {foreach $partidos  as $partido}
                <tr>                   
                   <td>
                     {$partido.numero}
                   </td>
                   <td >
                     <img src="{$partido.e1img}" alt="">
                   </td> 
                   <td>
                    <div class="form-check">
                      <label class="form-check-label">
                        <input type="radio" class="form-check-input" name="optionsRadios{$partido.numero}" id="optionsRadios1" value="L">                  
                      </label>
                    </div>

                  </td>
                  <td>
                    {$partido.e1}
                  </td>
                  <td>
                    <div class="form-check">
                    <label class="form-check-label">
                        <input type="radio" class="form-check-input" name="optionsRadios{$partido.numero}" id="optionsRadios2" value="E">
                        
                      </label>
                    </div>
                  </td>
                  <td>
                    {$partido.e2}
                  </td>

                  <td>                 
                    <div class="form-check">
                    <label class="form-check-label">
                        <input type="radio" class="form-check-input" name="optionsRadios{$partido.numero}" id="optionsRadios3" value="V">                  
                      </label>
                    </div>
                  </td>
                  <td>
                     <img src="{$partido.e2img}" alt="">
                  </td> 
                </tr>
              {/foreach}          
            </tbody>
          </table>
      </fieldset>
      
      
      <button type="submit" class="btn btn-primary">Enviar</button>
      
    </form>
    </div>
    <div class="col-2"></div>
    </div>
    <footer>

    </footer>
    <!--<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>-->
  </body>
</html>
