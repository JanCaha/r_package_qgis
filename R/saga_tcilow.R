##' QGIS Algorithm provided by SAGA Tci low (saga:tcilow)
##'
##' @title QGIS algorithm Tci low
##'
##' @param DISTANCE `raster` - Vertical Distance to Channel Network. Path to a raster layer.
##' @param TWI `raster` - Topographic Wetness Index. Path to a raster layer.
##' @param TCILOW `rasterDestination` - TCI Low. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * TCILOW - outputRaster - TCI Low
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_tcilow <- function(DISTANCE = qgisprocess::qgis_default_value(), TWI = qgisprocess::qgis_default_value(), TCILOW = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_QGIS_versions()
  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("saga:tcilow")
  output <- qgisprocess::qgis_run_algorithm("saga:tcilow",`DISTANCE` = DISTANCE, `TWI` = TWI, `TCILOW` = TCILOW,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "TCILOW")
  }
}