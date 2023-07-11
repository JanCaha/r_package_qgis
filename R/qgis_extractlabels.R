##' QGIS Algorithm provided by QGIS (native c++) Extract labels (native:extractlabels). Converts map labels to a point layer with relevant details saved as attributes. This algorithm extracts label information from a rendered map at a given extent and scale.  If a map theme is provided, the rendered map will match the visibility and symbology of that theme. If left blank, all visible layers from the project will be used.  Extracted label information include: position (served as point geometries), the associated layer name and feature ID, label text, rotation (in degree, clockwise), multiline alignment, and font details.
##'
##' @title QGIS algorithm - Extract labels
##'
##' @param EXTENT `extent` - Map extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param SCALE `scale` - Map scale. A numeric value representing the scale denominator.
##' @param MAP_THEME `maptheme` - Map theme. Name of an existing map theme.
##' @param INCLUDE_UNPLACED `boolean` - Include unplaced labels. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param DPI `number` - Map resolution (in DPI). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param OUTPUT `sink` - Extracted labels. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Extracted labels
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_extractlabels <- function(EXTENT = qgisprocess:::qgis_default_value(), SCALE = qgisprocess:::qgis_default_value(), MAP_THEME = qgisprocess:::qgis_default_value(), INCLUDE_UNPLACED = qgisprocess:::qgis_default_value(), DPI = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:extractlabels")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:extractlabels", `EXTENT` = EXTENT, `SCALE` = SCALE, `MAP_THEME` = MAP_THEME, `INCLUDE_UNPLACED` = INCLUDE_UNPLACED, `DPI` = DPI, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:extractlabels", `EXTENT` = EXTENT, `SCALE` = SCALE, `MAP_THEME` = MAP_THEME, `INCLUDE_UNPLACED` = INCLUDE_UNPLACED, `DPI` = DPI, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}