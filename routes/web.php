<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

//** START PLANIFICACIÓN **//
Route::get('planificacion/planificador','AdminPlanificacionController@redirectPlanificar');
Route::get('planificacion/asignar-viaje-despacho','AdminPlanificacionController@redirectAsignarViajeDespacho');
Route::get('planificacion/duplicar-factura','AdminPlanificacionController@redirectDuplicarFactura');
//** END PLANIFICACIÓN **//

//** START INGRESOS **//
Route::get('ingresos/reabrir-ingreso','AdminIngresosController@redirectReabrirIngreso');
Route::get('ingresos/crear-ingreso','AdminIngresosController@redirectCrearIngreso');
Route::get('ingresos/match-ingreso-dia','AdminIngresosController@redirectMatchIngresosDia');
Route::get('ingresos/match-ingreso-dia-consolidado','AdminIngresosController@redirectMatchIngresosDiaConsolidado');
//** END INGRESOS **//

//** START DESPACHOS **//
Route::get('despachos/reporte','AdminDespachosController@redirectReporteDespachos');
Route::get('despachos/reporte/productos-facturados-no-despachados','AdminDespachosController@redirectReporteProductosFacturadosNoDespachados');
Route::get('despachos/documentos-digitalizados','AdminDespachosController@redirectDocumentosDigitalizados');
Route::get('despachos/seguimiento','AdminDespachosController@redirectSeguimientoDespachos');
//** END DESPACHOS **//

//** START INVENTARIO **//
Route::get('inventario/match-stock-mba-wms','AdminInventarioController@redirectMatchStockMbaWms');
Route::get('inventario/eliminar-lectura-inventario','AdminInventarioController@redirectEliminarLecturaInventario');
Route::get('inventario/descargar-stock-wms','AdminInventarioController@redirectDescargarStockWms');
Route::get('inventario/descargar-stock-wms-consolidado','AdminInventarioController@redirectDescargarStockWmsConsolidado');
Route::get('inventario/analisis-stock','AdminInventarioController@redirectAnalisisStock');
Route::get('inventario/productos-bloqueados','AdminInventarioController@redirectProductosBloqueados');
Route::get('inventario/ubicaciones-disponibles','AdminInventarioController@redirectUbicacionesDisponibles');
Route::get('inventario/reporte-prod-caducar','AdminInventarioController@redirectReporteProdCaducar');
Route::get('inventario/inventario-por-ubicacion','AdminInventarioController@redirectInventarioUbicacion');
Route::get('inventario/consulta-stock-por-ubicacion','AdminInventarioController@consultaStockUbicacion');
Route::get('inventario/consulta-stock-por-material','AdminInventarioController@redirectConsultaStockMaterial');
//** END INVENTARIO **//

//** START RETORNOS **//
Route::get('retornos/mal-estado-interno','AdminRetornosController@redirectMalEstadoInterno');
Route::get('retornos/devoluciones','AdminRetornosController@redirectDevoluciones');
Route::get('retornos/rechazos','AdminRetornosController@redirectRechazos');
//** END RETORNOS **//

//** START TRANSACCIONES **//
Route::get('transacciones/consultar-liquidacion','AdminRedirectController@redirectConsultarLiquidacion');
Route::get('transacciones/buscar-transacciones','AdminRedirectController@redirectBuscarTransacciones');
//** END TRANSACCIONES **//redirectTracking

//** START TRANSACCIONES **//
Route::get('traking','AdminRedirectController@redirectTracking');
//** END TRANSACCIONES **//