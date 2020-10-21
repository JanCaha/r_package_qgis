##' QGIS Algorithm provided by SAGA Zonal raster statistics (saga:zonalrasterstatistics)
##'
##' @title QGIS algorithm Zonal raster statistics
##'
##' @param ZONES `raster` - Zone Grid. Path to a raster layer.
##' @param CATLIST `multilayer` - Categorial Grids. .
##' @param STATLIST `multilayer` - Grids to analyze. .
##' @param ASPECT `raster` - Aspect. Path to a raster layer.
##' @param SHORTNAMES `boolean` - Short Field Names. 1 for true/yes. 0 for false/no.
##' @param OUTTAB `vectorDestination` - Zonal Statistics. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTTAB - outputVector - Zonal Statistics
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_zonalrasterstatistics <- function(ZONES = qgisprocess::qgis_default_value(), CATLIST = qgisprocess::qgis_default_value(), STATLIST = qgisprocess::qgis_default_value(), ASPECT = qgisprocess::qgis_default_value(), SHORTNAMES = qgisprocess::qgis_default_value(), OUTTAB = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("saga:zonalrasterstatistics",`ZONES` = ZONES, `CATLIST` = CATLIST, `STATLIST` = STATLIST, `ASPECT` = ASPECT, `SHORTNAMES` = SHORTNAMES, `OUTTAB` = OUTTAB,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTTAB")
  }
}