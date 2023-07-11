##' QGIS Algorithm provided by SAGA Next Gen Close gaps with stepwise resampling (sagang:closegapswithstepwiseresampling). ---------------- Arguments ----------------  INPUT: Grid 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer MASK: Mask (optional) 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer RESULT: Result 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer RESAMPLING: Resampling 	Default value:	3 	Argument type:	enum 	Available values: 		- 0: (0) Nearest Neighbour 		- 1: (1) Bilinear Interpolation 		- 2: (2) Bicubic Spline Interpolation 		- 3: (3) B-Spline Interpolation 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' GROW: Grow Factor 	Default value:	2 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Close gaps with stepwise resampling
##'
##' @param INPUT `raster` - Grid. Path to a raster layer.
##' @param MASK `raster` - Mask. Path to a raster layer.
##' @param RESULT `rasterDestination` - Result. Path for new raster layer.
##' @param RESAMPLING `enum`  of `("(0) Nearest Neighbour", "(1) Bilinear Interpolation", "(2) Bicubic Spline Interpolation", "(3) B-Spline Interpolation")` - Resampling. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param GROW `number` - Grow Factor. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * RESULT - outputRaster - Result
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_closegapswithstepwiseresampling <- function(INPUT = qgisprocess:::qgis_default_value(), MASK = qgisprocess:::qgis_default_value(), RESULT = qgisprocess:::qgis_default_value(), RESAMPLING = qgisprocess:::qgis_default_value(), GROW = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:closegapswithstepwiseresampling")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:closegapswithstepwiseresampling", `INPUT` = INPUT, `MASK` = MASK, `RESULT` = RESULT, `RESAMPLING` = RESAMPLING, `GROW` = GROW,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:closegapswithstepwiseresampling", `INPUT` = INPUT, `MASK` = MASK, `RESULT` = RESULT, `RESAMPLING` = RESAMPLING, `GROW` = GROW,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "RESULT")
  }
}