##' QGIS Algorithm provided by QGIS Rectangles, ovals, diamonds (variable) (qgis:rectanglesovalsdiamondsvariable)
##'
##' @title QGIS algorithm Rectangles, ovals, diamonds (variable)
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param SHAPE `enum`  of `("Rectangles", "Diamonds", "Ovals")` - Buffer shape. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param WIDTH `field` - Width field. The name of an existing field. ; delimited list of existing field names.
##' @param HEIGHT `field` - Height field. The name of an existing field. ; delimited list of existing field names.
##' @param ROTATION `field` - Rotation field. The name of an existing field. ; delimited list of existing field names.
##' @param SEGMENTS `number` - Number of segments. A numeric value.
##' @param OUTPUT `sink` - Output. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Output
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_rectanglesovalsdiamondsvariable <- function(INPUT = qgisprocess:::qgis_default_value(), SHAPE = qgisprocess:::qgis_default_value(), WIDTH = qgisprocess:::qgis_default_value(), HEIGHT = qgisprocess:::qgis_default_value(), ROTATION = qgisprocess:::qgis_default_value(), SEGMENTS = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("qgis:rectanglesovalsdiamondsvariable")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("qgis:rectanglesovalsdiamondsvariable", `INPUT` = INPUT, `SHAPE` = SHAPE, `WIDTH` = WIDTH, `HEIGHT` = HEIGHT, `ROTATION` = ROTATION, `SEGMENTS` = SEGMENTS, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("qgis:rectanglesovalsdiamondsvariable", `INPUT` = INPUT, `SHAPE` = SHAPE, `WIDTH` = WIDTH, `HEIGHT` = HEIGHT, `ROTATION` = ROTATION, `SEGMENTS` = SEGMENTS, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}