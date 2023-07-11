##' QGIS Algorithm provided by QGIS Random points along line (qgis:randompointsalongline). This algorithm creates a point layer with a given "Number of points" placed on the lines of the "Input layer". The location of each point is determined by randomly selecting a feature, then a segment of the line geometry of that feature, and finally a random position on that segment. A minimum distance between the points can be specified (Euclidean distance).
##'
##' @title QGIS algorithm - Random points along line
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param POINTS_NUMBER `number` - Number of points. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param MIN_DISTANCE `distance` - Minimum distance between points. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param OUTPUT `sink` - Random points. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Random points
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_randompointsalongline <- function(INPUT = qgisprocess:::qgis_default_value(), POINTS_NUMBER = qgisprocess:::qgis_default_value(), MIN_DISTANCE = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("qgis:randompointsalongline")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("qgis:randompointsalongline", `INPUT` = INPUT, `POINTS_NUMBER` = POINTS_NUMBER, `MIN_DISTANCE` = MIN_DISTANCE, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("qgis:randompointsalongline", `INPUT` = INPUT, `POINTS_NUMBER` = POINTS_NUMBER, `MIN_DISTANCE` = MIN_DISTANCE, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}