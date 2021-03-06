<?php
namespace App\Http\Controllers\Admin;
use App\Http\Controllers\Controller;
use App\Cotizacion;
use App\Contacto;
use App\CotizacionDetalle;
use App\User;
use App\Solicitante;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Barryvdh\DomPDF\Facade as PDF;
use Redirect;

class CotizacionController extends Controller
{
    public function exportPdf()
    {
        $cotizaciones = Cotizacion::get();
        $cotizacion_detalle = CotizacionDetalle::get();
        $usuario = User::get();
        $solicitante = Solicitante::get();
        $pdf = PDF::loadView('pdf.cotizaciones', compact('cotizaciones'), compact('cotizacion_detalle'), compact('usuario'), compact('solicitante'));

        return $pdf->download('cotizaciones-list.pdf');
    }

    public function index()
    {

        /*if($request->user()->authorizeRoles(['admin'])){
            echo "hola";
        }*/

        $cotizaciones = Cotizacion::orderBy('COTIC_Numero')->get();

        return view('admin.cotizacion.index', compact('cotizaciones'));
    }

    public function list(){
        $cotizaciones = 
        Cotizacion::join('contacto','contacto.id_contacto','=','cotizacion.id_contacto')
                    ->join('solicitante','solicitante.SOLIP_Codigo','=','contacto.SOLIP_Codigo')
                    ->select()
                    ->get();    
        return $cotizaciones;
    }

    public function create()
    {
        $solicitantes = Solicitante::all();
        $usuarios     = User::all();
        $cotizacion   = new Cotizacion();
        return view("admin.cotizacion.create",compact('solicitantes','usuarios','cotizacion'));
    }

    public function store(Request $request)
    {
        //Grabamos la cabecera
        //$fecha = Carbon::createFromFormat('d/m/Y',$request->fecha)->format('Y-m-d');
        $objCotizacion = [
            'id_contacto'    => $request->contacto,
            'COTIC_Numero'   => $request->numero,
            'COTIC_Fecha'    => "2020-10-01",
            'USUA_Codigo'    => $request->usuario,
           /* 'COTIC_SubTotal' => $request->subtotal,
            'COTIC_Igv'      => $request->igv,
            'COTIC_Total'    => $request->total,
            'COTIC_Correo1'  => $request->correo1,
            'COTIC_Correo2'  => $request->correo2,
            'COTIC_Correo3'  => $request->correo3,
            'COTIC_Correo4'  => $request->correo4,*/
            'TIPOCOP_Codigo' => 1
        ];
        $cot = Cotizacion::create($objCotizacion);
        //Grabamos equipos
        if(isset($request->equipos)){
            if(count($request->equipos)>0){
                foreach($request->equipos as $item=>$value){
                    $equipo = CotizacionDetalle::create([
                        'COTIP_Codigo'         => $cot->COTIP_Codigo,
                        "CODEC_NombreEquipo"   => $value["CODEC_NombreEquipo"],
                        "CODEC_Descripcion"    => $value["CODEC_Descripcion"],
                        "CODEC_Fabricante"     => $value["CODEC_Fabricante"],
                        "CODEC_Cantidad"       => $value["CODEC_Cantidad"],
                        "CODEC_PrecioUnitario" => $value["CODEC_PrecioUnitario"],
                        "CODEC_SubTotal"       => $value["CODEC_Cantidad"]*$value["CODEC_PrecioUnitario"]
                    ]);
                    $pruebas = $value["pruebas"];
                    //Grabamos las pruebas
                    print_r($pruebas);
                    if(count($pruebas)>0){
                        foreach($pruebas as $value2){
                            print_r($value2);
                        }
                    }
                }
            }
        }
        //return Redirect::to("/cotizacion");
    }

    public function show($id)
    {
        //
    }

    public function edit($id)
    {
        $solicitantes = Solicitante::all();
        $usuarios     = User::all();
        $cotizacion = Cotizacion::findOrFail($id);
        return view("admin.cotizacion.edit",compact('cotizacion','solicitantes','usuarios'));
    }

    public function get($id){
        return Cotizacion::findOrFail($id);
    }

    public function update(Request $request, $id)
    {
        //Actualiza cabecera
        $cotizacion = Cotizacion::findOrFail($id);
        $cotizacion->COTIC_Fecha    = $request->fecha;
        $cotizacion->id_contacto    = $request->contacto;
        $cotizacion->USUA_Codigo    = $request->usuario;
        $cotizacion->COTIC_SubTotal = $request->subtotal;
        $cotizacion->COTIC_Igv      = $request->igv;
        $cotizacion->COTIC_Total    = $request->total;
        $cotizacion->save();
        //Actualiza detalle
        if(isset($request->nombre)){
            if(count($request->nombre)>0){
                foreach($request->nombre as $item => $value){
                    $codigodet = $request->codigodet[$item];
                    if(is_null($codigodet)){//Nuevo
                        CotizacionDetalle::create([
                            'COTIP_Codigo'         => $id,
                            "CODEC_NombreEquipo"   => $request->nombre[$item],
                            "CODEC_Descripcion"    => $request->descripcion[$item],
                            "CODEC_Fabricante"     => $request->fabricante[$item],
                            "CODEC_Cantidad"       => $request->cantidad[$item],
                            "CODEC_PrecioUnitario" => $request->unitario[$item],
                            "CODEC_SubTotal"       => $request->subtotaldet[$item]
                        ]);
                    }
                    else{//Editar
                        $cotizaciondet = CotizacionDetalle::findOrFail($codigodet);
                        $cotizaciondet->CODEC_NombreEquipo   = $request->nombre[$item];
                        $cotizaciondet->CODEC_Descripcion    = $request->descripcion[$item];
                        $cotizaciondet->CODEC_Fabricante     = $request->fabricante[$item];
                        $cotizaciondet->CODEC_Cantidad       = $request->cantidad[$item];
                        $cotizaciondet->CODEC_PrecioUnitario = $request->unitario[$item];
                        $cotizaciondet->CODEC_SubTotal       = $request->subtotaldet[$item];
                        $cotizaciondet->save();
                    }
                }
            }
        }
        return Redirect::to("/cotizacion");
    }

    public function destroy($id)
    {
        CotizacionDetalle::where('COTIP_Codigo',$id)->firstorfail()->delete();
        Cotizacion::destroy($id);
        return response()->json(['message'=>'Cotizacionntacto borrado']);        
    }
}
