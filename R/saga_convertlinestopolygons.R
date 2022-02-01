##' QGIS Algorithm provided by SAGA Convert lines to polygons (saga:convertlinestopolygons)
##'
##' @title QGIS algorithm Convert lines to polygons
##'
##' @param LINES `source` - Lines. Path to a vector layer.
##' @param POLYGONS `vectorDestination` - Polygons. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * POLYGONS - outputVector - Polygons
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_convertlinestopolygons <- function(LINES = qgisprocess::qgis_default_value(), POLYGONS = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("saga:convertlinestopolygons")

  output <- qgisprocess::qgis_run_algorithm("saga:convertlinestopolygons", `LINES` = LINES, `POLYGONS` = POLYGONS,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "POLYGONS")
  }
}