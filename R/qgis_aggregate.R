##' QGIS Algorithm provided by QGIS (native c++) Aggregate (native:aggregate). Aggregates features based on a group by expression, combining geometries (if present) into one multipart geometry for each group. This algorithm takes a vector or table layer and aggregates features based on a group by expression. Features for which group by expression return the same value are grouped together.  It is possible to group all source features together using constant value in group by parameter, example: NULL.  It is also possible to group features using multiple fields using Array function, example: Array("Field1", "Field2").  Geometries (if present) are combined into one multipart geometry for each group.  Output attributes are computed depending on each given aggregate definition.
##'
##' @title QGIS algorithm - Aggregate
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param GROUP_BY `expression` - Group by expression (NULL to group all features). A valid QGIS expression string, e.g "road_name" = 'MAIN RD'.
##' @param AGGREGATES `aggregates` - Aggregates. .
##' @param OUTPUT `sink` - Aggregated. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Aggregated
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_aggregate <- function(INPUT = qgisprocess:::qgis_default_value(), GROUP_BY = qgisprocess:::qgis_default_value(), AGGREGATES = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:aggregate")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:aggregate", `INPUT` = INPUT, `GROUP_BY` = GROUP_BY, `AGGREGATES` = AGGREGATES, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:aggregate", `INPUT` = INPUT, `GROUP_BY` = GROUP_BY, `AGGREGATES` = AGGREGATES, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}