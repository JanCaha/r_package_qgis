##' QGIS Algorithm provided by SAGA Function (saga:function)
##'
##' @title QGIS algorithm Function
##'
##' @param XMIN `number` - xmin. A numeric value.
##' @param XMAX `number` - xmax. A numeric value.
##' @param YMIN `number` - ymin. A numeric value.
##' @param YMAX `number` - ymax. A numeric value.
##' @param FORMUL `string` - Formula. String value.
##' @param RESULT `rasterDestination` - Function. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * RESULT - outputRaster - Function
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_function <- function(XMIN = qgisprocess::qgis_default_value(), XMAX = qgisprocess::qgis_default_value(), YMIN = qgisprocess::qgis_default_value(), YMAX = qgisprocess::qgis_default_value(), FORMUL = qgisprocess::qgis_default_value(), RESULT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("saga:function")

  output <- qgisprocess::qgis_run_algorithm("saga:function", `XMIN` = XMIN, `XMAX` = XMAX, `YMIN` = YMIN, `YMAX` = YMAX, `FORMUL` = FORMUL, `RESULT` = RESULT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "RESULT")
  }
}