##' QGIS Algorithm provided by QGIS (native c++) Export time series values from points of a mesh dataset (native:meshexporttimeseries)
##'
##' @title QGIS algorithm Export time series values from points of a mesh dataset
##'
##' @param INPUT `mesh` - Input mesh layer. Path to a mesh layer.
##' @param DATASET_GROUPS `meshdatasetgroups` - Dataset groups. .
##' @param STARTING_TIME `meshdatasettime` - Starting time. .
##' @param FINISHING_TIME `meshdatasettime` - Finishing time. .
##' @param TIME_STEP `number` - Time step (hours). A numeric value.
##' @param INPUT_POINTS `source` - Points for data export. Path to a vector layer.
##' @param COORDINATES_DIGITS `number` - Digits count for coordinates. A numeric value.
##' @param DATASET_DIGITS `number` - Digits count for dataset value. A numeric value.
##' @param OUTPUT `fileDestination` - Exported data CSV file. Path for new file.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputFile - Exported data CSV file
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_meshexporttimeseries <- function(INPUT = qgisprocess:::qgis_default_value(), DATASET_GROUPS = qgisprocess:::qgis_default_value(), STARTING_TIME = qgisprocess:::qgis_default_value(), FINISHING_TIME = qgisprocess:::qgis_default_value(), TIME_STEP = qgisprocess:::qgis_default_value(), INPUT_POINTS = qgisprocess:::qgis_default_value(), COORDINATES_DIGITS = qgisprocess:::qgis_default_value(), DATASET_DIGITS = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:meshexporttimeseries")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:meshexporttimeseries", `INPUT` = INPUT, `DATASET_GROUPS` = DATASET_GROUPS, `STARTING_TIME` = STARTING_TIME, `FINISHING_TIME` = FINISHING_TIME, `TIME_STEP` = TIME_STEP, `INPUT_POINTS` = INPUT_POINTS, `COORDINATES_DIGITS` = COORDINATES_DIGITS, `DATASET_DIGITS` = DATASET_DIGITS, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:meshexporttimeseries", `INPUT` = INPUT, `DATASET_GROUPS` = DATASET_GROUPS, `STARTING_TIME` = STARTING_TIME, `FINISHING_TIME` = FINISHING_TIME, `TIME_STEP` = TIME_STEP, `INPUT_POINTS` = INPUT_POINTS, `COORDINATES_DIGITS` = COORDINATES_DIGITS, `DATASET_DIGITS` = DATASET_DIGITS, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}