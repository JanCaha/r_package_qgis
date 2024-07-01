##' QGIS Algorithm provided by GRASS i.colors.enhance (grass:i.colors.enhance). Performs auto-balancing of colors for RGB images.
##'
##' @title QGIS algorithm - i.colors.enhance
##'
##' @param red `raster` - Name of red channel. Path to a raster layer.
##' @param green `raster` - Name of green channel. Path to a raster layer.
##' @param blue `raster` - Name of blue channel. Path to a raster layer.
##' @param strength `number` - Cropping intensity (upper brightness level). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param .f `boolean` - Extend colors to full range of data on each channel. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression. Original algorithm parameter name: -f.
##' @param .p `boolean` - Preserve relative colors, adjust brightness only. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression. Original algorithm parameter name: -p.
##' @param .r `boolean` - Reset to standard color range. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression. Original algorithm parameter name: -r.
##' @param .s `boolean` - Process bands serially (default: run in parallel). 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression. Original algorithm parameter name: -s.
##' @param redoutput `rasterDestination` - Enhanced Red. Path for new raster layer.
##' @param greenoutput `rasterDestination` - Enhanced Green. Path for new raster layer.
##' @param blueoutput `rasterDestination` - Enhanced Blue. Path for new raster layer.
##' @param GRASS_REGION_PARAMETER `extent` - GRASS GIS region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param GRASS_REGION_CELLSIZE_PARAMETER `number` - GRASS GIS region cellsize (leave 0 for default). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param GRASS_RASTER_FORMAT_OPT `string` - Output Rasters format options (createopt). String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param GRASS_RASTER_FORMAT_META `string` - Output Rasters format metadata options (metaopt). String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * blueoutput - outputRaster - Enhanced Blue
##' * greenoutput - outputRaster - Enhanced Green
##' * redoutput - outputRaster - Enhanced Red
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

grass_i_colors_enhance <- function(red = qgisprocess:::qgis_default_value(), green = qgisprocess:::qgis_default_value(), blue = qgisprocess:::qgis_default_value(), strength = qgisprocess:::qgis_default_value(), .f = qgisprocess:::qgis_default_value(), .p = qgisprocess:::qgis_default_value(), .r = qgisprocess:::qgis_default_value(), .s = qgisprocess:::qgis_default_value(), redoutput = qgisprocess:::qgis_default_value(), greenoutput = qgisprocess:::qgis_default_value(), blueoutput = qgisprocess:::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess:::qgis_default_value(), GRASS_REGION_CELLSIZE_PARAMETER = qgisprocess:::qgis_default_value(), GRASS_RASTER_FORMAT_OPT = qgisprocess:::qgis_default_value(), GRASS_RASTER_FORMAT_META = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("grass:i.colors.enhance")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("grass:i.colors.enhance", `red` = red, `green` = green, `blue` = blue, `strength` = strength, `-f` = .f, `-p` = .p, `-r` = .r, `-s` = .s, `redoutput` = redoutput, `greenoutput` = greenoutput, `blueoutput` = blueoutput, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER, `GRASS_RASTER_FORMAT_OPT` = GRASS_RASTER_FORMAT_OPT, `GRASS_RASTER_FORMAT_META` = GRASS_RASTER_FORMAT_META,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("grass:i.colors.enhance", `red` = red, `green` = green, `blue` = blue, `strength` = strength, `-f` = .f, `-p` = .p, `-r` = .r, `-s` = .s, `redoutput` = redoutput, `greenoutput` = greenoutput, `blueoutput` = blueoutput, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER, `GRASS_RASTER_FORMAT_OPT` = GRASS_RASTER_FORMAT_OPT, `GRASS_RASTER_FORMAT_META` = GRASS_RASTER_FORMAT_META,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "blueoutput")
  }
}