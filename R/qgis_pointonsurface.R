##' QGIS Algorithm provided by QGIS (native c++) Point on surface (native:pointonsurface)
##'
##' @title QGIS algorithm Point on surface
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param ALL_PARTS `boolean` - Create point on surface for each part. 1 for true/yes. 0 for false/no.
##' @param OUTPUT `sink` - Point. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Point
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_pointonsurface <- function(INPUT = qgisprocess::qgis_default_value(), ALL_PARTS = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("native:pointonsurface")

  output <- qgisprocess::qgis_run_algorithm("native:pointonsurface", `INPUT` = INPUT, `ALL_PARTS` = ALL_PARTS, `OUTPUT` = OUTPUT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}