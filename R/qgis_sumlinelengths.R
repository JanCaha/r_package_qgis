##' QGIS Algorithm provided by QGIS (native c++) Sum line lengths (native:sumlinelengths). This algorithm takes a polygon layer and a line layer and measures the total length of lines and the total number of them that cross each polygon.  The resulting layer has the same features as the input polygon layer, but with two additional attributes containing the length and count of the lines across each polygon. The names of these two fields can be configured in the algorithm parameters.
##'
##' @title QGIS algorithm - Sum line lengths
##'
##' @param POLYGONS `source` - Polygons. Path to a vector layer.
##' @param LINES `source` - Lines. Path to a vector layer.
##' @param LEN_FIELD `string` - Lines length field name. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param COUNT_FIELD `string` - Lines count field name. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param OUTPUT `sink` - Line length. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Line length
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_sumlinelengths <- function(POLYGONS = qgisprocess:::qgis_default_value(), LINES = qgisprocess:::qgis_default_value(), LEN_FIELD = qgisprocess:::qgis_default_value(), COUNT_FIELD = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:sumlinelengths")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:sumlinelengths", `POLYGONS` = POLYGONS, `LINES` = LINES, `LEN_FIELD` = LEN_FIELD, `COUNT_FIELD` = COUNT_FIELD, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:sumlinelengths", `POLYGONS` = POLYGONS, `LINES` = LINES, `LEN_FIELD` = LEN_FIELD, `COUNT_FIELD` = COUNT_FIELD, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}