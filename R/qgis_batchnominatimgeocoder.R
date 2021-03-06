##' QGIS Algorithm provided by QGIS (native c++) Batch Nominatim geocoder (native:batchnominatimgeocoder)
##'
##' @title QGIS algorithm Batch Nominatim geocoder
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param FIELD `field` - Address field. The name of an existing field. ; delimited list of existing field names.
##' @param OUTPUT `sink` - Geocoded. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Geocoded
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_batchnominatimgeocoder <- function(INPUT = qgisprocess::qgis_default_value(), FIELD = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("native:batchnominatimgeocoder")

  output <- qgisprocess::qgis_run_algorithm("native:batchnominatimgeocoder", `INPUT` = INPUT, `FIELD` = FIELD, `OUTPUT` = OUTPUT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}