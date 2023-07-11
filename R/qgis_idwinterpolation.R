##' QGIS Algorithm provided by QGIS IDW interpolation (qgis:idwinterpolation). Generates an Inverse Distance Weighted (IDW) interpolation of a point vector layer. Sample points are weighted during interpolation such that the influence of one point relative to another declines with distance from the unknown point you want to create.
##'
##' @title QGIS algorithm - IDW interpolation
##'
##' @param INTERPOLATION_DATA `idw_interpolation_data` - Input layer(s). .
##' @param DISTANCE_COEFFICIENT `number` - Distance coefficient P. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param EXTENT `extent` - Extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param PIXEL_SIZE `number` - Output raster size. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param OUTPUT `rasterDestination` - Interpolated. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputRaster - Interpolated
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_idwinterpolation <- function(INTERPOLATION_DATA = qgisprocess:::qgis_default_value(), DISTANCE_COEFFICIENT = qgisprocess:::qgis_default_value(), EXTENT = qgisprocess:::qgis_default_value(), PIXEL_SIZE = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("qgis:idwinterpolation")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("qgis:idwinterpolation", `INTERPOLATION_DATA` = INTERPOLATION_DATA, `DISTANCE_COEFFICIENT` = DISTANCE_COEFFICIENT, `EXTENT` = EXTENT, `PIXEL_SIZE` = PIXEL_SIZE, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("qgis:idwinterpolation", `INTERPOLATION_DATA` = INTERPOLATION_DATA, `DISTANCE_COEFFICIENT` = DISTANCE_COEFFICIENT, `EXTENT` = EXTENT, `PIXEL_SIZE` = PIXEL_SIZE, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}