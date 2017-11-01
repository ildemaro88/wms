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
Route::get('admin/planificacion/planificador','AdminPlanificacionController@redirectPlanificar');
Route::get('admin/planificacion/asignar-viaje-despacho','AdminPlanificacionController@redirectAsignarViajeDespacho');
Route::get('admin/planificacion/duplicar-factura','AdminPlanificacionController@redirectDuplicarFactura');
//** END PLANIFICACIÓN **//

//** START INGRESOS **//
Route::get('admin/ingresos/reabrir-ingreso','AdminIngresosController@redirectReabrirIngreso');
Route::get('admin/ingresos/crear-ingreso','AdminIngresosController@redirectCrearIngreso');
Route::get('admin/ingresos/match-ingreso-dia','AdminIngresosController@redirectMatchIngresosDia');
Route::get('admin/ingresos/match-ingreso-dia-consolidado','AdminIngresosController@redirectMatchIngresosDiaConsolidado');
//** END INGRESOS **//

//** START DESPACHOS **//
Route::get('admin/despachos/reporte','AdminDespachosController@redirectReporteDespachos');
Route::get('admin/despachos/reporte/productos-facturados-no-despachados','AdminDespachosController@redirectReporteProductosFacturadosNoDespachados');
Route::get('admin/despachos/documentos-digitalizados','AdminDespachosController@redirectDocumentosDigitalizados');
Route::get('admin/despachos/seguimiento','AdminDespachosController@redirectSeguimientoDespachos');
//** END DESPACHOS **//

//** START INVENTARIO **//
Route::get('admin/inventario/match-stock-mba-wms','AdminInventarioController@redirectMatchStockMbaWms');
Route::get('admin/inventario/eliminar-lectura-inventario','AdminInventarioController@redirectEliminarLecturaInventario');
Route::get('admin/inventario/descargar-stock-wms','AdminInventarioController@redirectDescargarStockWms');
Route::get('admin/inventario/descargar-stock-wms-consolidado','AdminInventarioController@redirectDescargarStockWmsConsolidado');
Route::get('admin/inventario/analisis-stock','AdminInventarioController@redirectAnalisisStock');
Route::get('admin/inventario/productos-bloqueados','AdminInventarioController@redirectProductosBloqueados');
Route::get('admin/inventario/ubicaciones-disponibles','AdminInventarioController@redirectUbicacionesDisponibles');
Route::get('admin/inventario/reporte-prod-caducar','AdminInventarioController@redirectReporteProdCaducar');
Route::get('admin/inventario/inventario-por-ubicacion','AdminInventarioController@redirectInventarioUbicacion');
Route::get('admin/inventario/consulta-stock-por-ubicacion','AdminInventarioController@consultaStockUbicacion');
Route::get('admin/inventario/consulta-stock-por-material','AdminInventarioController@redirectConsultaStockMaterial');
//** END INVENTARIO **//

//** START RETORNOS **//
Route::get('admin/users/s','AdminRetornosController@redirectMalEstadoInterno');
Route::get('admin/retornos/devoluciones','AdminRetornosController@redirectDevoluciones');
Route::get('admin/retornos/rechazos','AdminRetornosController@redirectRechazos');
//** END RETORNOS **//

//** START TRANSACCIONES **//
Route::get('admin/transacciones/consultar-liquidacion','AdminTransaccionesController@redirectConsultarLiquidacion');
Route::get('admin/transacciones/buscar-transacciones','AdminTransaccionesController@redirectBuscarTransacciones');
//** END TRANSACCIONES **//redirectTracking

//** START TRANSACCIONES **//
Route::get('admin/traking','AdminTrackingController@redirectTracking');
//** END TRANSACCIONES **//