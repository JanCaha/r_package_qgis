##' QGIS Algorithm provided by SAGA Riverbasin (saga:riverbasin)
##'
##' @title QGIS algorithm Riverbasin
##'
##' @param INPUT `raster` - DTM. Path to a raster layer.
##' @param INPUT2 `raster` - HGGrid. Path to a raster layer.
##' @param INPUT3 `raster` - statisches Entnahmeraster. Path to a raster layer.
##' @param WCons `boolean` - Anteilige Flaechenwasserentnahme. 1 for true/yes. 0 for false/no.
##' @param WCons2 `enum`  of `("[0] ...anteilig aus den Flussrasterzellen", "[1] ...anteilig aus Rasterzellen der Teileinzugegebiete")` - Dynamische Flaechenwassernutzung.... Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param OUTPUT2 `rasterDestination` - Grad. Path for new raster layer.
##' @param OUTPUT3 `rasterDestination` - Direc. Path for new raster layer.
##' @param OUTPUT4 `rasterDestination` - HGGrad. Path for new raster layer.
##' @param OUTPUT5 `rasterDestination` - RivSpeed. Path for new raster layer.
##' @param OUTPUT6 `rasterDestination` - Coordinates. Path for new raster layer.
##' @param OUTPUT7 `rasterDestination` - BasinShare. Path for new raster layer.
##' @param OUTPUT8 `rasterDestination` - statWUse. Path for new raster layer.
##' @param OUTPUT9 `rasterDestination` - NumInFlowCells. Path for new raster layer.
##' @param pCr `number` - Hauptgerinne-Parameter pHG. A numeric value.
##' @param nCr `number` - Hauptgerinne-Speicherkaskade nHG. A numeric value.
##' @param EnfVmax `boolean` - Maximal Geschwindigkeit des Hauptgerinnes beruecksichtigen. 1 for true/yes. 0 for false/no.
##' @param VTresh `number` - Maximalgeschwindigkeit im Hauptgerinne in km/h. A numeric value.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT2 - outputRaster - Grad
##' * OUTPUT3 - outputRaster - Direc
##' * OUTPUT4 - outputRaster - HGGrad
##' * OUTPUT5 - outputRaster - RivSpeed
##' * OUTPUT6 - outputRaster - Coordinates
##' * OUTPUT7 - outputRaster - BasinShare
##' * OUTPUT8 - outputRaster - statWUse
##' * OUTPUT9 - outputRaster - NumInFlowCells
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_riverbasin <- function(INPUT = qgisprocess::qgis_default_value(), INPUT2 = qgisprocess::qgis_default_value(), INPUT3 = qgisprocess::qgis_default_value(), WCons = qgisprocess::qgis_default_value(), WCons2 = qgisprocess::qgis_default_value(), OUTPUT2 = qgisprocess::qgis_default_value(), OUTPUT3 = qgisprocess::qgis_default_value(), OUTPUT4 = qgisprocess::qgis_default_value(), OUTPUT5 = qgisprocess::qgis_default_value(), OUTPUT6 = qgisprocess::qgis_default_value(), OUTPUT7 = qgisprocess::qgis_default_value(), OUTPUT8 = qgisprocess::qgis_default_value(), OUTPUT9 = qgisprocess::qgis_default_value(), pCr = qgisprocess::qgis_default_value(), nCr = qgisprocess::qgis_default_value(), EnfVmax = qgisprocess::qgis_default_value(), VTresh = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_QGIS_versions()
  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("saga:riverbasin")
  output <- qgisprocess::qgis_run_algorithm("saga:riverbasin",`INPUT` = INPUT, `INPUT2` = INPUT2, `INPUT3` = INPUT3, `WCons` = WCons, `WCons2` = WCons2, `OUTPUT2` = OUTPUT2, `OUTPUT3` = OUTPUT3, `OUTPUT4` = OUTPUT4, `OUTPUT5` = OUTPUT5, `OUTPUT6` = OUTPUT6, `OUTPUT7` = OUTPUT7, `OUTPUT8` = OUTPUT8, `OUTPUT9` = OUTPUT9, `pCr` = pCr, `nCr` = nCr, `EnfVmax` = EnfVmax, `VTresh` = VTresh,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT2")
  }
}