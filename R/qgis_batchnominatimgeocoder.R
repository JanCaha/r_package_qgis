##' QGIS Algorithm provided by QGIS (native c++) Batch Nominatim geocoder (native:batchnominatimgeocoder). This algorithm performs batch geocoding using the a href="#"Nominatim/a service against an input layer string field.  The output layer will have a point geometry reflecting the geocoded location as well as a number of attributes associated to the geocoded location.
##'
##' @title QGIS algorithm - Batch Nominatim geocoder
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param FIELD `field` - Address field. The name of an existing field. ; delimited list of existing field names.
##' @param OUTPUT `sink` - Geocoded. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Geocoded
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_batchnominatimgeocoder <- function(INPUT = qgisprocess:::qgis_default_value(), FIELD = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:batchnominatimgeocoder")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:batchnominatimgeocoder", `INPUT` = INPUT, `FIELD` = FIELD, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:batchnominatimgeocoder", `INPUT` = INPUT, `FIELD` = FIELD, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}