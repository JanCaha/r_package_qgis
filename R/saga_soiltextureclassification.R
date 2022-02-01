##' QGIS Algorithm provided by SAGA Soil texture classification (saga:soiltextureclassification)
##'
##' @title QGIS algorithm Soil texture classification
##'
##' @param SAND `raster` - Sand. Path to a raster layer.
##' @param SILT `raster` - Silt. Path to a raster layer.
##' @param CLAY `raster` - Clay. Path to a raster layer.
##' @param TEXTURE `rasterDestination` - Soil Texture. Path for new raster layer.
##' @param SUM `rasterDestination` - Sum. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * TEXTURE - outputRaster - Soil Texture
##' * SUM - outputRaster - Sum
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_soiltextureclassification <- function(SAND = qgisprocess::qgis_default_value(), SILT = qgisprocess::qgis_default_value(), CLAY = qgisprocess::qgis_default_value(), TEXTURE = qgisprocess::qgis_default_value(), SUM = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("saga:soiltextureclassification")

  output <- qgisprocess::qgis_run_algorithm("saga:soiltextureclassification", `SAND` = SAND, `SILT` = SILT, `CLAY` = CLAY, `TEXTURE` = TEXTURE, `SUM` = SUM,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "TEXTURE")
  }
}