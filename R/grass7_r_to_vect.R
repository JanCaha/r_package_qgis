##' QGIS Algorithm provided by GRASS r.to.vect (grass7:r.to.vect)
##'
##' @title QGIS algorithm r.to.vect
##'
##' @param input `raster` - Input raster layer. Path to a raster layer.
##' @param type `enum`  of `("line", "point", "area")` - Feature type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param column `string` - Name of attribute column to store value. String value.
##' @param .s `boolean` - Smooth corners of area features. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -s.
##' @param .v `boolean` - Use raster values as categories instead of unique sequence. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -v.
##' @param .z `boolean` - Write raster values as z coordinate. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -z.
##' @param .b `boolean` - Do not build vector topology. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -b.
##' @param .t `boolean` - Do not create attribute table. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -t.
##' @param output `vectorDestination` - Vectorized. Path for new vector layer.
##' @param GRASS_REGION_PARAMETER `extent` - GRASS GIS 7 region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param GRASS_REGION_CELLSIZE_PARAMETER `number` - GRASS GIS 7 region cellsize (leave 0 for default). A numeric value.
##' @param GRASS_OUTPUT_TYPE_PARAMETER `enum`  of `("auto", "point", "line", "area")` - v.out.ogr output type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param GRASS_VECTOR_DSCO `string` - v.out.ogr output data source options (dsco). String value.
##' @param GRASS_VECTOR_LCO `string` - v.out.ogr output layer options (lco). String value.
##' @param GRASS_VECTOR_EXPORT_NOCAT `boolean` - Also export features without category (not labeled). Otherwise only features with category are exported. 1 for true/yes. 0 for false/no.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * output - outputVector - Vectorized
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

grass7_r_to_vect <- function(input = qgisprocess::qgis_default_value(), type = qgisprocess::qgis_default_value(), column = qgisprocess::qgis_default_value(), .s = qgisprocess::qgis_default_value(), .v = qgisprocess::qgis_default_value(), .z = qgisprocess::qgis_default_value(), .b = qgisprocess::qgis_default_value(), .t = qgisprocess::qgis_default_value(), output = qgisprocess::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess::qgis_default_value(), GRASS_REGION_CELLSIZE_PARAMETER = qgisprocess::qgis_default_value(), GRASS_OUTPUT_TYPE_PARAMETER = qgisprocess::qgis_default_value(), GRASS_VECTOR_DSCO = qgisprocess::qgis_default_value(), GRASS_VECTOR_LCO = qgisprocess::qgis_default_value(), GRASS_VECTOR_EXPORT_NOCAT = qgisprocess::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("grass7:r.to.vect")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("grass7:r.to.vect", `input` = input, `type` = type, `column` = column, `-s` = .s, `-v` = .v, `-z` = .z, `-b` = .b, `-t` = .t, `output` = output, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER, `GRASS_OUTPUT_TYPE_PARAMETER` = GRASS_OUTPUT_TYPE_PARAMETER, `GRASS_VECTOR_DSCO` = GRASS_VECTOR_DSCO, `GRASS_VECTOR_LCO` = GRASS_VECTOR_LCO, `GRASS_VECTOR_EXPORT_NOCAT` = GRASS_VECTOR_EXPORT_NOCAT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("grass7:r.to.vect", `input` = input, `type` = type, `column` = column, `-s` = .s, `-v` = .v, `-z` = .z, `-b` = .b, `-t` = .t, `output` = output, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER, `GRASS_OUTPUT_TYPE_PARAMETER` = GRASS_OUTPUT_TYPE_PARAMETER, `GRASS_VECTOR_DSCO` = GRASS_VECTOR_DSCO, `GRASS_VECTOR_LCO` = GRASS_VECTOR_LCO, `GRASS_VECTOR_EXPORT_NOCAT` = GRASS_VECTOR_EXPORT_NOCAT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "output")
  }
}