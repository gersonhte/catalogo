<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Cotizacion extends Model
{
    protected $primaryKey = 'COTIP_Codigo';
    
    protected $table = 'cotizacion';
    
    protected $fillable = ['SOLIC_Nombre', 'SOLIC_Ruc', 'SOLIC_Direccion', 'SOLIC_Telefono', 'SOLIC_Email','SOLIC_FlagEstado','TIPSOLIP_Codigo','UBIGP_Codigo'];

    public $timestamps = false;
}
