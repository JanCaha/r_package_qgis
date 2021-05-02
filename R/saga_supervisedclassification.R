##' QGIS Algorithm provided by SAGA Supervised classification (saga:supervisedclassification)
##'
##' @title QGIS algorithm Supervised classification
##'
##' @param GRIDS `multilayer` - Grids. .
##' @param ROI `source` - Training Areas. Path to a vector layer.
##' @param ROI_ID `field` - Class Identifier. The name of an existing field. ; delimited list of existing field names.
##' @param STATS `source` - Class Statistics. Path to a vector layer.
##' @param STATS_SRC `enum`  of `("[0] training areas", "[1] table")` - Get Class Statistics from.... Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param METHOD `enum`  of `("[0] Binary Encoding", "[1] Parallelepiped", "[2] Minimum Distance", "[3] Mahalanobis Distance", "[4] Maximum Likelihood", "[5] Spectral Angle Mapping", "[6] Winner Takes All")` - Method. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param NORMALISE `boolean` - Normalise. 1 for true/yes. 0 for false/no.
##' @param THRESHOLD_DIST `number` - Distance Threshold. A numeric value.
##' @param THRESHOLD_PROB `number` - Probability Threshold (Percent). A numeric value.
##' @param RELATIVE_PROB `enum`  of `("[0] absolute", "[1] relative")` - Probability Reference. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param THRESHOLD_ANGLE `number` - Spectral Angle Threshold (Degree). A numeric value.
##' @param WTA_0 `boolean` - Binary Encoding. 1 for true/yes. 0 for false/no.
##' @param WTA_1 `boolean` - Parallelepiped. 1 for true/yes. 0 for false/no.
##' @param WTA_2 `boolean` - Minimum Distance. 1 for true/yes. 0 for false/no.
##' @param WTA_3 `boolean` - Mahalanobis Distance. 1 for true/yes. 0 for false/no.
##' @param WTA_4 `boolean` - Maximum Likelihood. 1 for true/yes. 0 for false/no.
##' @param WTA_5 `boolean` - Spectral Angle Mapping. 1 for true/yes. 0 for false/no.
##' @param CLASS_INFO `vectorDestination` - Class Information. Path for new vector layer.
##' @param CLASSES `rasterDestination` - Classification. Path for new raster layer.
##' @param QUALITY `rasterDestination` - Quality. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * CLASS_INFO - outputVector - Class Information
##' * CLASSES - outputRaster - Classification
##' * QUALITY - outputRaster - Quality
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_supervisedclassification <- function(GRIDS = qgisprocess::qgis_default_value(), ROI = qgisprocess::qgis_default_value(), ROI_ID = qgisprocess::qgis_default_value(), STATS = qgisprocess::qgis_default_value(), STATS_SRC = qgisprocess::qgis_default_value(), METHOD = qgisprocess::qgis_default_value(), NORMALISE = qgisprocess::qgis_default_value(), THRESHOLD_DIST = qgisprocess::qgis_default_value(), THRESHOLD_PROB = qgisprocess::qgis_default_value(), RELATIVE_PROB = qgisprocess::qgis_default_value(), THRESHOLD_ANGLE = qgisprocess::qgis_default_value(), WTA_0 = qgisprocess::qgis_default_value(), WTA_1 = qgisprocess::qgis_default_value(), WTA_2 = qgisprocess::qgis_default_value(), WTA_3 = qgisprocess::qgis_default_value(), WTA_4 = qgisprocess::qgis_default_value(), WTA_5 = qgisprocess::qgis_default_value(), CLASS_INFO = qgisprocess::qgis_default_value(), CLASSES = qgisprocess::qgis_default_value(), QUALITY = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("saga:supervisedclassification")
  output <- qgisprocess::qgis_run_algorithm("saga:supervisedclassification",`GRIDS` = GRIDS, `ROI` = ROI, `ROI_ID` = ROI_ID, `STATS` = STATS, `STATS_SRC` = STATS_SRC, `METHOD` = METHOD, `NORMALISE` = NORMALISE, `THRESHOLD_DIST` = THRESHOLD_DIST, `THRESHOLD_PROB` = THRESHOLD_PROB, `RELATIVE_PROB` = RELATIVE_PROB, `THRESHOLD_ANGLE` = THRESHOLD_ANGLE, `WTA_0` = WTA_0, `WTA_1` = WTA_1, `WTA_2` = WTA_2, `WTA_3` = WTA_3, `WTA_4` = WTA_4, `WTA_5` = WTA_5, `CLASS_INFO` = CLASS_INFO, `CLASSES` = CLASSES, `QUALITY` = QUALITY,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "CLASS_INFO")
  }
}