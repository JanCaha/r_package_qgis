##' QGIS Algorithm provided by SAGA Wind exposition index (saga:windexpositionindex)
##'
##' @title QGIS algorithm Wind exposition index
##'
##' @param DEM `raster` - Elevation. Path to a raster layer.
##' @param EXPOSITION `rasterDestination` - Wind Exposition. Path for new raster layer.
##' @param MAXDIST `number` - Search Distance (km). A numeric value.
##' @param STEP `number` - Angular Step Size (Degree). A numeric value.
##' @param OLDVER `boolean` - Old Version. 1 for true/yes. 0 for false/no.
##' @param ACCEL `number` - Acceleration. A numeric value.
##' @param PYRAMIDS `boolean` - Elevation Averaging. 1 for true/yes. 0 for false/no.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * EXPOSITION - outputRaster - Wind Exposition
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_windexpositionindex <- function(DEM = qgisprocess::qgis_default_value(), EXPOSITION = qgisprocess::qgis_default_value(), MAXDIST = qgisprocess::qgis_default_value(), STEP = qgisprocess::qgis_default_value(), OLDVER = qgisprocess::qgis_default_value(), ACCEL = qgisprocess::qgis_default_value(), PYRAMIDS = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("saga:windexpositionindex")
  output <- qgisprocess::qgis_run_algorithm("saga:windexpositionindex",`DEM` = DEM, `EXPOSITION` = EXPOSITION, `MAXDIST` = MAXDIST, `STEP` = STEP, `OLDVER` = OLDVER, `ACCEL` = ACCEL, `PYRAMIDS` = PYRAMIDS,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "EXPOSITION")
  }
}