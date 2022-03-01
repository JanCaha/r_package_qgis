##' QGIS Algorithm provided by SAGA Downslope distance gradient (saga:downslopedistancegradient)
##'
##' @title QGIS algorithm Downslope distance gradient
##'
##' @param DEM `raster` - Elevation. Path to a raster layer.
##' @param DISTANCE `number` - Vertical Distance. A numeric value.
##' @param OUTPUT `enum`  of `("[0] distance", "[1] gradient (tangens)", "[2] gradient (degree)")` - Output. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param GRADIENT `rasterDestination` - Gradient. Path for new raster layer.
##' @param DIFFERENCE `rasterDestination` - Gradient Difference. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * DIFFERENCE - outputRaster - Gradient Difference
##' * GRADIENT - outputRaster - Gradient
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_downslopedistancegradient <- function(DEM = qgisprocess::qgis_default_value(), DISTANCE = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(), GRADIENT = qgisprocess::qgis_default_value(), DIFFERENCE = qgisprocess::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("saga:downslopedistancegradient")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("saga:downslopedistancegradient", `DEM` = DEM, `DISTANCE` = DISTANCE, `OUTPUT` = OUTPUT, `GRADIENT` = GRADIENT, `DIFFERENCE` = DIFFERENCE,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("saga:downslopedistancegradient", `DEM` = DEM, `DISTANCE` = DISTANCE, `OUTPUT` = OUTPUT, `GRADIENT` = GRADIENT, `DIFFERENCE` = DIFFERENCE,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "DIFFERENCE")
  }
}