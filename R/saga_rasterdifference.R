##' QGIS Algorithm provided by SAGA Raster difference (saga:rasterdifference)
##'
##' @title QGIS algorithm Raster difference
##'
##' @param A `raster` - A. Path to a raster layer.
##' @param B `raster` - B. Path to a raster layer.
##' @param C `rasterDestination` - Difference (A - B). Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * C - outputRaster - Difference 
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_rasterdifference <- function(A = qgisprocess::qgis_default_value(), B = qgisprocess::qgis_default_value(), C = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("saga:rasterdifference")
  output <- qgisprocess::qgis_run_algorithm("saga:rasterdifference",`A` = A, `B` = B, `C` = C,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "C")
  }
}