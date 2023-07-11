##' QGIS Algorithm provided by SAGA Next Gen Resampling filter (sagang:resamplingfilter). ---------------- Arguments ----------------  GRID: Grid 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer LOPASS: Low Pass Filter 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer HIPASS: High Pass Filter 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer SCALE: Scale Factor 	Default value:	10 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Resampling filter
##'
##' @param GRID `raster` - Grid. Path to a raster layer.
##' @param LOPASS `rasterDestination` - Low Pass Filter. Path for new raster layer.
##' @param HIPASS `rasterDestination` - High Pass Filter. Path for new raster layer.
##' @param SCALE `number` - Scale Factor. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * HIPASS - outputRaster - High Pass Filter
##' * LOPASS - outputRaster - Low Pass Filter
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_resamplingfilter <- function(GRID = qgisprocess:::qgis_default_value(), LOPASS = qgisprocess:::qgis_default_value(), HIPASS = qgisprocess:::qgis_default_value(), SCALE = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:resamplingfilter")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:resamplingfilter", `GRID` = GRID, `LOPASS` = LOPASS, `HIPASS` = HIPASS, `SCALE` = SCALE,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:resamplingfilter", `GRID` = GRID, `LOPASS` = LOPASS, `HIPASS` = HIPASS, `SCALE` = SCALE,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "HIPASS")
  }
}