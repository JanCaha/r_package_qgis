##' QGIS Algorithm provided by QGIS Delaunay triangulation (qgis:delaunaytriangulation)
##'
##' @title QGIS algorithm Delaunay triangulation
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param OUTPUT `sink` - Delaunay triangulation. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Delaunay triangulation
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_delaunaytriangulation <- function(INPUT = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_QGIS_versions()
  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("qgis:delaunaytriangulation")
  output <- qgisprocess::qgis_run_algorithm("qgis:delaunaytriangulation",`INPUT` = INPUT, `OUTPUT` = OUTPUT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}