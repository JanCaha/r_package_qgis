##' QGIS Algorithm provided by GRASS i.atcorr (grass:i.atcorr). Performs atmospheric correction using the 6S algorithm.
##'
##' @title QGIS algorithm - i.atcorr
##'
##' @param input `raster` - Name of input raster map. Path to a raster layer.
##' @param range `range` - Input imagery range (0,255). Two comma separated numeric values, e.g. '1,10'.
##' @param elevation `raster` - Input altitude raster map in m (optional). Path to a raster layer.
##' @param visibility `raster` - Input visibility raster map in km (optional). Path to a raster layer.
##' @param parameters `file` - Name of input text file. Path to a file.
##' @param rescale `range` - Rescale output raster map (0,255). Two comma separated numeric values, e.g. '1,10'.
##' @param output `rasterDestination` - Atmospheric correction. Path for new raster layer.
##' @param .i `boolean` - Output raster map as integer. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression. Original algorithm parameter name: -i.
##' @param .r `boolean` - Input raster map converted to reflectance (default is radiance). 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression. Original algorithm parameter name: -r.
##' @param .a `boolean` - Input from ETM+ image taken after July 1, 2000. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression. Original algorithm parameter name: -a.
##' @param .b `boolean` - Input from ETM+ image taken before July 1, 2000. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression. Original algorithm parameter name: -b.
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
##' * output - outputRaster - Atmospheric correction
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

grass_i_atcorr <- function(input = qgisprocess:::qgis_default_value(), range = qgisprocess:::qgis_default_value(), elevation = qgisprocess:::qgis_default_value(), visibility = qgisprocess:::qgis_default_value(), parameters = qgisprocess:::qgis_default_value(), rescale = qgisprocess:::qgis_default_value(), output = qgisprocess:::qgis_default_value(), .i = qgisprocess:::qgis_default_value(), .r = qgisprocess:::qgis_default_value(), .a = qgisprocess:::qgis_default_value(), .b = qgisprocess:::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess:::qgis_default_value(), GRASS_REGION_CELLSIZE_PARAMETER = qgisprocess:::qgis_default_value(), GRASS_RASTER_FORMAT_OPT = qgisprocess:::qgis_default_value(), GRASS_RASTER_FORMAT_META = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("grass:i.atcorr")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("grass:i.atcorr", `input` = input, `range` = range, `elevation` = elevation, `visibility` = visibility, `parameters` = parameters, `rescale` = rescale, `output` = output, `-i` = .i, `-r` = .r, `-a` = .a, `-b` = .b, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER, `GRASS_RASTER_FORMAT_OPT` = GRASS_RASTER_FORMAT_OPT, `GRASS_RASTER_FORMAT_META` = GRASS_RASTER_FORMAT_META,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("grass:i.atcorr", `input` = input, `range` = range, `elevation` = elevation, `visibility` = visibility, `parameters` = parameters, `rescale` = rescale, `output` = output, `-i` = .i, `-r` = .r, `-a` = .a, `-b` = .b, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER, `GRASS_RASTER_FORMAT_OPT` = GRASS_RASTER_FORMAT_OPT, `GRASS_RASTER_FORMAT_META` = GRASS_RASTER_FORMAT_META,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "output")
  }
}