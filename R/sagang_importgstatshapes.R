##' QGIS Algorithm provided by SAGA Next Gen Import gstat shapes (sagang:importgstatshapes). ---------------- Arguments ----------------  SHAPES: Shapes 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer FILENAME: File 	Default value:	False 	Argument type:	file 	Acceptable values: 		- Path to a file
##'
##' @title QGIS algorithm - Import gstat shapes
##'
##' @param SHAPES `vectorDestination` - Shapes. Path for new vector layer.
##' @param FILENAME `file` - File. Path to a file.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * SHAPES - outputVector - Shapes
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_importgstatshapes <- function(SHAPES = qgisprocess:::qgis_default_value(), FILENAME = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:importgstatshapes")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:importgstatshapes", `SHAPES` = SHAPES, `FILENAME` = FILENAME,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:importgstatshapes", `SHAPES` = SHAPES, `FILENAME` = FILENAME,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "SHAPES")
  }
}