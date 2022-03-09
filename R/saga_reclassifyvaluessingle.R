##' QGIS Algorithm provided by SAGA Reclassify values (single) (saga:reclassifyvaluessingle)
##'
##' @title QGIS algorithm Reclassify values (single)
##'
##' @param INPUT `raster` - Grid. Path to a raster layer.
##' @param OLD `number` - old value (for single value change). A numeric value.
##' @param NEW `number` - new value (for single value change). A numeric value.
##' @param SOPERATOR `enum`  of `("[0] =", "[1] <", "[2] <=", "[3] >=", "[4] >")` - operator (for single value change). Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param NODATAOPT `boolean` - replace no data values. 1 for true/yes. 0 for false/no.
##' @param NODATA `number` - new value for no data values. A numeric value.
##' @param OTHEROPT `boolean` - replace other values. 1 for true/yes. 0 for false/no.
##' @param OTHERS `number` - new value for other values. A numeric value.
##' @param RESULT `rasterDestination` - Reclassified Grid. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * RESULT - outputRaster - Reclassified Grid
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_reclassifyvaluessingle <- function(INPUT = qgisprocess::qgis_default_value(), OLD = qgisprocess::qgis_default_value(), NEW = qgisprocess::qgis_default_value(), SOPERATOR = qgisprocess::qgis_default_value(), NODATAOPT = qgisprocess::qgis_default_value(), NODATA = qgisprocess::qgis_default_value(), OTHEROPT = qgisprocess::qgis_default_value(), OTHERS = qgisprocess::qgis_default_value(), RESULT = qgisprocess::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("saga:reclassifyvaluessingle")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("saga:reclassifyvaluessingle", `INPUT` = INPUT, `OLD` = OLD, `NEW` = NEW, `SOPERATOR` = SOPERATOR, `NODATAOPT` = NODATAOPT, `NODATA` = NODATA, `OTHEROPT` = OTHEROPT, `OTHERS` = OTHERS, `RESULT` = RESULT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("saga:reclassifyvaluessingle", `INPUT` = INPUT, `OLD` = OLD, `NEW` = NEW, `SOPERATOR` = SOPERATOR, `NODATAOPT` = NODATAOPT, `NODATA` = NODATA, `OTHEROPT` = OTHEROPT, `OTHERS` = OTHERS, `RESULT` = RESULT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "RESULT")
  }
}