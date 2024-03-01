##' QGIS Algorithm provided by GRASS r.series.interp (grass:r.series.interp). Interpolates raster maps located (temporal or spatial) in between input raster maps at specific sampling positions.
##'
##' @title QGIS algorithm - r.series.interp
##'
##' @param input `multilayer` - Input raster layer(s). .
##' @param datapos `string` - Data point position for each input map. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param infile `file` - Input file with one input raster map name and data point position per line, field separator between name and sample point is 'pipe'. Path to a file.
##' @param output `string` - Name for output raster map (comma separated list if multiple). String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param samplingpos `string` - Sampling point position for each output map (comma separated list). String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param outfile `file` - Input file with one output raster map name and sample point position per line, field separator between name and sample point is 'pipe'. Path to a file.
##' @param method `enum`  of `("linear")` - Interpolation method, currently only linear interpolation is supported. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param output_dir `folderDestination` - Interpolated rasters. Path for an existing or new folder.
##' @param GRASS_REGION_PARAMETER `extent` - GRASS GIS 7 region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param GRASS_REGION_CELLSIZE_PARAMETER `number` - GRASS GIS 7 region cellsize (leave 0 for default). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * output_dir - outputFolder - Interpolated rasters
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

grass_r_series_interp <- function(input = qgisprocess:::qgis_default_value(), datapos = qgisprocess:::qgis_default_value(), infile = qgisprocess:::qgis_default_value(), output = qgisprocess:::qgis_default_value(), samplingpos = qgisprocess:::qgis_default_value(), outfile = qgisprocess:::qgis_default_value(), method = qgisprocess:::qgis_default_value(), output_dir = qgisprocess:::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess:::qgis_default_value(), GRASS_REGION_CELLSIZE_PARAMETER = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("grass:r.series.interp")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("grass:r.series.interp", `input` = input, `datapos` = datapos, `infile` = infile, `output` = output, `samplingpos` = samplingpos, `outfile` = outfile, `method` = method, `output_dir` = output_dir, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("grass:r.series.interp", `input` = input, `datapos` = datapos, `infile` = infile, `output` = output, `samplingpos` = samplingpos, `outfile` = outfile, `method` = method, `output_dir` = output_dir, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "output_dir")
  }
}