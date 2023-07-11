##' QGIS Algorithm provided by SAGA Next Gen Regression analysis (points and predictor grid) (sagang:regressionanalysispointsandpredictorgrid). ---------------- Arguments ----------------  PREDICTOR: Predictor 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer POINTS: Points 	Argument type:	source 	Acceptable values: 		- Path to a vector layer ATTRIBUTE: Dependent Variable 	Argument type:	field 	Acceptable values: 		- The name of an existing field 		- ; delimited list of existing field names REGRESSION: Regression 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer RESIDUAL: Residuals 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer RESAMPLING: Resampling 	Default value:	3 	Argument type:	enum 	Available values: 		- 0: (0) Nearest Neighbour 		- 1: (1) Bilinear Interpolation 		- 2: (2) Bicubic Spline Interpolation 		- 3: (3) B-Spline Interpolation 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' METHOD: Regression Function 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) Y = a + b * X (linear) 		- 1: (1) Y = a + b / X 		- 2: (2) Y = a / (b - X) 		- 3: (3) Y = a * X^b (power) 		- 4: (4) Y = a e^(b * X) (exponential) 		- 5: (5) Y = a + b * ln(X) (logarithmic) 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3'
##'
##' @title QGIS algorithm - Regression analysis (points and predictor grid)
##'
##' @param PREDICTOR `raster` - Predictor. Path to a raster layer.
##' @param POINTS `source` - Points. Path to a vector layer.
##' @param ATTRIBUTE `field` - Dependent Variable. The name of an existing field. ; delimited list of existing field names.
##' @param REGRESSION `rasterDestination` - Regression. Path for new raster layer.
##' @param RESIDUAL `vectorDestination` - Residuals. Path for new vector layer.
##' @param RESAMPLING `enum`  of `("(0) Nearest Neighbour", "(1) Bilinear Interpolation", "(2) Bicubic Spline Interpolation", "(3) B-Spline Interpolation")` - Resampling. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param METHOD `enum`  of `("(0) Y = a + b * X (linear)", "(1) Y = a + b / X", "(2) Y = a / (b - X)", "(3) Y = a * X^b (power)", "(4) Y = a e^(b * X) (exponential)", "(5) Y = a + b * ln(X) (logarithmic)")` - Regression Function. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * REGRESSION - outputRaster - Regression
##' * RESIDUAL - outputVector - Residuals
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_regressionanalysispointsandpredictorgrid <- function(PREDICTOR = qgisprocess:::qgis_default_value(), POINTS = qgisprocess:::qgis_default_value(), ATTRIBUTE = qgisprocess:::qgis_default_value(), REGRESSION = qgisprocess:::qgis_default_value(), RESIDUAL = qgisprocess:::qgis_default_value(), RESAMPLING = qgisprocess:::qgis_default_value(), METHOD = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:regressionanalysispointsandpredictorgrid")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:regressionanalysispointsandpredictorgrid", `PREDICTOR` = PREDICTOR, `POINTS` = POINTS, `ATTRIBUTE` = ATTRIBUTE, `REGRESSION` = REGRESSION, `RESIDUAL` = RESIDUAL, `RESAMPLING` = RESAMPLING, `METHOD` = METHOD,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:regressionanalysispointsandpredictorgrid", `PREDICTOR` = PREDICTOR, `POINTS` = POINTS, `ATTRIBUTE` = ATTRIBUTE, `REGRESSION` = REGRESSION, `RESIDUAL` = RESIDUAL, `RESAMPLING` = RESAMPLING, `METHOD` = METHOD,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "REGRESSION")
  }
}