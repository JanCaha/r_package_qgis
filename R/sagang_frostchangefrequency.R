##' QGIS Algorithm provided by SAGA Next Gen Frost change frequency (sagang:frostchangefrequency). ---------------- Arguments ----------------  TMIN: Minimum Temperature 	Argument type:	multilayer TMAX: Maximum Temperature 	Argument type:	multilayer FREQUENCY: Frost Change Frequency 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer DT_MEAN: Mean Temperature Span 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer DT_MAX: Maximum Temperature Span 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer DT_STDV: Standard Deviation of Temperature Span 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer TMIN_MEAN: Mean Minimum Temperature 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer TMIN_MIN: Minimum Temperature 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer
##'
##' @title QGIS algorithm - Frost change frequency
##'
##' @param TMIN `multilayer` - Minimum Temperature. .
##' @param TMAX `multilayer` - Maximum Temperature. .
##' @param FREQUENCY `rasterDestination` - Frost Change Frequency. Path for new raster layer.
##' @param DT_MEAN `rasterDestination` - Mean Temperature Span. Path for new raster layer.
##' @param DT_MAX `rasterDestination` - Maximum Temperature Span. Path for new raster layer.
##' @param DT_STDV `rasterDestination` - Standard Deviation of Temperature Span. Path for new raster layer.
##' @param TMIN_MEAN `rasterDestination` - Mean Minimum Temperature. Path for new raster layer.
##' @param TMIN_MIN `rasterDestination` - Minimum Temperature. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * DT_MAX - outputRaster - Maximum Temperature Span
##' * DT_MEAN - outputRaster - Mean Temperature Span
##' * DT_STDV - outputRaster - Standard Deviation of Temperature Span
##' * FREQUENCY - outputRaster - Frost Change Frequency
##' * TMIN_MEAN - outputRaster - Mean Minimum Temperature
##' * TMIN_MIN - outputRaster - Minimum Temperature
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_frostchangefrequency <- function(TMIN = qgisprocess:::qgis_default_value(), TMAX = qgisprocess:::qgis_default_value(), FREQUENCY = qgisprocess:::qgis_default_value(), DT_MEAN = qgisprocess:::qgis_default_value(), DT_MAX = qgisprocess:::qgis_default_value(), DT_STDV = qgisprocess:::qgis_default_value(), TMIN_MEAN = qgisprocess:::qgis_default_value(), TMIN_MIN = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:frostchangefrequency")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:frostchangefrequency", `TMIN` = TMIN, `TMAX` = TMAX, `FREQUENCY` = FREQUENCY, `DT_MEAN` = DT_MEAN, `DT_MAX` = DT_MAX, `DT_STDV` = DT_STDV, `TMIN_MEAN` = TMIN_MEAN, `TMIN_MIN` = TMIN_MIN,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:frostchangefrequency", `TMIN` = TMIN, `TMAX` = TMAX, `FREQUENCY` = FREQUENCY, `DT_MEAN` = DT_MEAN, `DT_MAX` = DT_MAX, `DT_STDV` = DT_STDV, `TMIN_MEAN` = TMIN_MEAN, `TMIN_MIN` = TMIN_MIN,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "DT_MAX")
  }
}