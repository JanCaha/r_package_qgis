##' QGIS Algorithm provided by QGIS Voronoi polygons (qgis:voronoipolygons)
##'
##' @title QGIS algorithm Voronoi polygons
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param BUFFER `number` - Buffer region (% of extent). A numeric value.
##' @param OUTPUT `sink` - Voronoi polygons. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Voronoi polygons
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_voronoipolygons <- function(INPUT = qgisprocess::qgis_default_value(), BUFFER = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_QGIS_versions()
  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("qgis:voronoipolygons")
  output <- qgisprocess::qgis_run_algorithm("qgis:voronoipolygons",`INPUT` = INPUT, `BUFFER` = BUFFER, `OUTPUT` = OUTPUT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}