##' QGIS Algorithm provided by SAGA Fragmentation classes from density and connectivity (saga:fragmentationclassesfromdensityandconnectivity)
##'
##' @title QGIS algorithm Fragmentation classes from density and connectivity
##'
##' @param DENSITY `raster` - Density (Percent). Path to a raster layer.
##' @param CONNECTIVITY `raster` - Connectivity (Percent). Path to a raster layer.
##' @param BORDER `boolean` - Add Border. 1 for true/yes. 0 for false/no.
##' @param WEIGHT `number` - Connectivity Weighting. A numeric value.
##' @param DENSITY_MIN `number` - Minimum Density (Percent). A numeric value.
##' @param DENSITY_INT `number` - Minimum Density for Interior Forest (Percent). A numeric value.
##' @param FRAGMENTATION `rasterDestination` - Fragmentation. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * FRAGMENTATION - outputRaster - Fragmentation
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_fragmentationclassesfromdensityandconnectivity <- function(DENSITY = qgisprocess::qgis_default_value(), CONNECTIVITY = qgisprocess::qgis_default_value(), BORDER = qgisprocess::qgis_default_value(), WEIGHT = qgisprocess::qgis_default_value(), DENSITY_MIN = qgisprocess::qgis_default_value(), DENSITY_INT = qgisprocess::qgis_default_value(), FRAGMENTATION = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("saga:fragmentationclassesfromdensityandconnectivity",`DENSITY` = DENSITY, `CONNECTIVITY` = CONNECTIVITY, `BORDER` = BORDER, `WEIGHT` = WEIGHT, `DENSITY_MIN` = DENSITY_MIN, `DENSITY_INT` = DENSITY_INT, `FRAGMENTATION` = FRAGMENTATION,...)
  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "FRAGMENTATION")
}
}