##' QGIS Algorithm provided by SAGA Next Gen Grid system extent (sagang:gridsystemextent). ---------------- Arguments ----------------  EXTENT: Extent 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer BORDER: Border 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) grid cells 		- 1: (1) grid nodes 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3'
##'
##' @title QGIS algorithm - Grid system extent
##'
##' @param EXTENT `vectorDestination` - Extent. Path for new vector layer.
##' @param BORDER `enum`  of `("(0) grid cells", "(1) grid nodes")` - Border. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * EXTENT - outputVector - Extent
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_gridsystemextent <- function(EXTENT = qgisprocess:::qgis_default_value(), BORDER = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:gridsystemextent")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:gridsystemextent", `EXTENT` = EXTENT, `BORDER` = BORDER,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:gridsystemextent", `EXTENT` = EXTENT, `BORDER` = BORDER,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "EXTENT")
  }
}