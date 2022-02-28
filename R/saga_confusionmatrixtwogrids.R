##' QGIS Algorithm provided by SAGA Confusion matrix (two grids) (saga:confusionmatrixtwogrids)
##'
##' @title QGIS algorithm Confusion matrix (two grids)
##'
##' @param ONE `raster` - Classification 1. Path to a raster layer.
##' @param ONE_LUT `source` - Look-up Table. Path to a vector layer.
##' @param ONE_LUT_MIN `source` - Value. Path to a vector layer.
##' @param ONE_LUT_MAX `source` - Value (Maximum). Path to a vector layer.
##' @param ONE_LUT_NAM `source` - Name. Path to a vector layer.
##' @param TWO `raster` - Classification 2. Path to a raster layer.
##' @param TWO_LUT `source` - Look-up Table. Path to a vector layer.
##' @param TWO_LUT_MIN `source` - Value. Path to a vector layer.
##' @param TWO_LUT_MAX `source` - Value (Maximum). Path to a vector layer.
##' @param TWO_LUT_NAM `source` - Name. Path to a vector layer.
##' @param COMBINED `rasterDestination` - Combined Classes. Path for new raster layer.
##' @param NOCHANGE `boolean` - Report Unchanged Classes. 1 for true/yes. 0 for false/no.
##' @param CONFUSION `vectorDestination` - Confusion Matrix. Path for new vector layer.
##' @param OUTPUT `enum`  of `("[0] cells", "[1] percent", "[2] area")` - Output as.... Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param CLASSES `vectorDestination` - Class Values. Path for new vector layer.
##' @param SUMMARY `vectorDestination` - Summary. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * CLASSES - outputVector - Class Values
##' * COMBINED - outputRaster - Combined Classes
##' * CONFUSION - outputVector - Confusion Matrix
##' * SUMMARY - outputVector - Summary
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_confusionmatrixtwogrids <- function(ONE = qgisprocess::qgis_default_value(), ONE_LUT = qgisprocess::qgis_default_value(), ONE_LUT_MIN = qgisprocess::qgis_default_value(), ONE_LUT_MAX = qgisprocess::qgis_default_value(), ONE_LUT_NAM = qgisprocess::qgis_default_value(), TWO = qgisprocess::qgis_default_value(), TWO_LUT = qgisprocess::qgis_default_value(), TWO_LUT_MIN = qgisprocess::qgis_default_value(), TWO_LUT_MAX = qgisprocess::qgis_default_value(), TWO_LUT_NAM = qgisprocess::qgis_default_value(), COMBINED = qgisprocess::qgis_default_value(), NOCHANGE = qgisprocess::qgis_default_value(), CONFUSION = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(), CLASSES = qgisprocess::qgis_default_value(), SUMMARY = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("saga:confusionmatrixtwogrids")

  output <- qgisprocess::qgis_run_algorithm("saga:confusionmatrixtwogrids", `ONE` = ONE, `ONE_LUT` = ONE_LUT, `ONE_LUT_MIN` = ONE_LUT_MIN, `ONE_LUT_MAX` = ONE_LUT_MAX, `ONE_LUT_NAM` = ONE_LUT_NAM, `TWO` = TWO, `TWO_LUT` = TWO_LUT, `TWO_LUT_MIN` = TWO_LUT_MIN, `TWO_LUT_MAX` = TWO_LUT_MAX, `TWO_LUT_NAM` = TWO_LUT_NAM, `COMBINED` = COMBINED, `NOCHANGE` = NOCHANGE, `CONFUSION` = CONFUSION, `OUTPUT` = OUTPUT, `CLASSES` = CLASSES, `SUMMARY` = SUMMARY,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "CLASSES")
  }
}