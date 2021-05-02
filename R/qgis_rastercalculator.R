##' QGIS Algorithm provided by QGIS Raster calculator (qgis:rastercalculator)
##'
##' @title QGIS algorithm Raster calculator
##'
##' @param EXPRESSION `raster_calc_expression` - Expression. .
##' @param LAYERS `multilayer` - Reference layer(s) (used for automated extent, cellsize, and CRS). .
##' @param CELLSIZE `number` - Cell size (use 0 or empty to set it automatically). A numeric value.
##' @param EXTENT `extent` - Output extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param CRS `crs` - Output CRS. CRS as an auth ID (e.g. 'EPSG:3111'). CRS as a PROJ4 string (e.g. 'PROJ4:…'). CRS as a WKT string (e.g. 'WKT:…'). Path to a layer. The CRS of the layer is used..
##' @param OUTPUT `rasterDestination` - Output. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputRaster - Output
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_rastercalculator <- function(EXPRESSION = qgisprocess::qgis_default_value(), LAYERS = qgisprocess::qgis_default_value(), CELLSIZE = qgisprocess::qgis_default_value(), EXTENT = qgisprocess::qgis_default_value(), CRS = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("qgis:rastercalculator")
  output <- qgisprocess::qgis_run_algorithm("qgis:rastercalculator",`EXPRESSION` = EXPRESSION, `LAYERS` = LAYERS, `CELLSIZE` = CELLSIZE, `EXTENT` = EXTENT, `CRS` = CRS, `OUTPUT` = OUTPUT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}