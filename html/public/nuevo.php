<?php
include('html/overall/header.php');
include('html/overall/navbar.php');
?>

  <!-- === bienvenida === -->
    <div class="row m-t-50">
      <div class="col-lg-12">
        <div class="container">

          <!-- inicio formulario nueva orden -->

          <div class="row">
            <div class="page-header">
              <h3 class="">
                Por favor ingrese los datos de su orden
              </h3>
            </div>
          </div>


          <div class="row well">
            <div class="form-horizontal">
              <div class="col-sm-12 col-lg-6">
                <div class="form-group">
                  <label for="inputTeléfono" class="col-lg-3 control-label">Paquete</label>
                    <div class="col-lg-5">
                      <select name="" id="servicio" class="form-control">
                        <option value="0">Seleccion un paquete</option>
                        <option value="1">Paquete 1</option>
                        <option value="2">Paquete 2</option>
                      </select>
                    </div>
                </div>

                <div class="form-group">
                  <label for="inputDireccion" class="col-lg-3 control-label">Dirección de servicio</label>
                  <div class="col-lg-5">
                    <?php
                      if ($usr[$_SESSION['app_id']]['dir_usr'] == null) {
                        echo '<input type="text" class="form-control" placeholder="Dirección de servicio" id="di_servicio">';
                      } else {
                        echo '<input value="'.$usr[$_SESSION['app_id']]['dir_usr'].'" type="text" class="form-control" placeholder="Dirección" id="di_servicio">';
                      }
                     ?>
                  </div>
                </div>

                <div class="form-group">
                  <label for="inputPais" class="col-lg-3 control-label">Fecha de servicio</label>
                  <div class="col-lg-5">
                    <input type="date" class="form-control" id="fe_servicio"  min='<?php echo date("Y-m-d") ?>'>
                  </div>
                </div>

                <div class="form-group">
                  <label for="inputHora" class="col-lg-3 control-label">Hora de servicio</label>
                  <div class="col-lg-5">
                    <input type="time" class="form-control" id="ho_servicio">
                  </div>
                </div>
                
              </div>
              <div class="col-sm-12 col-lg-6">

                <div class="form-group">
                  <label for="">Nota adicional</label>
                  <textarea name="" rows="5" class="form-control" id="nota_servicio"></textarea>
                </div>

                <div class="col-lg-3 col-lg-offset-5">
                  <button type="button" class='btn btn-success' id="boton_ordenar">Ordenar  <i class="fa fa-floppy-o"></i></button>
                </div>



              </div>
            </div>
          </div>

          <div class="row center">
            <div id="alertar">

            </div>
          </div>



        </div>
      </div>
    </div>

    <script src="view/js/nueva_orden.js">

    </script>

<?php
    include("html/overall/footer.php");
?>
