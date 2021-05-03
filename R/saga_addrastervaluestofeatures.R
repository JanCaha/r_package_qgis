##' QGIS Algorithm provided by SAGA Add raster values to features (saga:addrastervaluestofeatures)
##'
##' @title QGIS algorithm Add raster values to features
##'
##' @param SHAPES `source` - Shapes. Path to a vector layer.
##' @param GRIDS `multilayer` - Grids. .
##' @param RESAMPLING `enum`  of `("[0] Nearest Neighbor", "[1] Bilinear Interpolation", "[2] Bicubic Spline Interpolation", "[3] B-Spline Interpolation")` - Interpolation. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param RESULT `vectorDestination` - Result. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * RESULT - outputVector - Result
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_addrastervaluestofeatures <- function(SHAPES = qgisprocess::qgis_default_value(), GRIDS = qgisprocess::qgis_default_value(), RESAMPLING = qgisprocess::qgis_default_value(), RESULT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("saga:addrastervaluestofeatures")

  output <- qgisprocess::qgis_run_algorithm("saga:addrastervaluestofeatures", `SHAPES` = SHAPES, `GRIDS` = GRIDS, `RESAMPLING` = RESAMPLING, `RESULT` = RESULT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "RESULT")
  }
}