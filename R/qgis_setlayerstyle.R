##' QGIS Algorithm provided by QGIS (native c++) Set layer style (native:setlayerstyle). Applies the style to a layer. The style must be defined as QML file.
##'
##' @title QGIS algorithm - Set layer style
##'
##' @param INPUT `layer` - Layer. Path to a vector, raster or mesh layer.
##' @param STYLE `file` - Style file. Path to a file.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputLayer - Styled
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_setlayerstyle <- function(INPUT = qgisprocess:::qgis_default_value(), STYLE = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:setlayerstyle")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:setlayerstyle", `INPUT` = INPUT, `STYLE` = STYLE,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:setlayerstyle", `INPUT` = INPUT, `STYLE` = STYLE,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}