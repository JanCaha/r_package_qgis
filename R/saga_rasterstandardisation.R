##' QGIS Algorithm provided by SAGA Raster standardisation (saga:rasterstandardisation)
##'
##' @title QGIS algorithm Raster standardisation
##'
##' @param INPUT `raster` - Grid. Path to a raster layer.
##' @param STRETCH `number` - Stretch Factor. A numeric value.
##' @param OUTPUT `rasterDestination` - Standardised Grid. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputRaster - Standardised Grid
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

saga_rasterstandardisation <- function(INPUT = qgisprocess:::qgis_default_value(), STRETCH = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("saga:rasterstandardisation")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("saga:rasterstandardisation", `INPUT` = INPUT, `STRETCH` = STRETCH, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("saga:rasterstandardisation", `INPUT` = INPUT, `STRETCH` = STRETCH, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}