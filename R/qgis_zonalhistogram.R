##' QGIS Algorithm provided by QGIS (native c++) Zonal histogram (native:zonalhistogram)
##'
##' @title QGIS algorithm Zonal histogram
##'
##' @param INPUT_RASTER `raster` - Raster layer. Path to a raster layer.
##' @param RASTER_BAND `band` - Band number. Integer value representing an existing raster band number.
##' @param INPUT_VECTOR `source` - Vector layer containing zones. Path to a vector layer.
##' @param COLUMN_PREFIX `string` - Output column prefix. String value.
##' @param OUTPUT `sink` - Output zones. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Output zones
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_zonalhistogram <- function(INPUT_RASTER = qgisprocess::qgis_default_value(), RASTER_BAND = qgisprocess::qgis_default_value(), INPUT_VECTOR = qgisprocess::qgis_default_value(), COLUMN_PREFIX = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("native:zonalhistogram",`INPUT_RASTER` = INPUT_RASTER, `RASTER_BAND` = RASTER_BAND, `INPUT_VECTOR` = INPUT_VECTOR, `COLUMN_PREFIX` = COLUMN_PREFIX, `OUTPUT` = OUTPUT,...)
  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
}
}