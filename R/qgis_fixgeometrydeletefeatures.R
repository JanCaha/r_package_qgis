##' QGIS Algorithm provided by QGIS (native c++) Delete features (native:fixgeometrydeletefeatures). Deletes features detected with an algorithm from the "Check geometry" section. This algorithm deletes error features listed in the errors layer from an algorithm in the "Check geometry" section. The required inputs are the original layer used in the check algorithm, its unique id field, and its corresponding errors layer.  For instance, it can be used after the following check algorithms to delete error features:htmlulliFeature inside polygon/liliDegenerate polygons/liliSmall segments/liliDuplicated geometries/lilietc./li/ul/html
##'
##' @title QGIS algorithm - Delete features
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param ERRORS `source` - Error layer. Path to a vector layer.
##' @param UNIQUE_ID `field` - Field of original feature unique identifier. The name of an existing field. ; delimited list of existing field names.
##' @param OUTPUT `sink` - Cleaned layer. Path for new vector layer.
##' @param REPORT `sink` - Report layer from deleting features. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Cleaned layer
##' * REPORT - outputVector - Report layer from deleting features
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_fixgeometrydeletefeatures <- function(INPUT = qgisprocess:::qgis_default_value(), ERRORS = qgisprocess:::qgis_default_value(), UNIQUE_ID = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(), REPORT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:fixgeometrydeletefeatures")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:fixgeometrydeletefeatures", `INPUT` = INPUT, `ERRORS` = ERRORS, `UNIQUE_ID` = UNIQUE_ID, `OUTPUT` = OUTPUT, `REPORT` = REPORT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:fixgeometrydeletefeatures", `INPUT` = INPUT, `ERRORS` = ERRORS, `UNIQUE_ID` = UNIQUE_ID, `OUTPUT` = OUTPUT, `REPORT` = REPORT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}