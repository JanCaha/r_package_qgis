##' QGIS Algorithm provided by SAGA Polygon dissolve (all polygons) (saga:polygondissolveallpolygons)
##'
##' @title QGIS algorithm Polygon dissolve (all polygons)
##'
##' @param POLYGONS `source` - Polygons. Path to a vector layer.
##' @param BND_KEEP `boolean` - Keep inner boundaries. 1 for true/yes. 0 for false/no.
##' @param DISSOLVED `vectorDestination` - Dissolved. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * DISSOLVED - outputVector - Dissolved
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

saga_polygondissolveallpolygons <- function(POLYGONS = qgisprocess:::qgis_default_value(), BND_KEEP = qgisprocess:::qgis_default_value(), DISSOLVED = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("saga:polygondissolveallpolygons")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("saga:polygondissolveallpolygons", `POLYGONS` = POLYGONS, `BND_KEEP` = BND_KEEP, `DISSOLVED` = DISSOLVED,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("saga:polygondissolveallpolygons", `POLYGONS` = POLYGONS, `BND_KEEP` = BND_KEEP, `DISSOLVED` = DISSOLVED,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "DISSOLVED")
  }
}