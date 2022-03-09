##' QGIS Algorithm provided by SAGA Polygon self-intersection (saga:polygonselfintersection)
##'
##' @title QGIS algorithm Polygon self-intersection
##'
##' @param POLYGONS `source` - Polygons. Path to a vector layer.
##' @param ID `field` - Identifier. The name of an existing field. ; delimited list of existing field names.
##' @param INTERSECT `vectorDestination` - Intersection. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * INTERSECT - outputVector - Intersection
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_polygonselfintersection <- function(POLYGONS = qgisprocess::qgis_default_value(), ID = qgisprocess::qgis_default_value(), INTERSECT = qgisprocess::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("saga:polygonselfintersection")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("saga:polygonselfintersection", `POLYGONS` = POLYGONS, `ID` = ID, `INTERSECT` = INTERSECT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("saga:polygonselfintersection", `POLYGONS` = POLYGONS, `ID` = ID, `INTERSECT` = INTERSECT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "INTERSECT")
  }
}