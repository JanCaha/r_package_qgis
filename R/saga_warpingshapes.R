##' QGIS Algorithm provided by SAGA Warping shapes (saga:warpingshapes)
##'
##' @title QGIS algorithm Warping shapes
##'
##' @param REF_SOURCE `source` - Reference Points (Origin). Path to a vector layer.
##' @param REF_TARGET `source` - Reference Points (Projection). Path to a vector layer.
##' @param XFIELD `source` - x Position. Path to a vector layer.
##' @param YFIELD `source` - y Position. Path to a vector layer.
##' @param METHOD `enum`  of `("[0] Automatic", "[1] Triangulation", "[2] Spline", "[3] Affine", "[4] 1st Order Polynomial", "[5] 2nd Order Polynomial", "[6] 3rd Order Polynomial", "[7] Polynomial, Order")` - Method. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param ORDER `number` - Polynomial Order. A numeric value.
##' @param INPUT `source` - Input. Path to a vector layer.
##' @param OUTPUT `vectorDestination` - Output. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Output
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_warpingshapes <- function(REF_SOURCE = qgisprocess::qgis_default_value(), REF_TARGET = qgisprocess::qgis_default_value(), XFIELD = qgisprocess::qgis_default_value(), YFIELD = qgisprocess::qgis_default_value(), METHOD = qgisprocess::qgis_default_value(), ORDER = qgisprocess::qgis_default_value(), INPUT = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("saga:warpingshapes")
  output <- qgisprocess::qgis_run_algorithm("saga:warpingshapes",`REF_SOURCE` = REF_SOURCE, `REF_TARGET` = REF_TARGET, `XFIELD` = XFIELD, `YFIELD` = YFIELD, `METHOD` = METHOD, `ORDER` = ORDER, `INPUT` = INPUT, `OUTPUT` = OUTPUT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}