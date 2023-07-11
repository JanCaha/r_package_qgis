##' QGIS Algorithm provided by SAGA Next Gen Flow accumulation (parallelizable) (sagang:flowaccumulationparallelizable). ---------------- Arguments ----------------  DEM: Elevation 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer FLOW: Flow Accumulation 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer UPDATE: Update Frequency 	Default value:	0 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression METHOD: Method 	Default value:	2 	Argument type:	enum 	Available values: 		- 0: (0) D8 		- 1: (1) Dinfinity 		- 2: (2) MFD 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' CONVERGENCE: Convergence 	Default value:	1.1 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Flow accumulation (parallelizable)
##'
##' @param DEM `raster` - Elevation. Path to a raster layer.
##' @param FLOW `rasterDestination` - Flow Accumulation. Path for new raster layer.
##' @param UPDATE `number` - Update Frequency. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param METHOD `enum`  of `("(0) D8", "(1) Dinfinity", "(2) MFD")` - Method. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param CONVERGENCE `number` - Convergence. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * FLOW - outputRaster - Flow Accumulation
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_flowaccumulationparallelizable <- function(DEM = qgisprocess:::qgis_default_value(), FLOW = qgisprocess:::qgis_default_value(), UPDATE = qgisprocess:::qgis_default_value(), METHOD = qgisprocess:::qgis_default_value(), CONVERGENCE = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:flowaccumulationparallelizable")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:flowaccumulationparallelizable", `DEM` = DEM, `FLOW` = FLOW, `UPDATE` = UPDATE, `METHOD` = METHOD, `CONVERGENCE` = CONVERGENCE,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:flowaccumulationparallelizable", `DEM` = DEM, `FLOW` = FLOW, `UPDATE` = UPDATE, `METHOD` = METHOD, `CONVERGENCE` = CONVERGENCE,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "FLOW")
  }
}