##' QGIS Algorithm provided by QGIS (native c++) Extract/clip by extent (native:extractbyextent). This algorithm creates a new vector layer that only contains features which fall within a specified extent. Any features which intersect the extent will be included.  Optionally, feature geometries can also be clipped to the extent. If this option is selected, then the output geometries will automatically be converted to multi geometries to ensure uniform output geometry types.
##'
##' @title QGIS algorithm - Extract/clip by extent
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param EXTENT `extent` - Extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param CLIP `boolean` - Clip features to extent. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param OUTPUT `sink` - Extracted. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Extracted
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_extractbyextent <- function(INPUT = qgisprocess:::qgis_default_value(), EXTENT = qgisprocess:::qgis_default_value(), CLIP = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:extractbyextent")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:extractbyextent", `INPUT` = INPUT, `EXTENT` = EXTENT, `CLIP` = CLIP, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:extractbyextent", `INPUT` = INPUT, `EXTENT` = EXTENT, `CLIP` = CLIP, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}