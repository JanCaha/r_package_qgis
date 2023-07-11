##' QGIS Algorithm provided by SAGA Next Gen Copy shapes (sagang:copyshapes). ---------------- Arguments ----------------  SHAPES: Shapes 	Argument type:	source 	Acceptable values: 		- Path to a vector layer COPY: Copy 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer
##'
##' @title QGIS algorithm - Copy shapes
##'
##' @param SHAPES `source` - Shapes. Path to a vector layer.
##' @param COPY `vectorDestination` - Copy. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * COPY - outputVector - Copy
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_copyshapes <- function(SHAPES = qgisprocess:::qgis_default_value(), COPY = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:copyshapes")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:copyshapes", `SHAPES` = SHAPES, `COPY` = COPY,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:copyshapes", `SHAPES` = SHAPES, `COPY` = COPY,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "COPY")
  }
}