##' QGIS Algorithm provided by QGIS (native c++) Zonal statistics (native:zonalstatistics)
##'
##' @title QGIS algorithm Zonal statistics
##'
##' @param INPUT_RASTER `raster` - Raster layer. Path to a raster layer.
##' @param RASTER_BAND `band` - Raster band. Integer value representing an existing raster band number.
##' @param INPUT_VECTOR `vector` - Vector layer containing zones. Path to a vector layer.
##' @param COLUMN_PREFIX `string` - Output column prefix. String value.
##' @param STATISTICS `enum`  of `("Count", "Sum", "Mean", "Median", "St dev", "Minimum", "Maximum", "Range", "Minority", "Majority", "Variety", "Variance")` - Statistics to calculate. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * INPUT_VECTOR - outputVector - Zonal statistics
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_zonalstatistics <- function(INPUT_RASTER = qgisprocess::qgis_default_value(), RASTER_BAND = qgisprocess::qgis_default_value(), INPUT_VECTOR = qgisprocess::qgis_default_value(), COLUMN_PREFIX = qgisprocess::qgis_default_value(), STATISTICS = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("native:zonalstatistics",`INPUT_RASTER` = INPUT_RASTER, `RASTER_BAND` = RASTER_BAND, `INPUT_VECTOR` = INPUT_VECTOR, `COLUMN_PREFIX` = COLUMN_PREFIX, `STATISTICS` = STATISTICS,...)
  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "INPUT_VECTOR")
}
}