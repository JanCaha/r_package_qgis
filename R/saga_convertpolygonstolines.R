##' QGIS Algorithm provided by SAGA Convert polygons to lines (saga:convertpolygonstolines)
##'
##' @title QGIS algorithm Convert polygons to lines
##'
##' @param POLYGONS `source` - Polygons. Path to a vector layer.
##' @param LINES `vectorDestination` - Lines. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * LINES - outputVector - Lines
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_convertpolygonstolines <- function(POLYGONS = qgisprocess::qgis_default_value(), LINES = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("saga:convertpolygonstolines",`POLYGONS` = POLYGONS, `LINES` = LINES,...)
  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "LINES")
}
}