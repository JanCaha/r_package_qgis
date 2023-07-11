##' QGIS Algorithm provided by SAGA Next Gen Geographic distances (sagang:geographicdistances). ---------------- Arguments ----------------  PLANAR: Segments 	Argument type:	source 	Acceptable values: 		- Path to a vector layer ORTHODROME: Great Elliptic 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer LOXODROME: Loxodrome 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer EPSILON: Epsilon 	Default value:	100 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Geographic distances
##'
##' @param PLANAR `source` - Segments. Path to a vector layer.
##' @param ORTHODROME `vectorDestination` - Great Elliptic. Path for new vector layer.
##' @param LOXODROME `vectorDestination` - Loxodrome. Path for new vector layer.
##' @param EPSILON `number` - Epsilon. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * LOXODROME - outputVector - Loxodrome
##' * ORTHODROME - outputVector - Great Elliptic
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_geographicdistances <- function(PLANAR = qgisprocess:::qgis_default_value(), ORTHODROME = qgisprocess:::qgis_default_value(), LOXODROME = qgisprocess:::qgis_default_value(), EPSILON = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:geographicdistances")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:geographicdistances", `PLANAR` = PLANAR, `ORTHODROME` = ORTHODROME, `LOXODROME` = LOXODROME, `EPSILON` = EPSILON,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:geographicdistances", `PLANAR` = PLANAR, `ORTHODROME` = ORTHODROME, `LOXODROME` = LOXODROME, `EPSILON` = EPSILON,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "LOXODROME")
  }
}