##' QGIS Algorithm provided by QGIS (native c++) Shortest line between features (native:shortestline). This algorithm creates a line layer as the shortest line between the source and the destination layer. By default only the first nearest feature of the destination layer is taken into account. The n-nearest neighboring features number can be specified.  If a maximum distance is specified, then only features which are closer than this distance will be considered.  The output features will contain all the source layer attributes, all the attributes from the n-nearest feature and the additional field of the distance.  This algorithm uses purely Cartesian calculations for distance, and does not consider geodetic or ellipsoid properties when determining feature proximity. The measurement and output coordinate system is based on the coordinate system of the source layer.
##'
##' @title QGIS algorithm - Shortest line between features
##'
##' @param SOURCE `source` - Source layer. Path to a vector layer.
##' @param DESTINATION `source` - Destination layer. Path to a vector layer.
##' @param METHOD `enum`  of `("Distance to Nearest Point on feature", "Distance to Feature Centroid")` - Method. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param NEIGHBORS `number` - Maximum number of neighbors. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param DISTANCE `distance` - Maximum distance. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param OUTPUT `sink` - Shortest lines. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Shortest lines
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_shortestline <- function(SOURCE = qgisprocess:::qgis_default_value(), DESTINATION = qgisprocess:::qgis_default_value(), METHOD = qgisprocess:::qgis_default_value(), NEIGHBORS = qgisprocess:::qgis_default_value(), DISTANCE = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:shortestline")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:shortestline", `SOURCE` = SOURCE, `DESTINATION` = DESTINATION, `METHOD` = METHOD, `NEIGHBORS` = NEIGHBORS, `DISTANCE` = DISTANCE, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:shortestline", `SOURCE` = SOURCE, `DESTINATION` = DESTINATION, `METHOD` = METHOD, `NEIGHBORS` = NEIGHBORS, `DISTANCE` = DISTANCE, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}