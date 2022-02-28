##' QGIS Algorithm provided by SAGA Confusion matrix (polygons / grid) (saga:confusionmatrixpolygonsgrid)
##'
##' @title QGIS algorithm Confusion matrix (polygons / grid)
##'
##' @param GRID `raster` - Classification. Path to a raster layer.
##' @param GRID_LUT `source` - Look-up Table. Path to a vector layer.
##' @param GRID_LUT_MIN `field` - Value. The name of an existing field. ; delimited list of existing field names.
##' @param GRID_LUT_MAX `field` - Value (Maximum). The name of an existing field. ; delimited list of existing field names.
##' @param GRID_LUT_NAM `field` - Name. The name of an existing field. ; delimited list of existing field names.
##' @param POLYGONS `source` - Polygons. Path to a vector layer.
##' @param FIELD `field` - Class Values. The name of an existing field. ; delimited list of existing field names.
##' @param CONFUSION `vectorDestination` - Confusion Matrix. Path for new vector layer.
##' @param CLASSES `vectorDestination` - Class Values. Path for new vector layer.
##' @param SUMMARY `vectorDestination` - Summary. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * CLASSES - outputVector - Class Values
##' * CONFUSION - outputVector - Confusion Matrix
##' * SUMMARY - outputVector - Summary
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_confusionmatrixpolygonsgrid <- function(GRID = qgisprocess::qgis_default_value(), GRID_LUT = qgisprocess::qgis_default_value(), GRID_LUT_MIN = qgisprocess::qgis_default_value(), GRID_LUT_MAX = qgisprocess::qgis_default_value(), GRID_LUT_NAM = qgisprocess::qgis_default_value(), POLYGONS = qgisprocess::qgis_default_value(), FIELD = qgisprocess::qgis_default_value(), CONFUSION = qgisprocess::qgis_default_value(), CLASSES = qgisprocess::qgis_default_value(), SUMMARY = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("saga:confusionmatrixpolygonsgrid")

  output <- qgisprocess::qgis_run_algorithm("saga:confusionmatrixpolygonsgrid", `GRID` = GRID, `GRID_LUT` = GRID_LUT, `GRID_LUT_MIN` = GRID_LUT_MIN, `GRID_LUT_MAX` = GRID_LUT_MAX, `GRID_LUT_NAM` = GRID_LUT_NAM, `POLYGONS` = POLYGONS, `FIELD` = FIELD, `CONFUSION` = CONFUSION, `CLASSES` = CLASSES, `SUMMARY` = SUMMARY,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "CLASSES")
  }
}