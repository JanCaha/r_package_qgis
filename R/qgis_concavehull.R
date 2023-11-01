##' QGIS Algorithm provided by QGIS (native c++) Concave hull (native:concavehull). This algorithm computes the concave hull of the features from an input layer.
##'
##' @title QGIS algorithm - Concave hull
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param ALPHA `number` - Threshold (0-1, where 1 is equivalent with Convex Hull). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param HOLES `boolean` - Allow holes. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param NO_MULTIGEOMETRY `boolean` - Split multipart geometry into singleparts. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param OUTPUT `sink` - Concave hull. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Concave hull
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_concavehull <- function(INPUT = qgisprocess:::qgis_default_value(), ALPHA = qgisprocess:::qgis_default_value(), HOLES = qgisprocess:::qgis_default_value(), NO_MULTIGEOMETRY = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:concavehull")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:concavehull", `INPUT` = INPUT, `ALPHA` = ALPHA, `HOLES` = HOLES, `NO_MULTIGEOMETRY` = NO_MULTIGEOMETRY, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:concavehull", `INPUT` = INPUT, `ALPHA` = ALPHA, `HOLES` = HOLES, `NO_MULTIGEOMETRY` = NO_MULTIGEOMETRY, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}