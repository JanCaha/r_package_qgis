##' QGIS Algorithm provided by SAGA Polygon centroids (saga:polygoncentroids)
##'
##' @title QGIS algorithm Polygon centroids
##'
##' @param POLYGONS `source` - Polygons. Path to a vector layer.
##' @param CENTROIDS `vectorDestination` - Centroids. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * CENTROIDS - outputVector - Centroids
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

saga_polygoncentroids <- function(POLYGONS = qgisprocess:::qgis_default_value(), CENTROIDS = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("saga:polygoncentroids")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("saga:polygoncentroids", `POLYGONS` = POLYGONS, `CENTROIDS` = CENTROIDS,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("saga:polygoncentroids", `POLYGONS` = POLYGONS, `CENTROIDS` = CENTROIDS,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "CENTROIDS")
  }
}