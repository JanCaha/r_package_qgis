##' QGIS Algorithm provided by SAGA Next Gen Surface, gradient and concentration (sagang:surfacegradientandconcentration). ---------------- Arguments ----------------  MASK: Mask 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer SURF: Surface 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer GRAD: Gradient 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer CONC: Concentration 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer SURF_E: Surface Approximation Threshold 	Default value:	0.001 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression CONC_IN: Inlet Concentration 	Default value:	5 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression CONC_OUT: Outlet Concentration 	Default value:	3 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression CONC_E: Concentration Approximation Threshold 	Default value:	0.001 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression GRAD_MIN: Minimum Gradient 	Default value:	0 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression NEIGHBOURS: Neighbourhood 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) Moore (8) 		- 1: (1) Neumann (4) 		- 2: (2) Optimised 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3'
##'
##' @title QGIS algorithm - Surface, gradient and concentration
##'
##' @param MASK `raster` - Mask. Path to a raster layer.
##' @param SURF `rasterDestination` - Surface. Path for new raster layer.
##' @param GRAD `rasterDestination` - Gradient. Path for new raster layer.
##' @param CONC `rasterDestination` - Concentration. Path for new raster layer.
##' @param SURF_E `number` - Surface Approximation Threshold. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param CONC_IN `number` - Inlet Concentration. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param CONC_OUT `number` - Outlet Concentration. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param CONC_E `number` - Concentration Approximation Threshold. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param GRAD_MIN `number` - Minimum Gradient. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param NEIGHBOURS `enum`  of `("(0) Moore (8)", "(1) Neumann (4)", "(2) Optimised")` - Neighbourhood. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * CONC - outputRaster - Concentration
##' * GRAD - outputRaster - Gradient
##' * SURF - outputRaster - Surface
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_surfacegradientandconcentration <- function(MASK = qgisprocess:::qgis_default_value(), SURF = qgisprocess:::qgis_default_value(), GRAD = qgisprocess:::qgis_default_value(), CONC = qgisprocess:::qgis_default_value(), SURF_E = qgisprocess:::qgis_default_value(), CONC_IN = qgisprocess:::qgis_default_value(), CONC_OUT = qgisprocess:::qgis_default_value(), CONC_E = qgisprocess:::qgis_default_value(), GRAD_MIN = qgisprocess:::qgis_default_value(), NEIGHBOURS = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:surfacegradientandconcentration")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:surfacegradientandconcentration", `MASK` = MASK, `SURF` = SURF, `GRAD` = GRAD, `CONC` = CONC, `SURF_E` = SURF_E, `CONC_IN` = CONC_IN, `CONC_OUT` = CONC_OUT, `CONC_E` = CONC_E, `GRAD_MIN` = GRAD_MIN, `NEIGHBOURS` = NEIGHBOURS,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:surfacegradientandconcentration", `MASK` = MASK, `SURF` = SURF, `GRAD` = GRAD, `CONC` = CONC, `SURF_E` = SURF_E, `CONC_IN` = CONC_IN, `CONC_OUT` = CONC_OUT, `CONC_E` = CONC_E, `GRAD_MIN` = GRAD_MIN, `NEIGHBOURS` = NEIGHBOURS,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "CONC")
  }
}