##' QGIS Algorithm provided by QGIS (native c++) Round raster (native:roundrastervalues). Rounds the cell values of a raster dataset to a specified number of decimals. This algorithm rounds the cell values of a raster dataset to the specified number of decimals.  Alternatively, a negative number of decimal places may be used to round values to powers of a base n (specified in the advanced parameter Base n). For example, with a Base value n of 10 and Decimal places of -1 the algorithm rounds cell values to multiples of 10, -2 rounds to multiples of 100, and so on. Arbitrary base values may be chosen, the algorithm applies the same multiplicative principle. Rounding cell values to multiples of a base n may be used to generalize raster layers. The algorithm preserves the data type of the input raster. Therefore byte/integer rasters can only be rounded to multiples of a base n, otherwise a warning is raised and the raster gets copied as byte/integer raster.
##'
##' @title QGIS algorithm - Round raster
##'
##' @param INPUT `raster` - Input raster. Path to a raster layer.
##' @param BAND `band` - Band number. Integer value representing an existing raster band number.
##' @param ROUNDING_DIRECTION `enum`  of `("Round up", "Round to nearest", "Round down")` - Rounding direction. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param DECIMAL_PLACES `number` - Number of decimals places. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param BASE_N `number` - Base n for rounding to multiples of n. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param CREATION_OPTIONS `string` - Creation options. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param OUTPUT `rasterDestination` - Output raster. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputRaster - Output raster
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_roundrastervalues <- function(INPUT = qgisprocess:::qgis_default_value(), BAND = qgisprocess:::qgis_default_value(), ROUNDING_DIRECTION = qgisprocess:::qgis_default_value(), DECIMAL_PLACES = qgisprocess:::qgis_default_value(), BASE_N = qgisprocess:::qgis_default_value(), CREATION_OPTIONS = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:roundrastervalues")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:roundrastervalues", `INPUT` = INPUT, `BAND` = BAND, `ROUNDING_DIRECTION` = ROUNDING_DIRECTION, `DECIMAL_PLACES` = DECIMAL_PLACES, `BASE_N` = BASE_N, `CREATION_OPTIONS` = CREATION_OPTIONS, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:roundrastervalues", `INPUT` = INPUT, `BAND` = BAND, `ROUNDING_DIRECTION` = ROUNDING_DIRECTION, `DECIMAL_PLACES` = DECIMAL_PLACES, `BASE_N` = BASE_N, `CREATION_OPTIONS` = CREATION_OPTIONS, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}