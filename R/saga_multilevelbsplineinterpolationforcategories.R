##' QGIS Algorithm provided by SAGA Multilevel b-spline interpolation for categories (saga:multilevelbsplineinterpolationforcategories)
##'
##' @title QGIS algorithm Multilevel b-spline interpolation for categories
##'
##' @param SHAPES `source` - Points. Path to a vector layer.
##' @param FIELD `field` - Attribute. The name of an existing field. ; delimited list of existing field names.
##' @param TARGET_USER_XMIN_TARGET_USER_XMAX_TARGET_USER_YMIN_TARGET_USER_YMAX `extent` - Output extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used.. Original algorithm parameter name: TARGET_USER_XMIN TARGET_USER_XMAX TARGET_USER_YMIN TARGET_USER_YMAX.
##' @param TARGET_USER_SIZE `number` - Cellsize. A numeric value.
##' @param TARGET_USER_FITS `enum`  of `("[0] nodes", "[1] cells")` - Fit. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param TARGET_TEMPLATE `raster` - Target system. Path to a raster layer.
##' @param TARGET_CATEGORIES `rasterDestination` - Categories. Path for new raster layer.
##' @param TARGET_PROPABILITY `rasterDestination` - Probability. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * TARGET_CATEGORIES - outputRaster - Categories
##' * TARGET_PROPABILITY - outputRaster - Probability
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_multilevelbsplineinterpolationforcategories <- function(SHAPES = qgisprocess::qgis_default_value(), FIELD = qgisprocess::qgis_default_value(), TARGET_USER_XMIN_TARGET_USER_XMAX_TARGET_USER_YMIN_TARGET_USER_YMAX = qgisprocess::qgis_default_value(), TARGET_USER_SIZE = qgisprocess::qgis_default_value(), TARGET_USER_FITS = qgisprocess::qgis_default_value(), TARGET_TEMPLATE = qgisprocess::qgis_default_value(), TARGET_CATEGORIES = qgisprocess::qgis_default_value(), TARGET_PROPABILITY = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_QGIS_versions()
  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("saga:multilevelbsplineinterpolationforcategories")
  output <- qgisprocess::qgis_run_algorithm("saga:multilevelbsplineinterpolationforcategories",`SHAPES` = SHAPES, `FIELD` = FIELD, `TARGET_USER_XMIN TARGET_USER_XMAX TARGET_USER_YMIN TARGET_USER_YMAX` = TARGET_USER_XMIN_TARGET_USER_XMAX_TARGET_USER_YMIN_TARGET_USER_YMAX, `TARGET_USER_SIZE` = TARGET_USER_SIZE, `TARGET_USER_FITS` = TARGET_USER_FITS, `TARGET_TEMPLATE` = TARGET_TEMPLATE, `TARGET_CATEGORIES` = TARGET_CATEGORIES, `TARGET_PROPABILITY` = TARGET_PROPABILITY,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "TARGET_CATEGORIES")
  }
}