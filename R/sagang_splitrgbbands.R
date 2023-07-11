##' QGIS Algorithm provided by SAGA Next Gen Split RGB bands (sagang:splitrgbbands). ---------------- Arguments ----------------  INPUT: Input layer 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer R: Output R band layer 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer G: Output G band layer 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer B: Output B band layer 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer
##'
##' @title QGIS algorithm - Split RGB bands
##'
##' @param INPUT `raster` - Input layer. Path to a raster layer.
##' @param R `rasterDestination` - Output R band layer. Path for new raster layer.
##' @param G `rasterDestination` - Output G band layer. Path for new raster layer.
##' @param B `rasterDestination` - Output B band layer. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * B - outputRaster - Output B band layer
##' * G - outputRaster - Output G band layer
##' * R - outputRaster - Output R band layer
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_splitrgbbands <- function(INPUT = qgisprocess:::qgis_default_value(), R = qgisprocess:::qgis_default_value(), G = qgisprocess:::qgis_default_value(), B = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:splitrgbbands")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:splitrgbbands", `INPUT` = INPUT, `R` = R, `G` = G, `B` = B,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:splitrgbbands", `INPUT` = INPUT, `R` = R, `G` = G, `B` = B,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "B")
  }
}