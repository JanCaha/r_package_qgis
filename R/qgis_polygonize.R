##' QGIS Algorithm provided by QGIS (native c++) Polygonize (native:polygonize)
##'
##' @title QGIS algorithm Polygonize
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param KEEP_FIELDS `boolean` - Keep fields from the input layer. 1 for true/yes. 0 for false/no.
##' @param OUTPUT `sink` - Polygons. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Polygons
##' * NUM_POLYGONS - outputNumber - Number of polygons
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_polygonize <- function(INPUT = qgisprocess::qgis_default_value(), KEEP_FIELDS = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("native:polygonize")

  output <- qgisprocess::qgis_run_algorithm("native:polygonize", `INPUT` = INPUT, `KEEP_FIELDS` = KEEP_FIELDS, `OUTPUT` = OUTPUT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}