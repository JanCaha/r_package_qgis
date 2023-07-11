##' QGIS Algorithm provided by SAGA Next Gen Variogram (dialog) (sagang:variogramdialog). ---------------- Arguments ----------------  POINTS: Points 	Argument type:	source 	Acceptable values: 		- Path to a vector layer ATTRIBUTE: Attribute 	Argument type:	field 	Acceptable values: 		- The name of an existing field 		- ; delimited list of existing field names VARIOGRAM: Variogram 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer LOG: Logarithmic Transformation 	Default value:	false 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression VAR_MAXDIST: Maximum Distance 	Default value:	-1 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression VAR_NCLASSES: Lag Distance Classes 	Default value:	100 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression VAR_NSKIP: Skip 	Default value:	1 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression VAR_MODEL: Model 	Default value:	a + b * x 	Argument type:	string 	Acceptable values: 		- String value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Variogram (dialog)
##'
##' @param POINTS `source` - Points. Path to a vector layer.
##' @param ATTRIBUTE `field` - Attribute. The name of an existing field. ; delimited list of existing field names.
##' @param VARIOGRAM `vectorDestination` - Variogram. Path for new vector layer.
##' @param LOG `boolean` - Logarithmic Transformation. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param VAR_MAXDIST `number` - Maximum Distance. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param VAR_NCLASSES `number` - Lag Distance Classes. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param VAR_NSKIP `number` - Skip. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param VAR_MODEL `string` - Model. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * VARIOGRAM - outputVector - Variogram
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_variogramdialog <- function(POINTS = qgisprocess:::qgis_default_value(), ATTRIBUTE = qgisprocess:::qgis_default_value(), VARIOGRAM = qgisprocess:::qgis_default_value(), LOG = qgisprocess:::qgis_default_value(), VAR_MAXDIST = qgisprocess:::qgis_default_value(), VAR_NCLASSES = qgisprocess:::qgis_default_value(), VAR_NSKIP = qgisprocess:::qgis_default_value(), VAR_MODEL = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:variogramdialog")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:variogramdialog", `POINTS` = POINTS, `ATTRIBUTE` = ATTRIBUTE, `VARIOGRAM` = VARIOGRAM, `LOG` = LOG, `VAR_MAXDIST` = VAR_MAXDIST, `VAR_NCLASSES` = VAR_NCLASSES, `VAR_NSKIP` = VAR_NSKIP, `VAR_MODEL` = VAR_MODEL,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:variogramdialog", `POINTS` = POINTS, `ATTRIBUTE` = ATTRIBUTE, `VARIOGRAM` = VARIOGRAM, `LOG` = LOG, `VAR_MAXDIST` = VAR_MAXDIST, `VAR_NCLASSES` = VAR_NCLASSES, `VAR_NSKIP` = VAR_NSKIP, `VAR_MODEL` = VAR_MODEL,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "VARIOGRAM")
  }
}