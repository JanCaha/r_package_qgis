##' QGIS Algorithm provided by QGIS TIN interpolation (qgis:tininterpolation). Generates a Triangulated Irregular Network (TIN) interpolation of a point vector layer. Generates a Triangulated Irregular Network (TIN) interpolation of a point vector layer. With the TIN method you can create a surface formed by triangles of nearest neighbor points. To do this, circumcircles around selected sample points are created and their intersections are connected to a network of non overlapping and as compact as possible triangles. The resulting surfaces are not smooth. The algorithm creates both the raster layer of the interpolated values and the vector line layer with the triangulation boundaries.
##'
##' @title QGIS algorithm - TIN interpolation
##'
##' @param INTERPOLATION_DATA `idw_interpolation_data` - Input layer(s). .
##' @param METHOD `enum`  of `("Linear", "Clough-Toucher (cubic)")` - Interpolation method. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param EXTENT `extent` - Extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param PIXEL_SIZE `number` - Output raster size. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param OUTPUT `rasterDestination` - Interpolated. Path for new raster layer.
##' @param TRIANGULATION `sink` - Triangulation. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputRaster - Interpolated
##' * TRIANGULATION - outputVector - Triangulation
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_tininterpolation <- function(INTERPOLATION_DATA = qgisprocess:::qgis_default_value(), METHOD = qgisprocess:::qgis_default_value(), EXTENT = qgisprocess:::qgis_default_value(), PIXEL_SIZE = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(), TRIANGULATION = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("qgis:tininterpolation")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("qgis:tininterpolation", `INTERPOLATION_DATA` = INTERPOLATION_DATA, `METHOD` = METHOD, `EXTENT` = EXTENT, `PIXEL_SIZE` = PIXEL_SIZE, `OUTPUT` = OUTPUT, `TRIANGULATION` = TRIANGULATION,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("qgis:tininterpolation", `INTERPOLATION_DATA` = INTERPOLATION_DATA, `METHOD` = METHOD, `EXTENT` = EXTENT, `PIXEL_SIZE` = PIXEL_SIZE, `OUTPUT` = OUTPUT, `TRIANGULATION` = TRIANGULATION,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}