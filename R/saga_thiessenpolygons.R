##' QGIS Algorithm provided by SAGA Thiessen polygons (saga:thiessenpolygons)
##'
##' @title QGIS algorithm Thiessen polygons
##'
##' @param POINTS `source` - Points. Path to a vector layer.
##' @param POLYGONS `vectorDestination` - Polygons. Path for new vector layer.
##' @param FRAME `number` - Frame Size. A numeric value.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * POLYGONS - outputVector - Polygons
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_thiessenpolygons <- function(POINTS = qgisprocess::qgis_default_value(), POLYGONS = qgisprocess::qgis_default_value(), FRAME = qgisprocess::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("saga:thiessenpolygons")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("saga:thiessenpolygons", `POINTS` = POINTS, `POLYGONS` = POLYGONS, `FRAME` = FRAME,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("saga:thiessenpolygons", `POINTS` = POINTS, `POLYGONS` = POLYGONS, `FRAME` = FRAME,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "POLYGONS")
  }
}