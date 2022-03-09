##' QGIS Algorithm provided by SAGA Fill sinks xxl (wang & liu) (saga:fillsinksxxlwangliu)
##'
##' @title QGIS algorithm Fill sinks xxl (wang & liu)
##'
##' @param ELEV `raster` - DEM. Path to a raster layer.
##' @param MINSLOPE `number` - Minimum Slope (Degree). A numeric value.
##' @param FILLED `rasterDestination` - Filled DEM. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * FILLED - outputRaster - Filled DEM
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_fillsinksxxlwangliu <- function(ELEV = qgisprocess::qgis_default_value(), MINSLOPE = qgisprocess::qgis_default_value(), FILLED = qgisprocess::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("saga:fillsinksxxlwangliu")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("saga:fillsinksxxlwangliu", `ELEV` = ELEV, `MINSLOPE` = MINSLOPE, `FILLED` = FILLED,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("saga:fillsinksxxlwangliu", `ELEV` = ELEV, `MINSLOPE` = MINSLOPE, `FILLED` = FILLED,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "FILLED")
  }
}