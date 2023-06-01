##' QGIS Algorithm provided by QGIS (native c++) Set layer encoding (native:setlayerencoding)
##'
##' @title QGIS algorithm Set layer encoding
##'
##' @param INPUT `vector` - Input layer. Path to a vector layer.
##' @param ENCODING `string` - Encoding. String value.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Output layer
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_setlayerencoding <- function(INPUT = qgisprocess:::qgis_default_value(), ENCODING = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:setlayerencoding")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:setlayerencoding", `INPUT` = INPUT, `ENCODING` = ENCODING,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:setlayerencoding", `INPUT` = INPUT, `ENCODING` = ENCODING,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}