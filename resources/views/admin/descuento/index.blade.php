<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
	<script src="js/jquery-3.3.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
	<script>
	$(document).ready(function() {
  	$("#boton_modal").click(function() {
    $('#mimodaltema').on('shown.bs.modal', function() {
      $('#primero').focus();
    })
  	});
	});
	</script>
	<title></title>
</head>
<body>
<div class="container">
<h1>Listado de Descuentos por Curso</h1>
<a href="{{ route('curso.index') }}">Ventana Principal</a>
<hr>
<button type="button" class="btn btn-success btn-lg" data-toggle="modal" data-target="#mimodaltema" id="boton_modal">
Nuevo Descuento para un Curso
</button>
<br>
<br>
<table class="table table-bordered">
	<tr>
		<th class="text-center">Identificador</th>
		<th class="text-center">Nombre del Curso</th>
		<th class="text-center">Cantidad Minima</th>
		<th class="text-center">Cantidad Maxima</th>
		<th class="text-center">Costo del Curso</th>
		<th class="text-center">Porcentaje de Descuento</th>
		<th class="text-center">Acciones</th>
	</tr>
	<tr>
		<td class="text-center">1</td>
		<td class="text-center">Puesta a Tierra</td>
		<td class="text-center">0</td>
		<td class="text-center">10</td>
		<td class="text-center">300</td>
		<td class="text-center">10%</td>
		<td class="text-center">
			<a class="btn btn-warning btn-sm" href="">Editar</a>
			<a class="btn btn-danger btn-sm" href="">Eliminar</a>
		</td>
	</tr>
	<tr>
		<td class="text-center">2</td>
		<td class="text-center">Puesta a Tierra</td>
		<td class="text-center">11</td>
		<td class="text-center">20</td>
		<td class="text-center">250</td>
		<td class="text-center">20%</td>
		<td class="text-center">
			<a class="btn btn-warning btn-sm" href="">Editar</a>
			<a class="btn btn-danger btn-sm" href="">Eliminar</a>
		</td>
	</tr>
</table>
</div>


<!-- Button trigger modal -->


<!-- Modal -->
<div class="modal fade" id="mimodaltema" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel"></h4>
      </div>
      <div class="modal-body">

		<!-- formulario -->
		<div class="container">
		<h1 style="text-align: center">Agregar Descuentos para el Curso</h1>
		<hr>
		<form class="form-horizontal form-control" style="width:400px;height:500px;margin:0 auto">
		Nombre del Curso:
		<br>
		<select class="form-control">
  			<option value="volvo">Puesta a Tierra</option>
  			<option value="saab">Sistema de Potencia</option>
		</select>
		<br>
		Cantidad Minima de Alumnos:
		<br>
		<input class="form-control" type="text" name="" id="primero" />
		<br>
		Cantidad Maxima de Alumnos:
		<br>
		<input class="form-control" type="text" name="" id="primero" />
		<br>
		Costo del Curso:
		<br>
		<input class="form-control" type="text" name="" id="primero" />
		<br>
		Porcentaje de Descuento:
		<br>
		<input class="form-control" type="text" name="" id="primero" />
		<br>
		<input class="btn btn-primary btn-lg" type="submit" name="" value="Guardar" />
		</form>
		</div>
		<!-- formulario -->

      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>

      </div>
    </div>
  </div>
</div>


</body>
</html>