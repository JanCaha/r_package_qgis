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
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * SUM - outputRaster - Sum
##' * TEXTURE - outputRaster - Soil Texture
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_soiltextureclassification <- function(SAND = qgisprocess::qgis_default_value(), SILT = qgisprocess::qgis_default_value(), CLAY = qgisprocess::qgis_default_value(), TEXTURE = qgisprocess::qgis_default_value(), SUM = qgisprocess::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("saga:soiltextureclassification")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("saga:soiltextureclassification", `SAND` = SAND, `SILT` = SILT, `CLAY` = CLAY, `TEXTURE` = TEXTURE, `SUM` = SUM,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("saga:soiltextureclassification", `SAND` = SAND, `SILT` = SILT, `CLAY` = CLAY, `TEXTURE` = TEXTURE, `SUM` = SUM,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "SUM")
  }
}