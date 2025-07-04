##' QGIS Algorithm provided by QGIS (native c++) Project points (Cartesian) (native:projectpointcartesian). Creates a point layer with geometries projected by a specified distance and bearing (azimuth). This algorithm projects point geometries by a specified distance and bearing (azimuth), creating a new point layer with the projected points.  The distance is specified in layer units, and the bearing in degrees clockwise from North.
##'
##' @title QGIS algorithm - Project points (Cartesian)
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param BEARING `number` - Bearing (degrees from North). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param DISTANCE `distance` - Distance. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param OUTPUT `sink` - Projected. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Projected
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_projectpointcartesian <- function(INPUT = qgisprocess:::qgis_default_value(), BEARING = qgisprocess:::qgis_default_value(), DISTANCE = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:projectpointcartesian")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:projectpointcartesian", `INPUT` = INPUT, `BEARING` = BEARING, `DISTANCE` = DISTANCE, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:projectpointcartesian", `INPUT` = INPUT, `BEARING` = BEARING, `DISTANCE` = DISTANCE, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}