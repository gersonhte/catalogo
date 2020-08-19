@extends('layouts.admin2')

@section('content')
<!--grid-->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Editar Horario del Curso</h1>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>
    <!---->
    <section class="content">
        <div class="grid-hor">

            {!!Form::model($horariocurso, ['route'=>['horario-curso.update', $horariocurso->id],'method'=>'PATCH', 'class'=>'col-sm-10'])!!}

                <div class="form-group">
                    {!!Form::label('nombre','Nombre del Curso')!!}
                    {!!Form::text('nombre', $horariocurso->nombre_curso,['class'=>'form-control','id'=>'nombre'])!!}
                </div>

                <div class="form-group">
                    {!!Form::label('fecha_inicial','Fecha de Inicio')!!}
                    {!!Form::text('fecha_inicial', $horariocurso->fecha_inicial,['class'=>'form-control','id'=>'fecha_inicial'])!!}
                </div>

                <div class="form-group">
                {!!Form::label('fecha_final','Fecha Final')!!}
                    {!!Form::text('fecha_final', $horariocurso->fecha_final,['class'=>'form-control','id'=>'fecha_final'])!!}
                </div>

                <div class="form-group">
                {!!Form::label('hora_in','Hora Inicial')!!}
                    {!!Form::text('hora_in', $horariocurso->hora_inicial,['class'=>'form-control','id'=>'hora_in'])!!}
                </div>

                <div class="form-group">
                {!!Form::label('hora_fi','Hora Final')!!}
                    {!!Form::text('hora_fi', $horariocurso->hora_final,['class'=>'form-control','id'=>'hora_fi'])!!}
                </div>

            {!!Form::submit('Editar',['class'=>'btn btn-success'])!!}
            <a class="btn btn-danger" href="{{ route('horario-curso.index') }}">Cancelar</a>

            {!!Form::close()!!}
        </div>
    </section>
</div>
@endsection