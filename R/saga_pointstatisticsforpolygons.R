##' QGIS Algorithm provided by SAGA Point statistics for polygons (saga:pointstatisticsforpolygons)
##'
##' @title QGIS algorithm Point statistics for polygons
##'
##' @param POINTS `source` - Points. Path to a vector layer.
##' @param POLYGONS `source` - Polygons. Path to a vector layer.
##' @param FIELDS `field` - Attribute Table field. The name of an existing field. ; delimited list of existing field names.
##' @param FIELD_NAME `enum`  of `("[0] variable type + original name", "[1] original name + variable type", "[2] original name", "[3] variable type")` - Field Naming Choice. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param SUM `boolean` - Sum. 1 for true/yes. 0 for false/no.
##' @param AVG `boolean` - Mean. 1 for true/yes. 0 for false/no.
##' @param VAR `boolean` - Variance. 1 for true/yes. 0 for false/no.
##' @param DEV `boolean` - Deviation. 1 for true/yes. 0 for false/no.
##' @param MIN `boolean` - Minimum. 1 for true/yes. 0 for false/no.
##' @param MAX `boolean` - Maximum. 1 for true/yes. 0 for false/no.
##' @param NUM `boolean` - Count. 1 for true/yes. 0 for false/no.
##' @param STATISTICS `vectorDestination` - Statistics. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * STATISTICS - outputVector - Statistics
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_pointstatisticsforpolygons <- function(POINTS = qgisprocess::qgis_default_value(), POLYGONS = qgisprocess::qgis_default_value(), FIELDS = qgisprocess::qgis_default_value(), FIELD_NAME = qgisprocess::qgis_default_value(), SUM = qgisprocess::qgis_default_value(), AVG = qgisprocess::qgis_default_value(), VAR = qgisprocess::qgis_default_value(), DEV = qgisprocess::qgis_default_value(), MIN = qgisprocess::qgis_default_value(), MAX = qgisprocess::qgis_default_value(), NUM = qgisprocess::qgis_default_value(), STATISTICS = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("saga:pointstatisticsforpolygons",`POINTS` = POINTS, `POLYGONS` = POLYGONS, `FIELDS` = FIELDS, `FIELD_NAME` = FIELD_NAME, `SUM` = SUM, `AVG` = AVG, `VAR` = VAR, `DEV` = DEV, `MIN` = MIN, `MAX` = MAX, `NUM` = NUM, `STATISTICS` = STATISTICS,...)
  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "STATISTICS")
}
}