<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class AsesoriaLab extends Model
{
   // protected $primaryKey = 'ASESORIA_Codigo';

   protected $table = 'asesoria';

   protected $fillable = ['ASESORIA_Nombre','ASESORIA','ASESORIA_Descripcion'];

   public $timestamps = false;
}
