##' QGIS Algorithm provided by SAGA Next Gen Import wasp terrain map file (sagang:importwaspterrainmapfile). ---------------- Arguments ----------------  SHAPES: Contour Lines 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer FILE: File Name 	Default value:	False 	Argument type:	file 	Acceptable values: 		- Path to a file METHOD: Input Specification 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) elevation 		- 1: (1) roughness 		- 2: (2) elevation and roughness 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3'
##'
##' @title QGIS algorithm - Import wasp terrain map file
##'
##' @param SHAPES `vectorDestination` - Contour Lines. Path for new vector layer.
##' @param FILE `file` - File Name. Path to a file.
##' @param METHOD `enum`  of `("(0) elevation", "(1) roughness", "(2) elevation and roughness")` - Input Specification. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * SHAPES - outputVector - Contour Lines
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_importwaspterrainmapfile <- function(SHAPES = qgisprocess:::qgis_default_value(), FILE = qgisprocess:::qgis_default_value(), METHOD = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:importwaspterrainmapfile")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:importwaspterrainmapfile", `SHAPES` = SHAPES, `FILE` = FILE, `METHOD` = METHOD,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:importwaspterrainmapfile", `SHAPES` = SHAPES, `FILE` = FILE, `METHOD` = METHOD,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "SHAPES")
  }
}