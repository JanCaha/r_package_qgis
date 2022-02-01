##' QGIS Algorithm provided by SAGA Raster division (saga:rasterdivision)
##'
##' @title QGIS algorithm Raster division
##'
##' @param A `raster` - Dividend. Path to a raster layer.
##' @param B `raster` - Divisor. Path to a raster layer.
##' @param C `rasterDestination` - Quotient. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * C - outputRaster - Quotient
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_rasterdivision <- function(A = qgisprocess::qgis_default_value(), B = qgisprocess::qgis_default_value(), C = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("saga:rasterdivision")

  output <- qgisprocess::qgis_run_algorithm("saga:rasterdivision", `A` = A, `B` = B, `C` = C,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "C")
  }
}