##' QGIS Algorithm provided by QGIS Set style for vector layer (qgis:setstyleforvectorlayer)
##'
##' @title QGIS algorithm Set style for vector layer
##'
##' @param INPUT `vector` - Vector layer. Path to a vector layer.
##' @param STYLE `file` - Style file. Path to a file.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * INPUT - outputVector - Styled
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_setstyleforvectorlayer <- function(INPUT = qgisprocess::qgis_default_value(), STYLE = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("qgis:setstyleforvectorlayer",`INPUT` = INPUT, `STYLE` = STYLE,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "INPUT")
  }
}