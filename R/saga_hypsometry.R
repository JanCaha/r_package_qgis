##' QGIS Algorithm provided by SAGA Hypsometry (saga:hypsometry)
##'
##' @title QGIS algorithm Hypsometry
##'
##' @param ELEVATION `raster` - Elevation. Path to a raster layer.
##' @param COUNT `number` - Number of Classes. A numeric value.
##' @param SORTING `enum`  of `("[0] up", "[1] down")` - Sort. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param METHOD `enum`  of `("[0] height", "[1] area")` - Classification Constant. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param BZRANGE `boolean` - Use Z-Range. 1 for true/yes. 0 for false/no.
##' @param ZRANGE_MIN `number` - Z-Range Min. A numeric value.
##' @param ZRANGE_MAX `number` - Z-Range Max. A numeric value.
##' @param TABLE `vectorDestination` - Hypsometry. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * TABLE - outputVector - Hypsometry
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_hypsometry <- function(ELEVATION = qgisprocess::qgis_default_value(), COUNT = qgisprocess::qgis_default_value(), SORTING = qgisprocess::qgis_default_value(), METHOD = qgisprocess::qgis_default_value(), BZRANGE = qgisprocess::qgis_default_value(), ZRANGE_MIN = qgisprocess::qgis_default_value(), ZRANGE_MAX = qgisprocess::qgis_default_value(), TABLE = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("saga:hypsometry")

  output <- qgisprocess::qgis_run_algorithm("saga:hypsometry", `ELEVATION` = ELEVATION, `COUNT` = COUNT, `SORTING` = SORTING, `METHOD` = METHOD, `BZRANGE` = BZRANGE, `ZRANGE_MIN` = ZRANGE_MIN, `ZRANGE_MAX` = ZRANGE_MAX, `TABLE` = TABLE,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "TABLE")
  }
}