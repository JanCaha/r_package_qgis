##' QGIS Algorithm provided by SAGA Next Gen Inverse principal components rotation (sagang:inverseprincipalcomponentsrotation). ---------------- Arguments ----------------  PCA: Principal Components 	Argument type:	multilayer EIGEN: Eigen Vectors 	Argument type:	source 	Acceptable values: 		- Path to a vector layer GRIDS: Grids 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer
##'
##' @title QGIS algorithm - Inverse principal components rotation
##'
##' @param PCA `multilayer` - Principal Components. .
##' @param EIGEN `source` - Eigen Vectors. Path to a vector layer.
##' @param GRIDS `rasterDestination` - Grids. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * GRIDS - outputRaster - Grids
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_inverseprincipalcomponentsrotation <- function(PCA = qgisprocess:::qgis_default_value(), EIGEN = qgisprocess:::qgis_default_value(), GRIDS = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:inverseprincipalcomponentsrotation")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:inverseprincipalcomponentsrotation", `PCA` = PCA, `EIGEN` = EIGEN, `GRIDS` = GRIDS,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:inverseprincipalcomponentsrotation", `PCA` = PCA, `EIGEN` = EIGEN, `GRIDS` = GRIDS,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "GRIDS")
  }
}