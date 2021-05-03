##' QGIS Algorithm provided by SAGA Single value decomposition (opencv) (saga:singlevaluedecompositionopencv)
##'
##' @title QGIS algorithm Single value decomposition (opencv)
##'
##' @param INPUT `raster` - Input. Path to a raster layer.
##' @param OUTPUT `rasterDestination` - Output. Path for new raster layer.
##' @param RANGE_MIN `number` - Range (Min). A numeric value.
##' @param RANGE_MAX `number` - Range (Max). A numeric value.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputRaster - Output
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_singlevaluedecompositionopencv <- function(INPUT = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(), RANGE_MIN = qgisprocess::qgis_default_value(), RANGE_MAX = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("saga:singlevaluedecompositionopencv")

  output <- qgisprocess::qgis_run_algorithm("saga:singlevaluedecompositionopencv", `INPUT` = INPUT, `OUTPUT` = OUTPUT, `RANGE_MIN` = RANGE_MIN, `RANGE_MAX` = RANGE_MAX,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}