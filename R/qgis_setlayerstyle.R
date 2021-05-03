##' QGIS Algorithm provided by QGIS (native c++) Set layer style (native:setlayerstyle)
##'
##' @title QGIS algorithm Set layer style
##'
##' @param INPUT `layer` - Layer. Path to a vector, raster or mesh layer.
##' @param STYLE `file` - Style file. Path to a file.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputLayer - Styled
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_setlayerstyle <- function(INPUT = qgisprocess::qgis_default_value(), STYLE = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("native:setlayerstyle")

  output <- qgisprocess::qgis_run_algorithm("native:setlayerstyle", `INPUT` = INPUT, `STYLE` = STYLE,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}