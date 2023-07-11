##' QGIS Algorithm provided by SAGA Next Gen Variogram (sagang:variogram). ---------------- Arguments ----------------  POINTS: Points 	Argument type:	source 	Acceptable values: 		- Path to a vector layer FIELD: Attribute 	Argument type:	field 	Acceptable values: 		- The name of an existing field 		- ; delimited list of existing field names RESULT: Sample Variogram 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer DISTCOUNT: Initial Number of Distance Classes 	Default value:	100 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression DISTMAX: Maximum Distance 	Default value:	0 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression NSKIP: Skip Number 	Default value:	1 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Variogram
##'
##' @param POINTS `source` - Points. Path to a vector layer.
##' @param FIELD `field` - Attribute. The name of an existing field. ; delimited list of existing field names.
##' @param RESULT `vectorDestination` - Sample Variogram. Path for new vector layer.
##' @param DISTCOUNT `number` - Initial Number of Distance Classes. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param DISTMAX `number` - Maximum Distance. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param NSKIP `number` - Skip Number. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * RESULT - outputVector - Sample Variogram
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_variogram <- function(POINTS = qgisprocess:::qgis_default_value(), FIELD = qgisprocess:::qgis_default_value(), RESULT = qgisprocess:::qgis_default_value(), DISTCOUNT = qgisprocess:::qgis_default_value(), DISTMAX = qgisprocess:::qgis_default_value(), NSKIP = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:variogram")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:variogram", `POINTS` = POINTS, `FIELD` = FIELD, `RESULT` = RESULT, `DISTCOUNT` = DISTCOUNT, `DISTMAX` = DISTMAX, `NSKIP` = NSKIP,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:variogram", `POINTS` = POINTS, `FIELD` = FIELD, `RESULT` = RESULT, `DISTCOUNT` = DISTCOUNT, `DISTMAX` = DISTMAX, `NSKIP` = NSKIP,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "RESULT")
  }
}