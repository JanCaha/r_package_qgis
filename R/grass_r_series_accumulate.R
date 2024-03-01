##' QGIS Algorithm provided by GRASS r.series.accumulate (grass:r.series.accumulate). Makes each output cell value an accumulation function of the values assigned to the corresponding cells in the input raster map layers.
##'
##' @title QGIS algorithm - r.series.accumulate
##'
##' @param input `multilayer` - Input raster layer(s). .
##' @param lower `raster` - Raster map specifying the lower accumulation limit. Path to a raster layer.
##' @param upper `raster` - Raster map specifying the upper accumulation limit. Path to a raster layer.
##' @param method `enum`  of `("gdd", "bedd", "huglin", "mean")` - This method will be applied to compute the accumulative values from the input maps. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param scale `number` - Scale factor for input. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param shift `number` - Shift factor for input. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param range `range` - Ignore values outside this range (min,max). Two comma separated numeric values, e.g. '1,10'.
##' @param limits `range` - Lower and upper accumulation limits (lower,upper). Two comma separated numeric values, e.g. '1,10'.
##' @param .n `boolean` - Propagate NULLs. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression. Original algorithm parameter name: -n.
##' @param .f `boolean` - Create a FCELL map (floating point single precision) as output. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression. Original algorithm parameter name: -f.
##' @param output `rasterDestination` - Accumulated. Path for new raster layer.
##' @param GRASS_REGION_PARAMETER `extent` - GRASS GIS 7 region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param GRASS_REGION_CELLSIZE_PARAMETER `number` - GRASS GIS 7 region cellsize (leave 0 for default). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param GRASS_RASTER_FORMAT_OPT `string` - Output Rasters format options (createopt). String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param GRASS_RASTER_FORMAT_META `string` - Output Rasters format metadata options (metaopt). String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * output - outputRaster - Accumulated
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

grass_r_series_accumulate <- function(input = qgisprocess:::qgis_default_value(), lower = qgisprocess:::qgis_default_value(), upper = qgisprocess:::qgis_default_value(), method = qgisprocess:::qgis_default_value(), scale = qgisprocess:::qgis_default_value(), shift = qgisprocess:::qgis_default_value(), range = qgisprocess:::qgis_default_value(), limits = qgisprocess:::qgis_default_value(), .n = qgisprocess:::qgis_default_value(), .f = qgisprocess:::qgis_default_value(), output = qgisprocess:::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess:::qgis_default_value(), GRASS_REGION_CELLSIZE_PARAMETER = qgisprocess:::qgis_default_value(), GRASS_RASTER_FORMAT_OPT = qgisprocess:::qgis_default_value(), GRASS_RASTER_FORMAT_META = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("grass:r.series.accumulate")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("grass:r.series.accumulate", `input` = input, `lower` = lower, `upper` = upper, `method` = method, `scale` = scale, `shift` = shift, `range` = range, `limits` = limits, `-n` = .n, `-f` = .f, `output` = output, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER, `GRASS_RASTER_FORMAT_OPT` = GRASS_RASTER_FORMAT_OPT, `GRASS_RASTER_FORMAT_META` = GRASS_RASTER_FORMAT_META,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("grass:r.series.accumulate", `input` = input, `lower` = lower, `upper` = upper, `method` = method, `scale` = scale, `shift` = shift, `range` = range, `limits` = limits, `-n` = .n, `-f` = .f, `output` = output, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER, `GRASS_RASTER_FORMAT_OPT` = GRASS_RASTER_FORMAT_OPT, `GRASS_RASTER_FORMAT_META` = GRASS_RASTER_FORMAT_META,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "output")
  }
}