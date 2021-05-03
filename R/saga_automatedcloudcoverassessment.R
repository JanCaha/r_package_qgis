##' QGIS Algorithm provided by SAGA Automated cloud cover assessment (saga:automatedcloudcoverassessment)
##'
##' @title QGIS algorithm Automated cloud cover assessment
##'
##' @param BAND2 `raster` - Landsat Band 2. Path to a raster layer.
##' @param BAND3 `raster` - Landsat Band 3. Path to a raster layer.
##' @param BAND4 `raster` - Landsat Band 4. Path to a raster layer.
##' @param BAND5 `raster` - Landsat Band 5. Path to a raster layer.
##' @param BAND6 `raster` - Landsat Band 6. Path to a raster layer.
##' @param CLOUD `rasterDestination` - Cloud Cover. Path for new raster layer.
##' @param FILTER `boolean` - Apply post-processing filter to remove small holes. 1 for true/yes. 0 for false/no.
##' @param B56C `number` - B56 Composite (step 6). A numeric value.
##' @param B45R `number` - B45 Ratio: Desert detection (step 10). A numeric value.
##' @param CSIG `boolean` - Always use cloud signature (step 14). 1 for true/yes. 0 for false/no.
##' @param PASS2 `boolean` - Bypass second-pass processing, and merge warm (not ambiguous) and cold clouds. 1 for true/yes. 0 for false/no.
##' @param SHADOW `boolean` - Include a category for cloud shadows. 1 for true/yes. 0 for false/no.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * CLOUD - outputRaster - Cloud Cover
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_automatedcloudcoverassessment <- function(BAND2 = qgisprocess::qgis_default_value(), BAND3 = qgisprocess::qgis_default_value(), BAND4 = qgisprocess::qgis_default_value(), BAND5 = qgisprocess::qgis_default_value(), BAND6 = qgisprocess::qgis_default_value(), CLOUD = qgisprocess::qgis_default_value(), FILTER = qgisprocess::qgis_default_value(), B56C = qgisprocess::qgis_default_value(), B45R = qgisprocess::qgis_default_value(), CSIG = qgisprocess::qgis_default_value(), PASS2 = qgisprocess::qgis_default_value(), SHADOW = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_QGIS_versions()
  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("saga:automatedcloudcoverassessment")
  output <- qgisprocess::qgis_run_algorithm("saga:automatedcloudcoverassessment",`BAND2` = BAND2, `BAND3` = BAND3, `BAND4` = BAND4, `BAND5` = BAND5, `BAND6` = BAND6, `CLOUD` = CLOUD, `FILTER` = FILTER, `B56C` = B56C, `B45R` = B45R, `CSIG` = CSIG, `PASS2` = PASS2, `SHADOW` = SHADOW,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "CLOUD")
  }
}