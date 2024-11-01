##' QGIS Algorithm provided by QGIS (native c++) Dissolve (native:dissolve). This algorithm takes a vector layer and combines their features into new features. One or more attributes can be specified to dissolve features belonging to the same class (having the same value for the specified attributes), alternatively all features can be dissolved in a single one.  All output geometries will be converted to multi geometries. In case the input is a polygon layer, common boundaries of adjacent polygons being dissolved will get erased.  If enabled, the optional "Keep disjoint features separate" setting will cause features and parts that do not overlap or touch to be exported as separate features (instead of parts of a single multipart feature).  ---------------- Notes ----------------   - This algorithm drops existing primary keys or FID values and regenerates them in output layers.
##'
##' @title QGIS algorithm - Dissolve
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param FIELD `field` - Dissolve field(s). The name of an existing field. ; delimited list of existing field names.
##' @param SEPARATE_DISJOINT `boolean` - Keep disjoint features separate. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param OUTPUT `sink` - Dissolved. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Dissolved
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_dissolve <- function(INPUT = qgisprocess:::qgis_default_value(), FIELD = qgisprocess:::qgis_default_value(), SEPARATE_DISJOINT = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:dissolve")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:dissolve", `INPUT` = INPUT, `FIELD` = FIELD, `SEPARATE_DISJOINT` = SEPARATE_DISJOINT, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:dissolve", `INPUT` = INPUT, `FIELD` = FIELD, `SEPARATE_DISJOINT` = SEPARATE_DISJOINT, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}