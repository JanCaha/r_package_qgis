##' QGIS Algorithm provided by GRASS r.out.ascii (grass:r.out.ascii). Export a raster layer into a GRASS ASCII text file
##'
##' @title QGIS algorithm - r.out.ascii
##'
##' @param input `raster` - Input raster. Path to a raster layer.
##' @param precision `number` - Number of significant digits. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param width `number` - Number of values printed before wrapping a line (only SURFER or MODFLOW format). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param null_value `string` - String to represent null cell (GRASS grid only). String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param .s `boolean` - Write SURFER (Golden Software) ASCII grid. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression. Original algorithm parameter name: -s.
##' @param .m `boolean` - Write MODFLOW (USGS) ASCII array. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression. Original algorithm parameter name: -m.
##' @param .i `boolean` - Force output of integer values. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression. Original algorithm parameter name: -i.
##' @param output `fileDestination` - GRASS Ascii. Path for new file.
##' @param GRASS_REGION_PARAMETER `extent` - GRASS GIS region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param GRASS_REGION_CELLSIZE_PARAMETER `number` - GRASS GIS region cellsize (leave 0 for default). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * output - outputFile - GRASS Ascii
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

grass_r_out_ascii <- function(input = qgisprocess:::qgis_default_value(), precision = qgisprocess:::qgis_default_value(), width = qgisprocess:::qgis_default_value(), null_value = qgisprocess:::qgis_default_value(), .s = qgisprocess:::qgis_default_value(), .m = qgisprocess:::qgis_default_value(), .i = qgisprocess:::qgis_default_value(), output = qgisprocess:::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess:::qgis_default_value(), GRASS_REGION_CELLSIZE_PARAMETER = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("grass:r.out.ascii")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("grass:r.out.ascii", `input` = input, `precision` = precision, `width` = width, `null_value` = null_value, `-s` = .s, `-m` = .m, `-i` = .i, `output` = output, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("grass:r.out.ascii", `input` = input, `precision` = precision, `width` = width, `null_value` = null_value, `-s` = .s, `-m` = .m, `-i` = .i, `output` = output, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "output")
  }
}