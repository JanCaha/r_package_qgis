##' QGIS Algorithm provided by SAGA Next Gen Raster skeletonization (sagang:rasterskeletonization). ---------------- Arguments ----------------  INPUT: Grid 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer RESULT: Skeleton 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer VECTOR: Skeleton 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer METHOD: Method 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) Standard 		- 1: (1) Hilditch's Algorithm 		- 2: (2) Channel Skeleton 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' INIT_METHOD: Initialisation 	Default value:	1 	Argument type:	enum 	Available values: 		- 0: (0) Less than 		- 1: (1) Greater than 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' INIT_THRESHOLD: Threshold (Init.) 	Default value:	0 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression CONVERGENCE: Convergence 	Default value:	3 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Raster skeletonization
##'
##' @param INPUT `raster` - Grid. Path to a raster layer.
##' @param RESULT `rasterDestination` - Skeleton. Path for new raster layer.
##' @param VECTOR `vectorDestination` - Skeleton. Path for new vector layer.
##' @param METHOD `enum`  of `("(0) Standard", "(1) Hilditch's Algorithm", "(2) Channel Skeleton")` - Method. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param INIT_METHOD `enum`  of `("(0) Less than", "(1) Greater than")` - Initialisation. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param INIT_THRESHOLD `number` - Threshold (Init.). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param CONVERGENCE `number` - Convergence. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * RESULT - outputRaster - Skeleton
##' * VECTOR - outputVector - Skeleton
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_rasterskeletonization <- function(INPUT = qgisprocess:::qgis_default_value(), RESULT = qgisprocess:::qgis_default_value(), VECTOR = qgisprocess:::qgis_default_value(), METHOD = qgisprocess:::qgis_default_value(), INIT_METHOD = qgisprocess:::qgis_default_value(), INIT_THRESHOLD = qgisprocess:::qgis_default_value(), CONVERGENCE = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:rasterskeletonization")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:rasterskeletonization", `INPUT` = INPUT, `RESULT` = RESULT, `VECTOR` = VECTOR, `METHOD` = METHOD, `INIT_METHOD` = INIT_METHOD, `INIT_THRESHOLD` = INIT_THRESHOLD, `CONVERGENCE` = CONVERGENCE,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:rasterskeletonization", `INPUT` = INPUT, `RESULT` = RESULT, `VECTOR` = VECTOR, `METHOD` = METHOD, `INIT_METHOD` = INIT_METHOD, `INIT_THRESHOLD` = INIT_THRESHOLD, `CONVERGENCE` = CONVERGENCE,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "RESULT")
  }
}