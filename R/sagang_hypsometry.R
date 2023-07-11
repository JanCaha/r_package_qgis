##' QGIS Algorithm provided by SAGA Next Gen Hypsometry (sagang:hypsometry). ---------------- Arguments ----------------  ELEVATION: Elevation 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer TABLE: Hypsometry 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer COUNT: Number of Classes 	Default value:	100 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression SORTING: Sort 	Default value:	1 	Argument type:	enum 	Available values: 		- 0: (0) up 		- 1: (1) down 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' METHOD: Classification Constant 	Default value:	1 	Argument type:	enum 	Available values: 		- 0: (0) height 		- 1: (1) area 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' BZRANGE: Use Z-Range 	Default value:	false 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Hypsometry
##'
##' @param ELEVATION `raster` - Elevation. Path to a raster layer.
##' @param TABLE `vectorDestination` - Hypsometry. Path for new vector layer.
##' @param COUNT `number` - Number of Classes. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param SORTING `enum`  of `("(0) up", "(1) down")` - Sort. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param METHOD `enum`  of `("(0) height", "(1) area")` - Classification Constant. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param BZRANGE `boolean` - Use Z-Range. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * TABLE - outputVector - Hypsometry
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_hypsometry <- function(ELEVATION = qgisprocess:::qgis_default_value(), TABLE = qgisprocess:::qgis_default_value(), COUNT = qgisprocess:::qgis_default_value(), SORTING = qgisprocess:::qgis_default_value(), METHOD = qgisprocess:::qgis_default_value(), BZRANGE = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:hypsometry")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:hypsometry", `ELEVATION` = ELEVATION, `TABLE` = TABLE, `COUNT` = COUNT, `SORTING` = SORTING, `METHOD` = METHOD, `BZRANGE` = BZRANGE,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:hypsometry", `ELEVATION` = ELEVATION, `TABLE` = TABLE, `COUNT` = COUNT, `SORTING` = SORTING, `METHOD` = METHOD, `BZRANGE` = BZRANGE,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "TABLE")
  }
}