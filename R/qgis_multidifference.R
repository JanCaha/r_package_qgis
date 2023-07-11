##' QGIS Algorithm provided by QGIS (native c++) Difference (multiple) (native:multidifference). This algorithm extracts features from the Input layer that fall completely outside or only partially overlap the features from any of the Overlay layer(s). For each overlay layer the difference is calculated between the result of all previous difference operations and this overlay layer. Input layer features that partially overlap feature(s) in the Overlay layers are split along those features' boundary and only the portions outside the Overlay layer features are retained.  Attributes are not modified, although properties such as area or length of the features will be modified by the difference operation. If such properties are stored as attributes, those attributes will have to be manually updated.
##'
##' @title QGIS algorithm - Difference (multiple)
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param OVERLAYS `multilayer` - Overlay layers. .
##' @param OUTPUT `sink` - Difference. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Difference
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_multidifference <- function(INPUT = qgisprocess:::qgis_default_value(), OVERLAYS = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:multidifference")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:multidifference", `INPUT` = INPUT, `OVERLAYS` = OVERLAYS, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:multidifference", `INPUT` = INPUT, `OVERLAYS` = OVERLAYS, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}