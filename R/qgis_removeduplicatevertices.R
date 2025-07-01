##' QGIS Algorithm provided by QGIS (native c++) Remove duplicate vertices (native:removeduplicatevertices). Removes duplicate vertices from features, wherever removing the vertices does not result in a degenerate geometry. This algorithm removes duplicate vertices from features, wherever removing the vertices does not result in a degenerate geometry.  The tolerance parameter specifies the tolerance for coordinates when determining whether vertices are identical.  By default, z values are not considered when detecting duplicate vertices. E.g. two vertices with the same x and y coordinate but different z values will still be considered duplicate and one will be removed. If the Use Z Value parameter is true, then the z values are also tested and vertices with the same x and y but different z will be maintained.  Note that duplicate vertices are not tested between different parts of a multipart geometry. E.g. a multipoint geometry with overlapping points will not be changed by this method.
##'
##' @title QGIS algorithm - Remove duplicate vertices
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param TOLERANCE `distance` - Tolerance. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param USE_Z_VALUE `boolean` - Use Z Value. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param OUTPUT `sink` - Cleaned. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Cleaned
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_removeduplicatevertices <- function(INPUT = qgisprocess:::qgis_default_value(), TOLERANCE = qgisprocess:::qgis_default_value(), USE_Z_VALUE = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:removeduplicatevertices")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:removeduplicatevertices", `INPUT` = INPUT, `TOLERANCE` = TOLERANCE, `USE_Z_VALUE` = USE_Z_VALUE, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:removeduplicatevertices", `INPUT` = INPUT, `TOLERANCE` = TOLERANCE, `USE_Z_VALUE` = USE_Z_VALUE, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}