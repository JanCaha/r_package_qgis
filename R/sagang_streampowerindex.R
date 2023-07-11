##' QGIS Algorithm provided by SAGA Next Gen Stream power index (sagang:streampowerindex). ---------------- Arguments ----------------  SLOPE: Slope 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer AREA: Catchment Area 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer SPI: Stream Power Index 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer CONV: Area Conversion 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) no conversion (areas already given as specific catchment area) 		- 1: (1) 1 / cell size (pseudo specific catchment area) 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3'
##'
##' @title QGIS algorithm - Stream power index
##'
##' @param SLOPE `raster` - Slope. Path to a raster layer.
##' @param AREA `raster` - Catchment Area. Path to a raster layer.
##' @param SPI `rasterDestination` - Stream Power Index. Path for new raster layer.
##' @param CONV `enum`  of `("(0) no conversion (areas already given as specific catchment area)", "(1) 1 / cell size (pseudo specific catchment area)")` - Area Conversion. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * SPI - outputRaster - Stream Power Index
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_streampowerindex <- function(SLOPE = qgisprocess:::qgis_default_value(), AREA = qgisprocess:::qgis_default_value(), SPI = qgisprocess:::qgis_default_value(), CONV = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:streampowerindex")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:streampowerindex", `SLOPE` = SLOPE, `AREA` = AREA, `SPI` = SPI, `CONV` = CONV,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:streampowerindex", `SLOPE` = SLOPE, `AREA` = AREA, `SPI` = SPI, `CONV` = CONV,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "SPI")
  }
}