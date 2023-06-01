##' QGIS Algorithm provided by SAGA Create lines graticule (saga:createlinesgraticule)
##'
##' @title QGIS algorithm Create lines graticule
##'
##' @param EXTENT `source` - Extent. Path to a vector layer.
##' @param EXTENT_X_MIN_EXTENT_X_MAX_EXTENT_Y_MIN_EXTENT_Y_MAX `extent` - Output extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used.. Original algorithm parameter name: EXTENT_X_MIN EXTENT_X_MAX EXTENT_Y_MIN EXTENT_Y_MAX.
##' @param DIVISION_X `number` - Division Width. A numeric value.
##' @param DIVISION_Y `number` - Division Height. A numeric value.
##' @param ALIGNMENT `enum`  of `("[0] Bottom left", "[1] Top left", "[2] Bottom right", "[3] Top right", "[4] Centered")` - Alignment. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param GRATICULE_LINE `vectorDestination` - Lines Graticule. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * GRATICULE_LINE - outputVector - Lines Graticule
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

saga_createlinesgraticule <- function(EXTENT = qgisprocess:::qgis_default_value(), EXTENT_X_MIN_EXTENT_X_MAX_EXTENT_Y_MIN_EXTENT_Y_MAX = qgisprocess:::qgis_default_value(), DIVISION_X = qgisprocess:::qgis_default_value(), DIVISION_Y = qgisprocess:::qgis_default_value(), ALIGNMENT = qgisprocess:::qgis_default_value(), GRATICULE_LINE = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("saga:createlinesgraticule")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("saga:createlinesgraticule", `EXTENT` = EXTENT, `EXTENT_X_MIN EXTENT_X_MAX EXTENT_Y_MIN EXTENT_Y_MAX` = EXTENT_X_MIN_EXTENT_X_MAX_EXTENT_Y_MIN_EXTENT_Y_MAX, `DIVISION_X` = DIVISION_X, `DIVISION_Y` = DIVISION_Y, `ALIGNMENT` = ALIGNMENT, `GRATICULE_LINE` = GRATICULE_LINE,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("saga:createlinesgraticule", `EXTENT` = EXTENT, `EXTENT_X_MIN EXTENT_X_MAX EXTENT_Y_MIN EXTENT_Y_MAX` = EXTENT_X_MIN_EXTENT_X_MAX_EXTENT_Y_MIN_EXTENT_Y_MAX, `DIVISION_X` = DIVISION_X, `DIVISION_Y` = DIVISION_Y, `ALIGNMENT` = ALIGNMENT, `GRATICULE_LINE` = GRATICULE_LINE,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "GRATICULE_LINE")
  }
}