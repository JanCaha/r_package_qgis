##' QGIS Algorithm provided by QGIS (native c++) Create random raster layer (uniform distribution) (native:createrandomuniformrasterlayer). Generates a raster layer for given extent and cell size filled with random values. By default, the values will range between the minimum and maximum value of the specified output raster type. This can be overridden by using the advanced parameters for lower and upper bound value. If the bounds have the same value or both are zero (default) the algorithm will create random values in the full value range of the chosen raster data type. Choosing bounds outside the acceptable range of the output raster type will abort the algorithm.
##'
##' @title QGIS algorithm - Create random raster layer (uniform distribution)
##'
##' @param EXTENT `extent` - Desired extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param TARGET_CRS `crs` - Target CRS. CRS as an auth ID (e.g. 'EPSG:3111'). CRS as a PROJ4 string (e.g. 'PROJ4:…'). CRS as a WKT string (e.g. 'WKT:…'). Path to a layer. The CRS of the layer is used..
##' @param PIXEL_SIZE `number` - Pixel size. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param OUTPUT_TYPE `enum`  of `("Byte", "Integer16", "Unsigned Integer16", "Integer32", "Unsigned Integer32", "Float32", "Float64")` - Output raster data type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param LOWER_BOUND `number` - Lower bound for random number range. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param UPPER_BOUND `number` - Upper bound for random number range. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
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

qgis_createrandomuniformrasterlayer <- function(EXTENT = qgisprocess:::qgis_default_value(), TARGET_CRS = qgisprocess:::qgis_default_value(), PIXEL_SIZE = qgisprocess:::qgis_default_value(), OUTPUT_TYPE = qgisprocess:::qgis_default_value(), LOWER_BOUND = qgisprocess:::qgis_default_value(), UPPER_BOUND = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:createrandomuniformrasterlayer")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:createrandomuniformrasterlayer", `EXTENT` = EXTENT, `TARGET_CRS` = TARGET_CRS, `PIXEL_SIZE` = PIXEL_SIZE, `OUTPUT_TYPE` = OUTPUT_TYPE, `LOWER_BOUND` = LOWER_BOUND, `UPPER_BOUND` = UPPER_BOUND, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:createrandomuniformrasterlayer", `EXTENT` = EXTENT, `TARGET_CRS` = TARGET_CRS, `PIXEL_SIZE` = PIXEL_SIZE, `OUTPUT_TYPE` = OUTPUT_TYPE, `LOWER_BOUND` = LOWER_BOUND, `UPPER_BOUND` = UPPER_BOUND, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}