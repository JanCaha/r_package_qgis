##' QGIS Algorithm provided by QGIS (native c++) Split features by character (native:splitfeaturesbycharacter). Splits features into multiple output features by splitting a field by a character. This algorithm splits features into multiple output features by splitting a field's value with a specified character.  For instance, if a layer contains features with multiple comma separated values contained in a single field, this algorithm can be used to split these values up across multiple output features.  Geometries and other attributes remain unchanged in the output.  Optionally, the separator string can be a regular expression for added flexibility.  ---------------- Notes ----------------   - This algorithm drops existing primary keys or FID values and regenerates them in output layers.
##'
##' @title QGIS algorithm - Split features by character
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param FIELD `field` - Split using values in field. The name of an existing field. ; delimited list of existing field names.
##' @param CHAR `string` - Split values using character. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param REGEX `boolean` - Use regular expression separator. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param OUTPUT `sink` - Split. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Split
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_splitfeaturesbycharacter <- function(INPUT = qgisprocess:::qgis_default_value(), FIELD = qgisprocess:::qgis_default_value(), CHAR = qgisprocess:::qgis_default_value(), REGEX = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:splitfeaturesbycharacter")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:splitfeaturesbycharacter", `INPUT` = INPUT, `FIELD` = FIELD, `CHAR` = CHAR, `REGEX` = REGEX, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:splitfeaturesbycharacter", `INPUT` = INPUT, `FIELD` = FIELD, `CHAR` = CHAR, `REGEX` = REGEX, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}