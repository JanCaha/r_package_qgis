##' QGIS Algorithm provided by SAGA Next Gen Histogram matching (sagang:histogrammatching). ---------------- Arguments ----------------  GRID: Grid 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer MATCHED: Adjusted Grid 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer REFERENCE: Reference Grid 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer METHOD: Method 	Default value:	1 	Argument type:	enum 	Available values: 		- 0: (0) standard deviation 		- 1: (1) histogram 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' NCLASSES: Histogramm Classes 	Default value:	100 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression MAXSAMPLES: Maximum Sample Size 	Default value:	1e+06 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Histogram matching
##'
##' @param GRID `raster` - Grid. Path to a raster layer.
##' @param MATCHED `rasterDestination` - Adjusted Grid. Path for new raster layer.
##' @param REFERENCE `raster` - Reference Grid. Path to a raster layer.
##' @param METHOD `enum`  of `("(0) standard deviation", "(1) histogram")` - Method. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param NCLASSES `number` - Histogramm Classes. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param MAXSAMPLES `number` - Maximum Sample Size. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * MATCHED - outputRaster - Adjusted Grid
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_histogrammatching <- function(GRID = qgisprocess:::qgis_default_value(), MATCHED = qgisprocess:::qgis_default_value(), REFERENCE = qgisprocess:::qgis_default_value(), METHOD = qgisprocess:::qgis_default_value(), NCLASSES = qgisprocess:::qgis_default_value(), MAXSAMPLES = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:histogrammatching")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:histogrammatching", `GRID` = GRID, `MATCHED` = MATCHED, `REFERENCE` = REFERENCE, `METHOD` = METHOD, `NCLASSES` = NCLASSES, `MAXSAMPLES` = MAXSAMPLES,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:histogrammatching", `GRID` = GRID, `MATCHED` = MATCHED, `REFERENCE` = REFERENCE, `METHOD` = METHOD, `NCLASSES` = NCLASSES, `MAXSAMPLES` = MAXSAMPLES,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "MATCHED")
  }
}