##' QGIS Algorithm provided by QGIS (native c++) Delaunay triangulation (native:delaunaytriangulation). Creates a polygon layer with the Delaunay triangulation corresponding to a points layer.
##'
##' @title QGIS algorithm - Delaunay triangulation
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param TOLERANCE `number` - Tolerance. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ADD_ATTRIBUTES `boolean` - Add point IDs to output. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param OUTPUT `sink` - Delaunay triangulation. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Delaunay triangulation
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_delaunaytriangulation <- function(INPUT = qgisprocess:::qgis_default_value(), TOLERANCE = qgisprocess:::qgis_default_value(), ADD_ATTRIBUTES = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:delaunaytriangulation")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:delaunaytriangulation", `INPUT` = INPUT, `TOLERANCE` = TOLERANCE, `ADD_ATTRIBUTES` = ADD_ATTRIBUTES, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:delaunaytriangulation", `INPUT` = INPUT, `TOLERANCE` = TOLERANCE, `ADD_ATTRIBUTES` = ADD_ATTRIBUTES, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}