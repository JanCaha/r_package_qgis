##' QGIS Algorithm provided by SAGA Radius of variance (raster) (saga:radiusofvarianceraster)
##'
##' @title QGIS algorithm Radius of variance (raster)
##'
##' @param INPUT `raster` - Grid. Path to a raster layer.
##' @param VARIANCE `number` - Standard Deviation. A numeric value.
##' @param RADIUS `number` - Maximum Search Radius (cells). A numeric value.
##' @param OUTPUT `enum`  of `("[0] Cells", "[1] Map Units")` - Type of Output. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param RESULT `rasterDestination` - Variance Radius. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * RESULT - outputRaster - Variance Radius
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

saga_radiusofvarianceraster <- function(INPUT = qgisprocess:::qgis_default_value(), VARIANCE = qgisprocess:::qgis_default_value(), RADIUS = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(), RESULT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("saga:radiusofvarianceraster")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("saga:radiusofvarianceraster", `INPUT` = INPUT, `VARIANCE` = VARIANCE, `RADIUS` = RADIUS, `OUTPUT` = OUTPUT, `RESULT` = RESULT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("saga:radiusofvarianceraster", `INPUT` = INPUT, `VARIANCE` = VARIANCE, `RADIUS` = RADIUS, `OUTPUT` = OUTPUT, `RESULT` = RESULT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "RESULT")
  }
}