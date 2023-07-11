##' QGIS Algorithm provided by SAGA Next Gen Raster difference (sagang:rasterdifference). ---------------- Arguments ----------------  A: A 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer B: B 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer C: Difference (A - B) 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer
##'
##' @title QGIS algorithm - Raster difference
##'
##' @param A `raster` - A. Path to a raster layer.
##' @param B `raster` - B. Path to a raster layer.
##' @param C `rasterDestination` - Difference (A - B). Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * C - outputRaster - Difference (A - B)
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_rasterdifference <- function(A = qgisprocess:::qgis_default_value(), B = qgisprocess:::qgis_default_value(), C = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:rasterdifference")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:rasterdifference", `A` = A, `B` = B, `C` = C,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:rasterdifference", `A` = A, `B` = B, `C` = C,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "C")
  }
}