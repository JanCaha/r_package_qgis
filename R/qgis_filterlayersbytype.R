##' QGIS Algorithm provided by QGIS (native c++) Filter layers by type (native:filterlayersbytype)
##'
##' @title QGIS algorithm Filter layers by type
##'
##' @param INPUT `layer` - Input layer. Path to a vector, raster or mesh layer.
##' @param VECTOR `vectorDestination` - Vector features. Path for new vector layer.
##' @param RASTER `rasterDestination` - Raster layer. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * VECTOR - outputVector - Vector features
##' * RASTER - outputRaster - Raster layer
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_filterlayersbytype <- function(INPUT = qgisprocess::qgis_default_value(), VECTOR = qgisprocess::qgis_default_value(), RASTER = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("native:filterlayersbytype",`INPUT` = INPUT, `VECTOR` = VECTOR, `RASTER` = RASTER,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "VECTOR")
  }
}