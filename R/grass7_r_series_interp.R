##' QGIS Algorithm provided by GRASS r.series.interp (grass7:r.series.interp)
##'
##' @title QGIS algorithm r.series.interp
##'
##' @param input `multilayer` - Input raster layer(s). .
##' @param datapos `string` - Data point position for each input map. String value.
##' @param infile `file` - Input file with one input raster map name and data point position per line, field separator between name and sample point is 'pipe'. Path to a file.
##' @param output `string` - Name for output raster map (comma separated list if multiple). String value.
##' @param samplingpos `string` - Sampling point position for each output map (comma separated list). String value.
##' @param outfile `file` - Input file with one output raster map name and sample point position per line, field separator between name and sample point is 'pipe'. Path to a file.
##' @param method `enum`  of `("linear")` - Interpolation method, currently only linear interpolation is supported. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param output_dir `folderDestination` - Interpolated rasters. Path for an existing or new folder.
##' @param GRASS_REGION_PARAMETER `extent` - GRASS GIS 7 region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param GRASS_REGION_CELLSIZE_PARAMETER `number` - GRASS GIS 7 region cellsize (leave 0 for default). A numeric value.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * output_dir - outputFolder - Interpolated rasters
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

grass7_r_series_interp <- function(input = qgisprocess::qgis_default_value(), datapos = qgisprocess::qgis_default_value(), infile = qgisprocess::qgis_default_value(), output = qgisprocess::qgis_default_value(), samplingpos = qgisprocess::qgis_default_value(), outfile = qgisprocess::qgis_default_value(), method = qgisprocess::qgis_default_value(), output_dir = qgisprocess::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess::qgis_default_value(), GRASS_REGION_CELLSIZE_PARAMETER = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("grass7:r.series.interp")

  output <- qgisprocess::qgis_run_algorithm("grass7:r.series.interp", `input` = input, `datapos` = datapos, `infile` = infile, `output` = output, `samplingpos` = samplingpos, `outfile` = outfile, `method` = method, `output_dir` = output_dir, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "output_dir")
  }
}