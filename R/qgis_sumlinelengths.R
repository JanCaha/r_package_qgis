##' QGIS Algorithm provided by QGIS (native c++) Sum line lengths (native:sumlinelengths)
##'
##' @title QGIS algorithm Sum line lengths
##'
##' @param POLYGONS `source` - Polygons. Path to a vector layer.
##' @param LINES `source` - Lines. Path to a vector layer.
##' @param LEN_FIELD `string` - Lines length field name. String value.
##' @param COUNT_FIELD `string` - Lines count field name. String value.
##' @param OUTPUT `sink` - Line length. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Line length
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_sumlinelengths <- function(POLYGONS = qgisprocess::qgis_default_value(), LINES = qgisprocess::qgis_default_value(), LEN_FIELD = qgisprocess::qgis_default_value(), COUNT_FIELD = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:sumlinelengths")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:sumlinelengths", `POLYGONS` = POLYGONS, `LINES` = LINES, `LEN_FIELD` = LEN_FIELD, `COUNT_FIELD` = COUNT_FIELD, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:sumlinelengths", `POLYGONS` = POLYGONS, `LINES` = LINES, `LEN_FIELD` = LEN_FIELD, `COUNT_FIELD` = COUNT_FIELD, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}