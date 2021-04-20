##' QGIS Algorithm provided by SAGA Polynomial regression (saga:polynomialregression)
##'
##' @title QGIS algorithm Polynomial regression
##'
##' @param POINTS `source` - Points. Path to a vector layer.
##' @param ATTRIBUTE `field` - Attribute. The name of an existing field. ; delimited list of existing field names.
##' @param POLYNOM `enum`  of `("[0] simple planar surface", "[1] bi-linear saddle", "[2] quadratic surface", "[3] cubic surface", "[4] user defined")` - Polynom. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param XORDER `number` - Maximum X Order. A numeric value.
##' @param YORDER `number` - Maximum Y Order. A numeric value.
##' @param TORDER `number` - Maximum Total Order. A numeric value.
##' @param TARGET_USER_XMIN_TARGET_USER_XMAX_TARGET_USER_YMIN_TARGET_USER_YMAX `extent` - Output extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used.. Original algorithm parameter name: TARGET_USER_XMIN TARGET_USER_XMAX TARGET_USER_YMIN TARGET_USER_YMAX.
##' @param TARGET_USER_SIZE `number` - Cellsize. A numeric value.
##' @param TARGET_USER_FITS `enum`  of `("[0] nodes", "[1] cells")` - Fit. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param TARGET_OUT_GRID `rasterDestination` - Grid. Path for new raster layer.
##' @param RESIDUALS `vectorDestination` - Residuals. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * TARGET_OUT_GRID - outputRaster - Grid
##' * RESIDUALS - outputVector - Residuals
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_polynomialregression <- function(POINTS = qgisprocess::qgis_default_value(), ATTRIBUTE = qgisprocess::qgis_default_value(), POLYNOM = qgisprocess::qgis_default_value(), XORDER = qgisprocess::qgis_default_value(), YORDER = qgisprocess::qgis_default_value(), TORDER = qgisprocess::qgis_default_value(), TARGET_USER_XMIN_TARGET_USER_XMAX_TARGET_USER_YMIN_TARGET_USER_YMAX = qgisprocess::qgis_default_value(), TARGET_USER_SIZE = qgisprocess::qgis_default_value(), TARGET_USER_FITS = qgisprocess::qgis_default_value(), TARGET_OUT_GRID = qgisprocess::qgis_default_value(), RESIDUALS = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("saga:polynomialregression",`POINTS` = POINTS, `ATTRIBUTE` = ATTRIBUTE, `POLYNOM` = POLYNOM, `XORDER` = XORDER, `YORDER` = YORDER, `TORDER` = TORDER, `TARGET_USER_XMIN TARGET_USER_XMAX TARGET_USER_YMIN TARGET_USER_YMAX` = TARGET_USER_XMIN_TARGET_USER_XMAX_TARGET_USER_YMIN_TARGET_USER_YMAX, `TARGET_USER_SIZE` = TARGET_USER_SIZE, `TARGET_USER_FITS` = TARGET_USER_FITS, `TARGET_OUT_GRID` = TARGET_OUT_GRID, `RESIDUALS` = RESIDUALS,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "TARGET_OUT_GRID")
  }
}