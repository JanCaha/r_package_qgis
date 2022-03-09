##' QGIS Algorithm provided by SAGA Polygon parts to separate polygons (saga:polygonpartstoseparatepolygons)
##'
##' @title QGIS algorithm Polygon parts to separate polygons
##'
##' @param POLYGONS `source` - Polygons. Path to a vector layer.
##' @param PARTS `vectorDestination` - Polygon Parts. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * PARTS - outputVector - Polygon Parts
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_polygonpartstoseparatepolygons <- function(POLYGONS = qgisprocess::qgis_default_value(), PARTS = qgisprocess::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("saga:polygonpartstoseparatepolygons")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("saga:polygonpartstoseparatepolygons", `POLYGONS` = POLYGONS, `PARTS` = PARTS,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("saga:polygonpartstoseparatepolygons", `POLYGONS` = POLYGONS, `PARTS` = PARTS,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "PARTS")
  }
}