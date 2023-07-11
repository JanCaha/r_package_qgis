##' QGIS Algorithm provided by SAGA Next Gen Flat detection (sagang:flatdetection). ---------------- Arguments ----------------  DEM: DEM 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer NOFLATS: No Flats 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer FLATS: Flat Areas 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer FLAT_OUTPUT: Flat Area Values 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) elevation 		- 1: (1) enumeration 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3'
##'
##' @title QGIS algorithm - Flat detection
##'
##' @param DEM `raster` - DEM. Path to a raster layer.
##' @param NOFLATS `rasterDestination` - No Flats. Path for new raster layer.
##' @param FLATS `rasterDestination` - Flat Areas. Path for new raster layer.
##' @param FLAT_OUTPUT `enum`  of `("(0) elevation", "(1) enumeration")` - Flat Area Values. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * FLATS - outputRaster - Flat Areas
##' * NOFLATS - outputRaster - No Flats
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_flatdetection <- function(DEM = qgisprocess:::qgis_default_value(), NOFLATS = qgisprocess:::qgis_default_value(), FLATS = qgisprocess:::qgis_default_value(), FLAT_OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:flatdetection")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:flatdetection", `DEM` = DEM, `NOFLATS` = NOFLATS, `FLATS` = FLATS, `FLAT_OUTPUT` = FLAT_OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:flatdetection", `DEM` = DEM, `NOFLATS` = NOFLATS, `FLATS` = FLATS, `FLAT_OUTPUT` = FLAT_OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "FLATS")
  }
}