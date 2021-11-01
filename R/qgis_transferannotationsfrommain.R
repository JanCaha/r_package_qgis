##' QGIS Algorithm provided by QGIS (native c++) Transfer annotations from main layer (native:transferannotationsfrommain)
##'
##' @title QGIS algorithm Transfer annotations from main layer
##'
##' @param LAYER_NAME `string` - New layer name. String value.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputLayer - New annotation layer
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_transferannotationsfrommain <- function(LAYER_NAME = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("native:transferannotationsfrommain")

  output <- qgisprocess::qgis_run_algorithm("native:transferannotationsfrommain", `LAYER_NAME` = LAYER_NAME,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}