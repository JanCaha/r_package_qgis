##' QGIS Algorithm provided by QGIS Keep N biggest parts (qgis:keepnbiggestparts)
##'
##' @title QGIS algorithm Keep N biggest parts
##'
##' @param POLYGONS `source` - Polygons. Path to a vector layer.
##' @param PARTS `number` - Parts to keep. A numeric value.
##' @param OUTPUT `sink` - Parts. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Parts
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_keepnbiggestparts <- function(POLYGONS = qgisprocess::qgis_default_value(), PARTS = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("qgis:keepnbiggestparts")
  output <- qgisprocess::qgis_run_algorithm("qgis:keepnbiggestparts",`POLYGONS` = POLYGONS, `PARTS` = PARTS, `OUTPUT` = OUTPUT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}