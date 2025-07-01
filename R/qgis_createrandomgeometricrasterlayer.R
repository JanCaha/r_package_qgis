##' QGIS Algorithm provided by QGIS (native c++) Create random raster layer (geometric distribution) (native:createrandomgeometricrasterlayer). Generates a raster layer for a given extent and cell size filled with geometrically distributed random values. This algorithm generates a raster layer for a given extent and cell size filled with geometrically distributed random values. By default, the values will be chosen given a probability of 0.5. This can be overridden by using the advanced parameter for mean value. The raster data type is set to Integer types (Integer16 by default). The geometric distribution random values are defined as positive integer numbers. A floating point raster will represent a cast of integer values to floating point.
##'
##' @title QGIS algorithm - Create random raster layer (geometric distribution)
##'
##' @param EXTENT `extent` - Desired extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param TARGET_CRS `crs` - Target CRS. CRS as an auth ID (e.g. 'EPSG:3111'). CRS as a PROJ4 string (e.g. 'PROJ4:…'). CRS as a WKT string (e.g. 'WKT:…'). Path to a layer. The CRS of the layer is used..
##' @param PIXEL_SIZE `number` - Pixel size. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param OUTPUT_TYPE `enum`  of `("Integer16", "Unsigned Integer16", "Integer32", "Unsigned Integer32", "Float32", "Float64")` - Output raster data type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param PROBABILITY `number` - Probability. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
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

qgis_createrandomgeometricrasterlayer <- function(EXTENT = qgisprocess:::qgis_default_value(), TARGET_CRS = qgisprocess:::qgis_default_value(), PIXEL_SIZE = qgisprocess:::qgis_default_value(), OUTPUT_TYPE = qgisprocess:::qgis_default_value(), PROBABILITY = qgisprocess:::qgis_default_value(), CREATION_OPTIONS = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:createrandomgeometricrasterlayer")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:createrandomgeometricrasterlayer", `EXTENT` = EXTENT, `TARGET_CRS` = TARGET_CRS, `PIXEL_SIZE` = PIXEL_SIZE, `OUTPUT_TYPE` = OUTPUT_TYPE, `PROBABILITY` = PROBABILITY, `CREATION_OPTIONS` = CREATION_OPTIONS, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:createrandomgeometricrasterlayer", `EXTENT` = EXTENT, `TARGET_CRS` = TARGET_CRS, `PIXEL_SIZE` = PIXEL_SIZE, `OUTPUT_TYPE` = OUTPUT_TYPE, `PROBABILITY` = PROBABILITY, `CREATION_OPTIONS` = CREATION_OPTIONS, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}