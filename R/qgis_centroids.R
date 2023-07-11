##' QGIS Algorithm provided by QGIS (native c++) Centroids (native:centroids). This algorithm creates a new point layer, with points representing the centroid of the geometries in an input layer.  The attributes associated to each point in the output layer are the same ones associated to the original features.
##'
##' @title QGIS algorithm - Centroids
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param ALL_PARTS `boolean` - Create centroid for each part. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param OUTPUT `sink` - Centroids. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Centroids
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_centroids <- function(INPUT = qgisprocess:::qgis_default_value(), ALL_PARTS = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:centroids")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:centroids", `INPUT` = INPUT, `ALL_PARTS` = ALL_PARTS, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:centroids", `INPUT` = INPUT, `ALL_PARTS` = ALL_PARTS, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}