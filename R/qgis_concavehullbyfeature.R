##' QGIS Algorithm provided by QGIS (native c++) Concave hull (by feature) (native:concavehullbyfeature). Calculates the concave hull for each feature in an input layer. This algorithm calculates the concave hull for each feature in an input layer.  A concave hull is a polygon which contains all the points of the input geometries, but is a better approximation than the convex hull to the area occupied by the input.  It is frequently used to convert a multi-point into a polygonal area which contains all the points from the input geometry.  See the 'Concave hull (by layer)' algorithm for a concave hull calculation which covers the whole layer or grouped subsets of features.
##'
##' @title QGIS algorithm - Concave hull (by feature)
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param ALPHA `number` - Threshold (0-1, where 1 is equivalent with Convex Hull). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param HOLES `boolean` - Allow holes. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param OUTPUT `sink` - Concave hulls. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Concave hulls
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_concavehullbyfeature <- function(INPUT = qgisprocess:::qgis_default_value(), ALPHA = qgisprocess:::qgis_default_value(), HOLES = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:concavehullbyfeature")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:concavehullbyfeature", `INPUT` = INPUT, `ALPHA` = ALPHA, `HOLES` = HOLES, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:concavehullbyfeature", `INPUT` = INPUT, `ALPHA` = ALPHA, `HOLES` = HOLES, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}