##' QGIS Algorithm provided by SAGA Next Gen Raster volume (sagang:rastervolume). ---------------- Arguments ----------------  GRID: Grid 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer METHOD: Method 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) Count Only Above Base Level 		- 1: (1) Count Only Below Base Level 		- 2: (2) Subtract Volumes Below Base Level 		- 3: (3) Add Volumes Below Base Level 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' LEVEL: Base Level 	Default value:	0 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Raster volume
##'
##' @param GRID `raster` - Grid. Path to a raster layer.
##' @param METHOD `enum`  of `("(0) Count Only Above Base Level", "(1) Count Only Below Base Level", "(2) Subtract Volumes Below Base Level", "(3) Add Volumes Below Base Level")` - Method. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param LEVEL `number` - Base Level. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' No output description provided.
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_rastervolume <- function(GRID = qgisprocess:::qgis_default_value(), METHOD = qgisprocess:::qgis_default_value(), LEVEL = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:rastervolume")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:rastervolume", `GRID` = GRID, `METHOD` = METHOD, `LEVEL` = LEVEL,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:rastervolume", `GRID` = GRID, `METHOD` = METHOD, `LEVEL` = LEVEL,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "NA")
  }
}