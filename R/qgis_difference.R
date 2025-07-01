##' QGIS Algorithm provided by QGIS (native c++) Difference (native:difference). Extracts features from an input layer that fall outside, or partially overlap, features in an overlay layer. This algorithm extracts features from the Input layer that fall outside, or partially overlap, features in the Overlay layer. Input layer features that partially overlap feature(s) in the Overlay layer are split along those features' boundary and only the portions outside the Overlay layer features are retained.  Attributes are not modified, although properties such as area or length of the features will be modified by the difference operation. If such properties are stored as attributes, those attributes will have to be manually updated.
##'
##' @title QGIS algorithm - Difference
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param OVERLAY `source` - Overlay layer. Path to a vector layer.
##' @param OUTPUT `sink` - Difference. Path for new vector layer.
##' @param GRID_SIZE `number` - Grid size. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Difference
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_difference <- function(INPUT = qgisprocess:::qgis_default_value(), OVERLAY = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(), GRID_SIZE = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:difference")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:difference", `INPUT` = INPUT, `OVERLAY` = OVERLAY, `OUTPUT` = OUTPUT, `GRID_SIZE` = GRID_SIZE,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:difference", `INPUT` = INPUT, `OVERLAY` = OVERLAY, `OUTPUT` = OUTPUT, `GRID_SIZE` = GRID_SIZE,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}