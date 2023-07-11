##' QGIS Algorithm provided by SAGA Next Gen Fill sinks xxl (wang & liu) (sagang:fillsinksxxlwangliu). ---------------- Arguments ----------------  ELEV: DEM 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer FILLED: Filled DEM 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer MINSLOPE: Minimum Slope (Degree) 	Default value:	0.1 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Fill sinks xxl (wang & liu)
##'
##' @param ELEV `raster` - DEM. Path to a raster layer.
##' @param FILLED `rasterDestination` - Filled DEM. Path for new raster layer.
##' @param MINSLOPE `number` - Minimum Slope (Degree). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
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
##' @importFrom qgisprocess qgis_run_algorithm

sagang_fillsinksxxlwangliu <- function(ELEV = qgisprocess:::qgis_default_value(), FILLED = qgisprocess:::qgis_default_value(), MINSLOPE = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:fillsinksxxlwangliu")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:fillsinksxxlwangliu", `ELEV` = ELEV, `FILLED` = FILLED, `MINSLOPE` = MINSLOPE,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:fillsinksxxlwangliu", `ELEV` = ELEV, `FILLED` = FILLED, `MINSLOPE` = MINSLOPE,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "FILLED")
  }
}