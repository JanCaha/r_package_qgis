##' QGIS Algorithm provided by QGIS (native c++) Aggregate (native:aggregate)
##'
##' @title QGIS algorithm Aggregate
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param GROUP_BY `expression` - Group by expression (NULL to group all features). A valid QGIS expression string, e.g "road_name" = 'MAIN RD'.
##' @param AGGREGATES `aggregates` - Aggregates. .
##' @param OUTPUT `sink` - Aggregated. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Aggregated
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_aggregate <- function(INPUT = qgisprocess::qgis_default_value(), GROUP_BY = qgisprocess::qgis_default_value(), AGGREGATES = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("native:aggregate",`INPUT` = INPUT, `GROUP_BY` = GROUP_BY, `AGGREGATES` = AGGREGATES, `OUTPUT` = OUTPUT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}