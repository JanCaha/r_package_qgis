##' QGIS Algorithm provided by SAGA Next Gen Polar to cartesian coordinates (sagang:polartocartesiancoordinates). ---------------- Arguments ----------------  POLAR: Polar Coordinates 	Argument type:	source 	Acceptable values: 		- Path to a vector layer F_EXAGG: Exaggeration 	Argument type:	field 	Acceptable values: 		- The name of an existing field 		- ; delimited list of existing field names D_EXAGG: Exaggeration Factor 	Default value:	1 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression CARTES: Cartesion Coordinates 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer RADIUS: Radius 	Default value:	6371000 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression DEGREE: Degree 	Default value:	true 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Polar to cartesian coordinates
##'
##' @param POLAR `source` - Polar Coordinates. Path to a vector layer.
##' @param F_EXAGG `field` - Exaggeration. The name of an existing field. ; delimited list of existing field names.
##' @param D_EXAGG `number` - Exaggeration Factor. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param CARTES `vectorDestination` - Cartesion Coordinates. Path for new vector layer.
##' @param RADIUS `number` - Radius. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param DEGREE `boolean` - Degree. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * CARTES - outputVector - Cartesion Coordinates
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_polartocartesiancoordinates <- function(POLAR = qgisprocess:::qgis_default_value(), F_EXAGG = qgisprocess:::qgis_default_value(), D_EXAGG = qgisprocess:::qgis_default_value(), CARTES = qgisprocess:::qgis_default_value(), RADIUS = qgisprocess:::qgis_default_value(), DEGREE = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:polartocartesiancoordinates")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:polartocartesiancoordinates", `POLAR` = POLAR, `F_EXAGG` = F_EXAGG, `D_EXAGG` = D_EXAGG, `CARTES` = CARTES, `RADIUS` = RADIUS, `DEGREE` = DEGREE,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:polartocartesiancoordinates", `POLAR` = POLAR, `F_EXAGG` = F_EXAGG, `D_EXAGG` = D_EXAGG, `CARTES` = CARTES, `RADIUS` = RADIUS, `DEGREE` = DEGREE,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "CARTES")
  }
}