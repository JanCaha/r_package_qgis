##' QGIS Algorithm provided by GDAL Terrain Ruggedness Index (TRI) (gdal:triterrainruggednessindex)
##'
##' @title QGIS algorithm Terrain Ruggedness Index (TRI)
##'
##' @param INPUT `raster` - Input layer. Path to a raster layer.
##' @param BAND `band` - Band number. Integer value representing an existing raster band number.
##' @param COMPUTE_EDGES `boolean` - Compute edges. 1 for true/yes. 0 for false/no.
##' @param OPTIONS `string` - Additional creation options. String value.
##' @param OUTPUT `rasterDestination` - Terrain Ruggedness Index. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputRaster - Terrain Ruggedness Index
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

gdal_triterrainruggednessindex <- function(INPUT = qgisprocess::qgis_default_value(), BAND = qgisprocess::qgis_default_value(), COMPUTE_EDGES = qgisprocess::qgis_default_value(), OPTIONS = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("gdal:triterrainruggednessindex")

  output <- qgisprocess::qgis_run_algorithm("gdal:triterrainruggednessindex", `INPUT` = INPUT, `BAND` = BAND, `COMPUTE_EDGES` = COMPUTE_EDGES, `OPTIONS` = OPTIONS, `OUTPUT` = OUTPUT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}