##' QGIS Algorithm provided by SAGA Next Gen Add raster values to points (sagang:addrastervaluestopoints). ---------------- Arguments ----------------  SHAPES: Points 	Argument type:	source 	Acceptable values: 		- Path to a vector layer GRIDS: Grids 	Argument type:	multilayer RESULT: Result 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer RESAMPLING: Resampling 	Default value:	3 	Argument type:	enum 	Available values: 		- 0: (0) Nearest Neighbour 		- 1: (1) Bilinear Interpolation 		- 2: (2) Bicubic Spline Interpolation 		- 3: (3) B-Spline Interpolation 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3'
##'
##' @title QGIS algorithm - Add raster values to points
##'
##' @param SHAPES `source` - Points. Path to a vector layer.
##' @param GRIDS `multilayer` - Grids. .
##' @param RESULT `vectorDestination` - Result. Path for new vector layer.
##' @param RESAMPLING `enum`  of `("(0) Nearest Neighbour", "(1) Bilinear Interpolation", "(2) Bicubic Spline Interpolation", "(3) B-Spline Interpolation")` - Resampling. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * RESULT - outputVector - Result
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_addrastervaluestopoints <- function(SHAPES = qgisprocess:::qgis_default_value(), GRIDS = qgisprocess:::qgis_default_value(), RESULT = qgisprocess:::qgis_default_value(), RESAMPLING = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:addrastervaluestopoints")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:addrastervaluestopoints", `SHAPES` = SHAPES, `GRIDS` = GRIDS, `RESULT` = RESULT, `RESAMPLING` = RESAMPLING,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:addrastervaluestopoints", `SHAPES` = SHAPES, `GRIDS` = GRIDS, `RESULT` = RESULT, `RESAMPLING` = RESAMPLING,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "RESULT")
  }
}