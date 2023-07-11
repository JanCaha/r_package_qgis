##' QGIS Algorithm provided by SAGA Next Gen Point to point distances (sagang:pointtopointdistances). ---------------- Arguments ----------------  POINTS: Points 	Argument type:	source 	Acceptable values: 		- Path to a vector layer ID_POINTS: Identifier 	Argument type:	field 	Acceptable values: 		- The name of an existing field 		- ; delimited list of existing field names NEAR: Near Points (optional) 	Argument type:	source 	Acceptable values: 		- Path to a vector layer ID_NEAR: Identifier 	Argument type:	field 	Acceptable values: 		- The name of an existing field 		- ; delimited list of existing field names DISTANCES: Distances 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer LINES: Distances as Lines 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer FORMAT: Output Format 	Default value:	1 	Argument type:	enum 	Available values: 		- 0: (0) complete input times near points matrix 		- 1: (1) each pair with a single record 		- 2: (2) find only the nearest point for each input point 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' MAX_DIST: Maximum Distance 	Default value:	0 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Point to point distances
##'
##' @param POINTS `source` - Points. Path to a vector layer.
##' @param ID_POINTS `field` - Identifier. The name of an existing field. ; delimited list of existing field names.
##' @param NEAR `source` - Near Points. Path to a vector layer.
##' @param ID_NEAR `field` - Identifier. The name of an existing field. ; delimited list of existing field names.
##' @param DISTANCES `vectorDestination` - Distances. Path for new vector layer.
##' @param LINES `vectorDestination` - Distances as Lines. Path for new vector layer.
##' @param FORMAT `enum`  of `("(0) complete input times near points matrix", "(1) each pair with a single record", "(2) find only the nearest point for each input point")` - Output Format. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param MAX_DIST `number` - Maximum Distance. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * DISTANCES - outputVector - Distances
##' * LINES - outputVector - Distances as Lines
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_pointtopointdistances <- function(POINTS = qgisprocess:::qgis_default_value(), ID_POINTS = qgisprocess:::qgis_default_value(), NEAR = qgisprocess:::qgis_default_value(), ID_NEAR = qgisprocess:::qgis_default_value(), DISTANCES = qgisprocess:::qgis_default_value(), LINES = qgisprocess:::qgis_default_value(), FORMAT = qgisprocess:::qgis_default_value(), MAX_DIST = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:pointtopointdistances")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:pointtopointdistances", `POINTS` = POINTS, `ID_POINTS` = ID_POINTS, `NEAR` = NEAR, `ID_NEAR` = ID_NEAR, `DISTANCES` = DISTANCES, `LINES` = LINES, `FORMAT` = FORMAT, `MAX_DIST` = MAX_DIST,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:pointtopointdistances", `POINTS` = POINTS, `ID_POINTS` = ID_POINTS, `NEAR` = NEAR, `ID_NEAR` = ID_NEAR, `DISTANCES` = DISTANCES, `LINES` = LINES, `FORMAT` = FORMAT, `MAX_DIST` = MAX_DIST,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "DISTANCES")
  }
}