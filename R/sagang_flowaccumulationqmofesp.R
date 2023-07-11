##' QGIS Algorithm provided by SAGA Next Gen Flow accumulation (qm of esp) (sagang:flowaccumulationqmofesp). ---------------- Arguments ----------------  DEM: DEM 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer FLOW: Contributing Area 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer PREPROC: Preprocessing 	Default value:	1 	Argument type:	enum 	Available values: 		- 0: (0) none 		- 1: (1) fill sinks temporarily 		- 2: (2) fill sinks permanently 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' DZFILL: Fill Increment 	Default value:	0.01 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Flow accumulation (qm of esp)
##'
##' @param DEM `raster` - DEM. Path to a raster layer.
##' @param FLOW `rasterDestination` - Contributing Area. Path for new raster layer.
##' @param PREPROC `enum`  of `("(0) none", "(1) fill sinks temporarily", "(2) fill sinks permanently")` - Preprocessing. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param DZFILL `number` - Fill Increment. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * FLOW - outputRaster - Contributing Area
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_flowaccumulationqmofesp <- function(DEM = qgisprocess:::qgis_default_value(), FLOW = qgisprocess:::qgis_default_value(), PREPROC = qgisprocess:::qgis_default_value(), DZFILL = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:flowaccumulationqmofesp")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:flowaccumulationqmofesp", `DEM` = DEM, `FLOW` = FLOW, `PREPROC` = PREPROC, `DZFILL` = DZFILL,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:flowaccumulationqmofesp", `DEM` = DEM, `FLOW` = FLOW, `PREPROC` = PREPROC, `DZFILL` = DZFILL,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "FLOW")
  }
}