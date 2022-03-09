##' QGIS Algorithm provided by SAGA Bioclimatic variables (saga:bioclimaticvariables)
##'
##' @title QGIS algorithm Bioclimatic variables
##'
##' @param TMEAN `multilayer` - Mean Temperature. .
##' @param TMIN `multilayer` - Minimum Temperature. .
##' @param TMAX `multilayer` - Maximum Temperature. .
##' @param P `multilayer` - Precipitation. .
##' @param BIO_01 `rasterDestination` - Annual Mean Temperature. Path for new raster layer.
##' @param BIO_02 `rasterDestination` - Mean Diurnal Range. Path for new raster layer.
##' @param BIO_03 `rasterDestination` - Isothermality. Path for new raster layer.
##' @param BIO_04 `rasterDestination` - Temperature Seasonality. Path for new raster layer.
##' @param BIO_05 `rasterDestination` - Maximum Temperature of Warmest Month. Path for new raster layer.
##' @param BIO_06 `rasterDestination` - Minimum Temperature of Coldest Month. Path for new raster layer.
##' @param BIO_07 `rasterDestination` - Temperature Annual Range. Path for new raster layer.
##' @param BIO_08 `rasterDestination` - Mean Temperature of Wettest Quarter. Path for new raster layer.
##' @param BIO_09 `rasterDestination` - Mean Temperature of Driest Quarter. Path for new raster layer.
##' @param BIO_10 `rasterDestination` - Mean Temperature of Warmest Quarter. Path for new raster layer.
##' @param BIO_11 `rasterDestination` - Mean Temperature of Coldest Quarter. Path for new raster layer.
##' @param BIO_12 `rasterDestination` - Annual Precipitation. Path for new raster layer.
##' @param BIO_13 `rasterDestination` - Precipitation of Wettest Month. Path for new raster layer.
##' @param BIO_14 `rasterDestination` - Precipitation of Driest Month. Path for new raster layer.
##' @param BIO_15 `rasterDestination` - Precipitation Seasonality. Path for new raster layer.
##' @param BIO_16 `rasterDestination` - Precipitation of Wettest Quarter. Path for new raster layer.
##' @param BIO_17 `rasterDestination` - Precipitation of Driest Quarter. Path for new raster layer.
##' @param BIO_18 `rasterDestination` - Precipitation of Warmest Quarter. Path for new raster layer.
##' @param BIO_19 `rasterDestination` - Precipitation of Coldest Quarter. Path for new raster layer.
##' @param SEASONALITY `enum`  of `("[0] Coefficient of Variation", "[1] Standard Deviation")` - Temperature Seasonality. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * BIO_01 - outputRaster - Annual Mean Temperature
##' * BIO_02 - outputRaster - Mean Diurnal Range
##' * BIO_03 - outputRaster - Isothermality
##' * BIO_04 - outputRaster - Temperature Seasonality
##' * BIO_05 - outputRaster - Maximum Temperature of Warmest Month
##' * BIO_06 - outputRaster - Minimum Temperature of Coldest Month
##' * BIO_07 - outputRaster - Temperature Annual Range
##' * BIO_08 - outputRaster - Mean Temperature of Wettest Quarter
##' * BIO_09 - outputRaster - Mean Temperature of Driest Quarter
##' * BIO_10 - outputRaster - Mean Temperature of Warmest Quarter
##' * BIO_11 - outputRaster - Mean Temperature of Coldest Quarter
##' * BIO_12 - outputRaster - Annual Precipitation
##' * BIO_13 - outputRaster - Precipitation of Wettest Month
##' * BIO_14 - outputRaster - Precipitation of Driest Month
##' * BIO_15 - outputRaster - Precipitation Seasonality
##' * BIO_16 - outputRaster - Precipitation of Wettest Quarter
##' * BIO_17 - outputRaster - Precipitation of Driest Quarter
##' * BIO_18 - outputRaster - Precipitation of Warmest Quarter
##' * BIO_19 - outputRaster - Precipitation of Coldest Quarter
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_bioclimaticvariables <- function(TMEAN = qgisprocess::qgis_default_value(), TMIN = qgisprocess::qgis_default_value(), TMAX = qgisprocess::qgis_default_value(), P = qgisprocess::qgis_default_value(), BIO_01 = qgisprocess::qgis_default_value(), BIO_02 = qgisprocess::qgis_default_value(), BIO_03 = qgisprocess::qgis_default_value(), BIO_04 = qgisprocess::qgis_default_value(), BIO_05 = qgisprocess::qgis_default_value(), BIO_06 = qgisprocess::qgis_default_value(), BIO_07 = qgisprocess::qgis_default_value(), BIO_08 = qgisprocess::qgis_default_value(), BIO_09 = qgisprocess::qgis_default_value(), BIO_10 = qgisprocess::qgis_default_value(), BIO_11 = qgisprocess::qgis_default_value(), BIO_12 = qgisprocess::qgis_default_value(), BIO_13 = qgisprocess::qgis_default_value(), BIO_14 = qgisprocess::qgis_default_value(), BIO_15 = qgisprocess::qgis_default_value(), BIO_16 = qgisprocess::qgis_default_value(), BIO_17 = qgisprocess::qgis_default_value(), BIO_18 = qgisprocess::qgis_default_value(), BIO_19 = qgisprocess::qgis_default_value(), SEASONALITY = qgisprocess::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("saga:bioclimaticvariables")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("saga:bioclimaticvariables", `TMEAN` = TMEAN, `TMIN` = TMIN, `TMAX` = TMAX, `P` = P, `BIO_01` = BIO_01, `BIO_02` = BIO_02, `BIO_03` = BIO_03, `BIO_04` = BIO_04, `BIO_05` = BIO_05, `BIO_06` = BIO_06, `BIO_07` = BIO_07, `BIO_08` = BIO_08, `BIO_09` = BIO_09, `BIO_10` = BIO_10, `BIO_11` = BIO_11, `BIO_12` = BIO_12, `BIO_13` = BIO_13, `BIO_14` = BIO_14, `BIO_15` = BIO_15, `BIO_16` = BIO_16, `BIO_17` = BIO_17, `BIO_18` = BIO_18, `BIO_19` = BIO_19, `SEASONALITY` = SEASONALITY,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("saga:bioclimaticvariables", `TMEAN` = TMEAN, `TMIN` = TMIN, `TMAX` = TMAX, `P` = P, `BIO_01` = BIO_01, `BIO_02` = BIO_02, `BIO_03` = BIO_03, `BIO_04` = BIO_04, `BIO_05` = BIO_05, `BIO_06` = BIO_06, `BIO_07` = BIO_07, `BIO_08` = BIO_08, `BIO_09` = BIO_09, `BIO_10` = BIO_10, `BIO_11` = BIO_11, `BIO_12` = BIO_12, `BIO_13` = BIO_13, `BIO_14` = BIO_14, `BIO_15` = BIO_15, `BIO_16` = BIO_16, `BIO_17` = BIO_17, `BIO_18` = BIO_18, `BIO_19` = BIO_19, `SEASONALITY` = SEASONALITY,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "BIO_01")
  }
}