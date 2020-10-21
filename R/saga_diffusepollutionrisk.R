##' QGIS Algorithm provided by SAGA Diffuse pollution risk (saga:diffusepollutionrisk)
##'
##' @title QGIS algorithm Diffuse pollution risk
##'
##' @param DEM `raster` - Elevation. Path to a raster layer.
##' @param CHANNEL `raster` - Channel Network. Path to a raster layer.
##' @param WEIGHT `raster` - Land Cover Weights. Path to a raster layer.
##' @param WEIGHT_DEFAULT `number` - Default. A numeric value.
##' @param RAIN `raster` - Rainfall. Path to a raster layer.
##' @param RAIN_DEFAULT `number` - Default. A numeric value.
##' @param DELIVERY `rasterDestination` - Delivery Index. Path for new raster layer.
##' @param RISK_POINT `rasterDestination` - Locational Risk. Path for new raster layer.
##' @param RISK_DIFFUSE `rasterDestination` - Diffuse Pollution Risk. Path for new raster layer.
##' @param METHOD `enum`  of `("[0] single", "[1] multiple")` - Flow Direction Algorithm. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param CHANNEL_START `number` - Channel Initiation Threshold. A numeric value.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * DELIVERY - outputRaster - Delivery Index
##' * RISK_POINT - outputRaster - Locational Risk
##' * RISK_DIFFUSE - outputRaster - Diffuse Pollution Risk
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_diffusepollutionrisk <- function(DEM = qgisprocess::qgis_default_value(), CHANNEL = qgisprocess::qgis_default_value(), WEIGHT = qgisprocess::qgis_default_value(), WEIGHT_DEFAULT = qgisprocess::qgis_default_value(), RAIN = qgisprocess::qgis_default_value(), RAIN_DEFAULT = qgisprocess::qgis_default_value(), DELIVERY = qgisprocess::qgis_default_value(), RISK_POINT = qgisprocess::qgis_default_value(), RISK_DIFFUSE = qgisprocess::qgis_default_value(), METHOD = qgisprocess::qgis_default_value(), CHANNEL_START = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("saga:diffusepollutionrisk",`DEM` = DEM, `CHANNEL` = CHANNEL, `WEIGHT` = WEIGHT, `WEIGHT_DEFAULT` = WEIGHT_DEFAULT, `RAIN` = RAIN, `RAIN_DEFAULT` = RAIN_DEFAULT, `DELIVERY` = DELIVERY, `RISK_POINT` = RISK_POINT, `RISK_DIFFUSE` = RISK_DIFFUSE, `METHOD` = METHOD, `CHANNEL_START` = CHANNEL_START,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "DELIVERY")
  }
}