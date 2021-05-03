##' QGIS Algorithm provided by SAGA Resampling filter (saga:resamplingfilter)
##'
##' @title QGIS algorithm Resampling filter
##'
##' @param GRID `raster` - Grid. Path to a raster layer.
##' @param LOPASS `rasterDestination` - Low Pass Filter. Path for new raster layer.
##' @param HIPASS `rasterDestination` - High Pass Filter. Path for new raster layer.
##' @param SCALE `number` - Scale Factor. A numeric value.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * LOPASS - outputRaster - Low Pass Filter
##' * HIPASS - outputRaster - High Pass Filter
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_resamplingfilter <- function(GRID = qgisprocess::qgis_default_value(), LOPASS = qgisprocess::qgis_default_value(), HIPASS = qgisprocess::qgis_default_value(), SCALE = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_QGIS_versions()
  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("saga:resamplingfilter")
  output <- qgisprocess::qgis_run_algorithm("saga:resamplingfilter",`GRID` = GRID, `LOPASS` = LOPASS, `HIPASS` = HIPASS, `SCALE` = SCALE,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "LOPASS")
  }
}