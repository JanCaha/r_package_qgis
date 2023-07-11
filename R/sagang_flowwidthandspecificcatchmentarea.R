##' QGIS Algorithm provided by SAGA Next Gen Flow width and specific catchment area (sagang:flowwidthandspecificcatchmentarea). ---------------- Arguments ----------------  DEM: Elevation 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer WIDTH: Flow Width 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer TCA: Total Catchment Area (TCA) (optional) 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer SCA: Specific Catchment Area (SCA) 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer METHOD: Method 	Default value:	2 	Argument type:	enum 	Available values: 		- 0: (0) Deterministic 8 		- 1: (1) Multiple Flow Direction (Quinn et al. 1991) 		- 2: (2) Aspect 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3'
##'
##' @title QGIS algorithm - Flow width and specific catchment area
##'
##' @param DEM `raster` - Elevation. Path to a raster layer.
##' @param WIDTH `rasterDestination` - Flow Width. Path for new raster layer.
##' @param TCA `raster` - Total Catchment Area (TCA). Path to a raster layer.
##' @param SCA `rasterDestination` - Specific Catchment Area (SCA). Path for new raster layer.
##' @param METHOD `enum`  of `("(0) Deterministic 8", "(1) Multiple Flow Direction (Quinn et al. 1991)", "(2) Aspect")` - Method. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * SCA - outputRaster - Specific Catchment Area (SCA)
##' * WIDTH - outputRaster - Flow Width
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_flowwidthandspecificcatchmentarea <- function(DEM = qgisprocess:::qgis_default_value(), WIDTH = qgisprocess:::qgis_default_value(), TCA = qgisprocess:::qgis_default_value(), SCA = qgisprocess:::qgis_default_value(), METHOD = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:flowwidthandspecificcatchmentarea")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:flowwidthandspecificcatchmentarea", `DEM` = DEM, `WIDTH` = WIDTH, `TCA` = TCA, `SCA` = SCA, `METHOD` = METHOD,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:flowwidthandspecificcatchmentarea", `DEM` = DEM, `WIDTH` = WIDTH, `TCA` = TCA, `SCA` = SCA, `METHOD` = METHOD,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "SCA")
  }
}