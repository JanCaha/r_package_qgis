##' QGIS Algorithm provided by QGIS Concave hull (alpha shapes) (qgis:concavehull)
##'
##' @title QGIS algorithm Concave hull (alpha shapes)
##'
##' @param INPUT `source` - Input point layer. Path to a vector layer.
##' @param ALPHA `number` - Threshold (0-1, where 1 is equivalent with Convex Hull). A numeric value.
##' @param HOLES `boolean` - Allow holes. 1 for true/yes. 0 for false/no.
##' @param NO_MULTIGEOMETRY `boolean` - Split multipart geometry into singleparts geometries. 1 for true/yes. 0 for false/no.
##' @param OUTPUT `sink` - Concave hull. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Concave hull
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_concavehull <- function(INPUT = qgisprocess::qgis_default_value(), ALPHA = qgisprocess::qgis_default_value(), HOLES = qgisprocess::qgis_default_value(), NO_MULTIGEOMETRY = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("qgis:concavehull",`INPUT` = INPUT, `ALPHA` = ALPHA, `HOLES` = HOLES, `NO_MULTIGEOMETRY` = NO_MULTIGEOMETRY, `OUTPUT` = OUTPUT,...)
  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
}
}