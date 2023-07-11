##' QGIS Algorithm provided by SAGA Next Gen Cell balance (sagang:cellbalance). ---------------- Arguments ----------------  DEM: Elevation 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer WEIGHTS: Weights (optional) 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer WEIGHTS_DEFAULT: Default 	Default value:	1 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression BALANCE: Cell Balance 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer METHOD: Method 	Default value:	1 	Argument type:	enum 	Available values: 		- 0: (0) Deterministic 8 		- 1: (1) Multiple Flow Direction 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3'
##'
##' @title QGIS algorithm - Cell balance
##'
##' @param DEM `raster` - Elevation. Path to a raster layer.
##' @param WEIGHTS `raster` - Weights. Path to a raster layer.
##' @param WEIGHTS_DEFAULT `number` - Default. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param BALANCE `rasterDestination` - Cell Balance. Path for new raster layer.
##' @param METHOD `enum`  of `("(0) Deterministic 8", "(1) Multiple Flow Direction")` - Method. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * BALANCE - outputRaster - Cell Balance
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_cellbalance <- function(DEM = qgisprocess:::qgis_default_value(), WEIGHTS = qgisprocess:::qgis_default_value(), WEIGHTS_DEFAULT = qgisprocess:::qgis_default_value(), BALANCE = qgisprocess:::qgis_default_value(), METHOD = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:cellbalance")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:cellbalance", `DEM` = DEM, `WEIGHTS` = WEIGHTS, `WEIGHTS_DEFAULT` = WEIGHTS_DEFAULT, `BALANCE` = BALANCE, `METHOD` = METHOD,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:cellbalance", `DEM` = DEM, `WEIGHTS` = WEIGHTS, `WEIGHTS_DEFAULT` = WEIGHTS_DEFAULT, `BALANCE` = BALANCE, `METHOD` = METHOD,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "BALANCE")
  }
}