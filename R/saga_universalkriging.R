##' QGIS Algorithm provided by SAGA Universal kriging (saga:universalkriging)
##'
##' @title QGIS algorithm Universal kriging
##'
##' @param POINTS `source` - Points. Path to a vector layer.
##' @param FIELD `field` - Attribute. The name of an existing field. ; delimited list of existing field names.
##' @param TQUALITY `enum`  of `("[0] standard deviation", "[1] variance")` - Type of Quality Measure. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param LOG `boolean` - Logarithmic Transformation. 1 for true/yes. 0 for false/no.
##' @param BLOCK `boolean` - Block Kriging. 1 for true/yes. 0 for false/no.
##' @param DBLOCK `number` - Block Size. A numeric value.
##' @param VAR_MAXDIST `number` - Maximum Distance. A numeric value.
##' @param VAR_NCLASSES `number` - Lag Distance Classes. A numeric value.
##' @param VAR_NSKIP `number` - Skip. A numeric value.
##' @param VAR_MODEL `string` - Variogram Model. String value.
##' @param TARGET_USER_XMIN_TARGET_USER_XMAX_TARGET_USER_YMIN_TARGET_USER_YMAX `extent` - Output extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used.. Original algorithm parameter name: TARGET_USER_XMIN TARGET_USER_XMAX TARGET_USER_YMIN TARGET_USER_YMAX.
##' @param TARGET_USER_SIZE `number` - Cellsize. A numeric value.
##' @param TARGET_USER_FITS `enum`  of `("[0] nodes", "[1] cells")` - Fit. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param PREDICTION `rasterDestination` - Prediction. Path for new raster layer.
##' @param VARIANCE `rasterDestination` - Quality Measure. Path for new raster layer.
##' @param SEARCH_RANGE `enum`  of `("[0] local", "[1] global")` - Search Range. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param SEARCH_RADIUS `number` - Maximum Search Distance. A numeric value.
##' @param SEARCH_POINTS_ALL `enum`  of `("[0] maximum number of nearest points", "[1] all points within search distance")` - Number of Points. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param SEARCH_POINTS_MIN `number` - Minimum. A numeric value.
##' @param SEARCH_POINTS_MAX `number` - Maximum. A numeric value.
##' @param SEARCH_DIRECTION `enum`  of `("[0] all directions", "[1] quadrants")` - Search Direction. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * PREDICTION - outputRaster - Prediction
##' * VARIANCE - outputRaster - Quality Measure
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_universalkriging <- function(POINTS = qgisprocess::qgis_default_value(), FIELD = qgisprocess::qgis_default_value(), TQUALITY = qgisprocess::qgis_default_value(), LOG = qgisprocess::qgis_default_value(), BLOCK = qgisprocess::qgis_default_value(), DBLOCK = qgisprocess::qgis_default_value(), VAR_MAXDIST = qgisprocess::qgis_default_value(), VAR_NCLASSES = qgisprocess::qgis_default_value(), VAR_NSKIP = qgisprocess::qgis_default_value(), VAR_MODEL = qgisprocess::qgis_default_value(), TARGET_USER_XMIN_TARGET_USER_XMAX_TARGET_USER_YMIN_TARGET_USER_YMAX = qgisprocess::qgis_default_value(), TARGET_USER_SIZE = qgisprocess::qgis_default_value(), TARGET_USER_FITS = qgisprocess::qgis_default_value(), PREDICTION = qgisprocess::qgis_default_value(), VARIANCE = qgisprocess::qgis_default_value(), SEARCH_RANGE = qgisprocess::qgis_default_value(), SEARCH_RADIUS = qgisprocess::qgis_default_value(), SEARCH_POINTS_ALL = qgisprocess::qgis_default_value(), SEARCH_POINTS_MIN = qgisprocess::qgis_default_value(), SEARCH_POINTS_MAX = qgisprocess::qgis_default_value(), SEARCH_DIRECTION = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_QGIS_versions()
  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("saga:universalkriging")
  output <- qgisprocess::qgis_run_algorithm("saga:universalkriging",`POINTS` = POINTS, `FIELD` = FIELD, `TQUALITY` = TQUALITY, `LOG` = LOG, `BLOCK` = BLOCK, `DBLOCK` = DBLOCK, `VAR_MAXDIST` = VAR_MAXDIST, `VAR_NCLASSES` = VAR_NCLASSES, `VAR_NSKIP` = VAR_NSKIP, `VAR_MODEL` = VAR_MODEL, `TARGET_USER_XMIN TARGET_USER_XMAX TARGET_USER_YMIN TARGET_USER_YMAX` = TARGET_USER_XMIN_TARGET_USER_XMAX_TARGET_USER_YMIN_TARGET_USER_YMAX, `TARGET_USER_SIZE` = TARGET_USER_SIZE, `TARGET_USER_FITS` = TARGET_USER_FITS, `PREDICTION` = PREDICTION, `VARIANCE` = VARIANCE, `SEARCH_RANGE` = SEARCH_RANGE, `SEARCH_RADIUS` = SEARCH_RADIUS, `SEARCH_POINTS_ALL` = SEARCH_POINTS_ALL, `SEARCH_POINTS_MIN` = SEARCH_POINTS_MIN, `SEARCH_POINTS_MAX` = SEARCH_POINTS_MAX, `SEARCH_DIRECTION` = SEARCH_DIRECTION,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "PREDICTION")
  }
}