##' QGIS Algorithm provided by QGIS (native c++) Filter layers by type (native:filterlayersbytype)
##'
##' @title QGIS algorithm Filter layers by type
##'
##' @param INPUT `layer` - Input layer. Path to a vector, raster or mesh layer.
##' @param VECTOR `vectorDestination` - Vector features. Path for new vector layer.
##' @param RASTER `rasterDestination` - Raster layer. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * RASTER - outputRaster - Raster layer
##' * VECTOR - outputVector - Vector features
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_filterlayersbytype <- function(INPUT = qgisprocess:::qgis_default_value(), VECTOR = qgisprocess:::qgis_default_value(), RASTER = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:filterlayersbytype")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:filterlayersbytype", `INPUT` = INPUT, `VECTOR` = VECTOR, `RASTER` = RASTER,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:filterlayersbytype", `INPUT` = INPUT, `VECTOR` = VECTOR, `RASTER` = RASTER,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "RASTER")
  }
}