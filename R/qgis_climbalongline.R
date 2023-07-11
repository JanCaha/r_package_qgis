##' QGIS Algorithm provided by QGIS Climb along line (qgis:climbalongline). This algorithm calculates the total climb and descent along line geometries. Input layers must have Z values present. If Z values are not available, the "Drape" (set Z value from raster) algorithm may be used to add Z values from a DEM layer. The output layer is a copy of the input layer with additional fields that contain the total climb, total descent, the minimum elevation and the maximum elevation for each line geometry. If the input layer contains fields with the same names as these added fields, they will be renamed (field names will be altered to "name_2", "name_3", etc, finding the first non-duplicate name).
##'
##' @title QGIS algorithm - Climb along line
##'
##' @param INPUT `source` - Line layer. Path to a vector layer.
##' @param OUTPUT `sink` - Climb layer. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * MAXELEVATION - outputNumber - Maximum elevation
##' * MINELEVATION - outputNumber - Minimum elevation
##' * OUTPUT - outputVector - Climb layer
##' * TOTALCLIMB - outputNumber - Total climb
##' * TOTALDESCENT - outputNumber - Total descent
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_climbalongline <- function(INPUT = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("qgis:climbalongline")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("qgis:climbalongline", `INPUT` = INPUT, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("qgis:climbalongline", `INPUT` = INPUT, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "MAXELEVATION")
  }
}