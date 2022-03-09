##' QGIS Algorithm provided by SAGA Aspect-slope grid (saga:aspectslopegrid)
##'
##' @title QGIS algorithm Aspect-slope grid
##'
##' @param ASPECT `raster` - Aspect. Path to a raster layer.
##' @param SLOPE `raster` - Slope. Path to a raster layer.
##' @param ASPECT_SLOPE `rasterDestination` - Aspect-Slope. Path for new raster layer.
##' @param LUT `source` - Lookup Table. Path to a vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * ASPECT_SLOPE - outputRaster - Aspect-Slope
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_aspectslopegrid <- function(ASPECT = qgisprocess::qgis_default_value(), SLOPE = qgisprocess::qgis_default_value(), ASPECT_SLOPE = qgisprocess::qgis_default_value(), LUT = qgisprocess::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("saga:aspectslopegrid")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("saga:aspectslopegrid", `ASPECT` = ASPECT, `SLOPE` = SLOPE, `ASPECT_SLOPE` = ASPECT_SLOPE, `LUT` = LUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("saga:aspectslopegrid", `ASPECT` = ASPECT, `SLOPE` = SLOPE, `ASPECT_SLOPE` = ASPECT_SLOPE, `LUT` = LUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "ASPECT_SLOPE")
  }
}