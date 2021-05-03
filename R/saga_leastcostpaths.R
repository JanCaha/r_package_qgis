##' QGIS Algorithm provided by SAGA Least cost paths (saga:leastcostpaths)
##'
##' @title QGIS algorithm Least cost paths
##'
##' @param SOURCE `source` - Source Point(s). Path to a vector layer.
##' @param DEM `raster` - Accumulated cost. Path to a raster layer.
##' @param VALUES `multilayer` - Values. .
##' @param POINTS `vectorDestination` - Profile (points). Path for new vector layer.
##' @param LINE `vectorDestination` - Profile (lines). Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * POINTS - outputVector - Profile 
##' * LINE - outputVector - Profile 
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_leastcostpaths <- function(SOURCE = qgisprocess::qgis_default_value(), DEM = qgisprocess::qgis_default_value(), VALUES = qgisprocess::qgis_default_value(), POINTS = qgisprocess::qgis_default_value(), LINE = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_QGIS_versions()
  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("saga:leastcostpaths")
  output <- qgisprocess::qgis_run_algorithm("saga:leastcostpaths",`SOURCE` = SOURCE, `DEM` = DEM, `VALUES` = VALUES, `POINTS` = POINTS, `LINE` = LINE,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "POINTS")
  }
}