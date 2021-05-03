##' QGIS Algorithm provided by QGIS (native c++) Centroids (native:centroids)
##'
##' @title QGIS algorithm Centroids
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param ALL_PARTS `boolean` - Create centroid for each part. 1 for true/yes. 0 for false/no.
##' @param OUTPUT `sink` - Centroids. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Centroids
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_centroids <- function(INPUT = qgisprocess::qgis_default_value(), ALL_PARTS = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_QGIS_versions()
  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("native:centroids")
  output <- qgisprocess::qgis_run_algorithm("native:centroids",`INPUT` = INPUT, `ALL_PARTS` = ALL_PARTS, `OUTPUT` = OUTPUT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}