##' QGIS Algorithm provided by SAGA Multiresolution index of valley bottom flatness (mrvbf) (saga:multiresolutionindexofvalleybottomflatnessmrvbf)
##'
##' @title QGIS algorithm Multiresolution index of valley bottom flatness (mrvbf)
##'
##' @param DEM `raster` - Elevation. Path to a raster layer.
##' @param T_SLOPE `number` - Initial Threshold for Slope. A numeric value.
##' @param T_PCTL_V `number` - Threshold for Elevation Percentile (Lowness). A numeric value.
##' @param T_PCTL_R `number` - Threshold for Elevation Percentile (Upness). A numeric value.
##' @param P_SLOPE `number` - Shape Parameter for Slope. A numeric value.
##' @param P_PCTL `number` - Shape Parameter for Elevation Percentile. A numeric value.
##' @param UPDATE `boolean` - Update Views. 1 for true/yes. 0 for false/no.
##' @param CLASSIFY `boolean` - Classify. 1 for true/yes. 0 for false/no.
##' @param MAX_RES `number` - Maximum Resolution (Percentage). A numeric value.
##' @param MRVBF `rasterDestination` - MRVBF. Path for new raster layer.
##' @param MRRTF `rasterDestination` - MRRTF. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * MRVBF - outputRaster - MRVBF
##' * MRRTF - outputRaster - MRRTF
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_multiresolutionindexofvalleybottomflatnessmrvbf <- function(DEM = qgisprocess::qgis_default_value(), T_SLOPE = qgisprocess::qgis_default_value(), T_PCTL_V = qgisprocess::qgis_default_value(), T_PCTL_R = qgisprocess::qgis_default_value(), P_SLOPE = qgisprocess::qgis_default_value(), P_PCTL = qgisprocess::qgis_default_value(), UPDATE = qgisprocess::qgis_default_value(), CLASSIFY = qgisprocess::qgis_default_value(), MAX_RES = qgisprocess::qgis_default_value(), MRVBF = qgisprocess::qgis_default_value(), MRRTF = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("saga:multiresolutionindexofvalleybottomflatnessmrvbf")
  output <- qgisprocess::qgis_run_algorithm("saga:multiresolutionindexofvalleybottomflatnessmrvbf",`DEM` = DEM, `T_SLOPE` = T_SLOPE, `T_PCTL_V` = T_PCTL_V, `T_PCTL_R` = T_PCTL_R, `P_SLOPE` = P_SLOPE, `P_PCTL` = P_PCTL, `UPDATE` = UPDATE, `CLASSIFY` = CLASSIFY, `MAX_RES` = MAX_RES, `MRVBF` = MRVBF, `MRRTF` = MRRTF,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "MRVBF")
  }
}