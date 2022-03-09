##' QGIS Algorithm provided by SAGA Change detection (saga:changedetection)
##'
##' @title QGIS algorithm Change detection
##'
##' @param INITIAL `raster` - Initial State. Path to a raster layer.
##' @param INI_LUT `source` - Look-up Table. Path to a vector layer.
##' @param INI_LUT_MIN `field` - Value. The name of an existing field. ; delimited list of existing field names.
##' @param INI_LUT_MAX `field` - Value (Maximum). The name of an existing field. ; delimited list of existing field names.
##' @param INI_LUT_NAM `field` - Name. The name of an existing field. ; delimited list of existing field names.
##' @param FINAL `raster` - Final State. Path to a raster layer.
##' @param FIN_LUT `source` - Look-up Table. Path to a vector layer.
##' @param FIN_LUT_MIN `field` - Value. The name of an existing field. ; delimited list of existing field names.
##' @param FIN_LUT_MAX `field` - Value (Maximum). The name of an existing field. ; delimited list of existing field names.
##' @param FIN_LUT_NAM `field` - Name. The name of an existing field. ; delimited list of existing field names.
##' @param OUTPUT `enum`  of `("[0] cells", "[1] percent", "[2] area")` - Output as.... Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param CHANGE `rasterDestination` - Changes. Path for new raster layer.
##' @param CHANGES `vectorDestination` - Changes. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * CHANGE - outputRaster - Changes
##' * CHANGES - outputVector - Changes
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_changedetection <- function(INITIAL = qgisprocess::qgis_default_value(), INI_LUT = qgisprocess::qgis_default_value(), INI_LUT_MIN = qgisprocess::qgis_default_value(), INI_LUT_MAX = qgisprocess::qgis_default_value(), INI_LUT_NAM = qgisprocess::qgis_default_value(), FINAL = qgisprocess::qgis_default_value(), FIN_LUT = qgisprocess::qgis_default_value(), FIN_LUT_MIN = qgisprocess::qgis_default_value(), FIN_LUT_MAX = qgisprocess::qgis_default_value(), FIN_LUT_NAM = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(), CHANGE = qgisprocess::qgis_default_value(), CHANGES = qgisprocess::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("saga:changedetection")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("saga:changedetection", `INITIAL` = INITIAL, `INI_LUT` = INI_LUT, `INI_LUT_MIN` = INI_LUT_MIN, `INI_LUT_MAX` = INI_LUT_MAX, `INI_LUT_NAM` = INI_LUT_NAM, `FINAL` = FINAL, `FIN_LUT` = FIN_LUT, `FIN_LUT_MIN` = FIN_LUT_MIN, `FIN_LUT_MAX` = FIN_LUT_MAX, `FIN_LUT_NAM` = FIN_LUT_NAM, `OUTPUT` = OUTPUT, `CHANGE` = CHANGE, `CHANGES` = CHANGES,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("saga:changedetection", `INITIAL` = INITIAL, `INI_LUT` = INI_LUT, `INI_LUT_MIN` = INI_LUT_MIN, `INI_LUT_MAX` = INI_LUT_MAX, `INI_LUT_NAM` = INI_LUT_NAM, `FINAL` = FINAL, `FIN_LUT` = FIN_LUT, `FIN_LUT_MIN` = FIN_LUT_MIN, `FIN_LUT_MAX` = FIN_LUT_MAX, `FIN_LUT_NAM` = FIN_LUT_NAM, `OUTPUT` = OUTPUT, `CHANGE` = CHANGE, `CHANGES` = CHANGES,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "CHANGE")
  }
}