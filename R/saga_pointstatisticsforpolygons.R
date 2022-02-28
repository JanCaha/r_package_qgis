##' QGIS Algorithm provided by SAGA Point statistics for polygons (saga:pointstatisticsforpolygons)
##'
##' @title QGIS algorithm Point statistics for polygons
##'
##' @param POINTS `source` - Points. Path to a vector layer.
##' @param POLYGONS `source` - Polygons. Path to a vector layer.
##' @param FIELDS `field` - Attribute Table field. The name of an existing field. ; delimited list of existing field names.
##' @param FIELD_NAME `enum`  of `("[0] variable type + original name", "[1] original name + variable type", "[2] original name", "[3] variable type")` - Field Naming Choice. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param STATISTICS `vectorDestination` - Statistics. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * STATISTICS - outputVector - Statistics
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_pointstatisticsforpolygons <- function(POINTS = qgisprocess::qgis_default_value(), POLYGONS = qgisprocess::qgis_default_value(), FIELDS = qgisprocess::qgis_default_value(), FIELD_NAME = qgisprocess::qgis_default_value(), STATISTICS = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("saga:pointstatisticsforpolygons")

  output <- qgisprocess::qgis_run_algorithm("saga:pointstatisticsforpolygons", `POINTS` = POINTS, `POLYGONS` = POLYGONS, `FIELDS` = FIELDS, `FIELD_NAME` = FIELD_NAME, `STATISTICS` = STATISTICS,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "STATISTICS")
  }
}