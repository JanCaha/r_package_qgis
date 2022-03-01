##' QGIS Algorithm provided by SAGA Cross-classification and tabulation (saga:crossclassificationandtabulation)
##'
##' @title QGIS algorithm Cross-classification and tabulation
##'
##' @param INPUT `raster` - Input Grid 1. Path to a raster layer.
##' @param INPUT2 `raster` - Input Grid 2. Path to a raster layer.
##' @param MAXNUMCLASS `number` - Max. Number of Classes. A numeric value.
##' @param RESULTGRID `rasterDestination` - Cross-Classification Grid. Path for new raster layer.
##' @param RESULTTABLE `vectorDestination` - Cross-Tabulation Table. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * RESULTGRID - outputRaster - Cross-Classification Grid
##' * RESULTTABLE - outputVector - Cross-Tabulation Table
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_crossclassificationandtabulation <- function(INPUT = qgisprocess::qgis_default_value(), INPUT2 = qgisprocess::qgis_default_value(), MAXNUMCLASS = qgisprocess::qgis_default_value(), RESULTGRID = qgisprocess::qgis_default_value(), RESULTTABLE = qgisprocess::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("saga:crossclassificationandtabulation")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("saga:crossclassificationandtabulation", `INPUT` = INPUT, `INPUT2` = INPUT2, `MAXNUMCLASS` = MAXNUMCLASS, `RESULTGRID` = RESULTGRID, `RESULTTABLE` = RESULTTABLE,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("saga:crossclassificationandtabulation", `INPUT` = INPUT, `INPUT2` = INPUT2, `MAXNUMCLASS` = MAXNUMCLASS, `RESULTGRID` = RESULTGRID, `RESULTTABLE` = RESULTTABLE,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "RESULTGRID")
  }
}