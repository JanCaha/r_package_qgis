##' QGIS Algorithm provided by SAGA Next Gen Rao's q diversity index (sagang:raosqdiversityindex). ---------------- Arguments ----------------  VALUES: Values 	Argument type:	multilayer NORMALIZE: Normalize 	Default value:	false 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression INDEX: Rao's Q 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer DISTANCE: Distance 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) Euclidian 		- 1: (1) Manhatten 		- 2: (2) Canberra 		- 3: (3) Minkowski 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' LAMBDA: Lambda 	Default value:	1 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression KERNEL_TYPE: Kernel Type 	Default value:	1 	Argument type:	enum 	Available values: 		- 0: (0) Square 		- 1: (1) Circle 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' KERNEL_RADIUS: Radius 	Default value:	2 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Rao's q diversity index
##'
##' @param VALUES `multilayer` - Values. .
##' @param NORMALIZE `boolean` - Normalize. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param INDEX `rasterDestination` - Rao's Q. Path for new raster layer.
##' @param DISTANCE `enum`  of `("(0) Euclidian", "(1) Manhatten", "(2) Canberra", "(3) Minkowski")` - Distance. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param LAMBDA `number` - Lambda. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param KERNEL_TYPE `enum`  of `("(0) Square", "(1) Circle")` - Kernel Type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param KERNEL_RADIUS `number` - Radius. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * INDEX - outputRaster - Rao's Q
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_raosqdiversityindex <- function(VALUES = qgisprocess:::qgis_default_value(), NORMALIZE = qgisprocess:::qgis_default_value(), INDEX = qgisprocess:::qgis_default_value(), DISTANCE = qgisprocess:::qgis_default_value(), LAMBDA = qgisprocess:::qgis_default_value(), KERNEL_TYPE = qgisprocess:::qgis_default_value(), KERNEL_RADIUS = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:raosqdiversityindex")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:raosqdiversityindex", `VALUES` = VALUES, `NORMALIZE` = NORMALIZE, `INDEX` = INDEX, `DISTANCE` = DISTANCE, `LAMBDA` = LAMBDA, `KERNEL_TYPE` = KERNEL_TYPE, `KERNEL_RADIUS` = KERNEL_RADIUS,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:raosqdiversityindex", `VALUES` = VALUES, `NORMALIZE` = NORMALIZE, `INDEX` = INDEX, `DISTANCE` = DISTANCE, `LAMBDA` = LAMBDA, `KERNEL_TYPE` = KERNEL_TYPE, `KERNEL_RADIUS` = KERNEL_RADIUS,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "INDEX")
  }
}