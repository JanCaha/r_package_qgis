##' QGIS Algorithm provided by SAGA Next Gen Focal mechanism (beachball plots) (sagang:focalmechanismbeachballplots). ---------------- Arguments ----------------  POINTS: Points 	Argument type:	source 	Acceptable values: 		- Path to a vector layer STRIKE: Strike 	Argument type:	field 	Acceptable values: 		- The name of an existing field 		- ; delimited list of existing field names DIP: Dip 	Argument type:	field 	Acceptable values: 		- The name of an existing field 		- ; delimited list of existing field names RAKE: Rake 	Argument type:	field 	Acceptable values: 		- The name of an existing field 		- ; delimited list of existing field names SIZE: Size 	Argument type:	field 	Acceptable values: 		- The name of an existing field 		- ; delimited list of existing field names SIZE_DEF: Default 	Default value:	1 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression PLOTS: Focal Mechanism Beachballs 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer DARC: Arc Vertex Distance (Degree) 	Default value:	5 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression STYLE: Style 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) one 		- 1: (1) two 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3'
##'
##' @title QGIS algorithm - Focal mechanism (beachball plots)
##'
##' @param POINTS `source` - Points. Path to a vector layer.
##' @param STRIKE `field` - Strike. The name of an existing field. ; delimited list of existing field names.
##' @param DIP `field` - Dip. The name of an existing field. ; delimited list of existing field names.
##' @param RAKE `field` - Rake. The name of an existing field. ; delimited list of existing field names.
##' @param SIZE `field` - Size. The name of an existing field. ; delimited list of existing field names.
##' @param SIZE_DEF `number` - Default. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param PLOTS `vectorDestination` - Focal Mechanism Beachballs. Path for new vector layer.
##' @param DARC `number` - Arc Vertex Distance (Degree). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param STYLE `enum`  of `("(0) one", "(1) two")` - Style. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * PLOTS - outputVector - Focal Mechanism Beachballs
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_focalmechanismbeachballplots <- function(POINTS = qgisprocess:::qgis_default_value(), STRIKE = qgisprocess:::qgis_default_value(), DIP = qgisprocess:::qgis_default_value(), RAKE = qgisprocess:::qgis_default_value(), SIZE = qgisprocess:::qgis_default_value(), SIZE_DEF = qgisprocess:::qgis_default_value(), PLOTS = qgisprocess:::qgis_default_value(), DARC = qgisprocess:::qgis_default_value(), STYLE = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:focalmechanismbeachballplots")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:focalmechanismbeachballplots", `POINTS` = POINTS, `STRIKE` = STRIKE, `DIP` = DIP, `RAKE` = RAKE, `SIZE` = SIZE, `SIZE_DEF` = SIZE_DEF, `PLOTS` = PLOTS, `DARC` = DARC, `STYLE` = STYLE,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:focalmechanismbeachballplots", `POINTS` = POINTS, `STRIKE` = STRIKE, `DIP` = DIP, `RAKE` = RAKE, `SIZE` = SIZE, `SIZE_DEF` = SIZE_DEF, `PLOTS` = PLOTS, `DARC` = DARC, `STYLE` = STYLE,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "PLOTS")
  }
}