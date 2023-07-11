##' QGIS Algorithm provided by SAGA Next Gen Edge contamination (sagang:edgecontamination). ---------------- Arguments ----------------  ELEVATION: Elevation 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer CONTAMINATION: Edge Contamination 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer METHOD: Method 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) single flow direction 		- 1: (1) multiple flow direction 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3'
##'
##' @title QGIS algorithm - Edge contamination
##'
##' @param ELEVATION `raster` - Elevation. Path to a raster layer.
##' @param CONTAMINATION `rasterDestination` - Edge Contamination. Path for new raster layer.
##' @param METHOD `enum`  of `("(0) single flow direction", "(1) multiple flow direction")` - Method. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * CONTAMINATION - outputRaster - Edge Contamination
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_edgecontamination <- function(ELEVATION = qgisprocess:::qgis_default_value(), CONTAMINATION = qgisprocess:::qgis_default_value(), METHOD = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:edgecontamination")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:edgecontamination", `ELEVATION` = ELEVATION, `CONTAMINATION` = CONTAMINATION, `METHOD` = METHOD,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:edgecontamination", `ELEVATION` = ELEVATION, `CONTAMINATION` = CONTAMINATION, `METHOD` = METHOD,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "CONTAMINATION")
  }
}