##' QGIS Algorithm provided by GRASS r.in.lidar (grass:r.in.lidar). Creates a raster map from LAS LiDAR points using univariate statistics.
##'
##' @title QGIS algorithm - r.in.lidar
##'
##' @param input `file` - LAS input file. Path to a file.
##' @param method `enum`  of `("n", "min", "max", "range", "sum", "mean", "stddev", "variance", "coeff_var", "median", "percentile", "skewness", "trimmean")` - Statistic to use for raster values. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param type `enum`  of `("CELL", "FCELL", "DCELL")` - Storage type for resultant raster map. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param base_raster `raster` - Subtract raster values from the Z coordinates. Path to a raster layer.
##' @param zrange `range` - Filter range for z data (min, max). Two comma separated numeric values, e.g. '1,10'.
##' @param zscale `number` - Scale to apply to z data. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param intensity_range `range` - Filter range for intensity values (min, max). Two comma separated numeric values, e.g. '1,10'.
##' @param intensity_scale `number` - Scale to apply to intensity values. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param percent `number` - Percent of map to keep in memory. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param pth `number` - pth percentile of the values (between 1 and 100). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param trim `number` - Discard trim percent of the smallest and trim percent of the largest observations (0-50). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param resolution `number` - Output raster resolution. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param return_filter `string` - Only import points of selected return type Options: first, last, mid. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param class_filter `string` - Only import points of selected class(es) (comma separated integers). String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param .e `boolean` - Use the extent of the input for the raster extent. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression. Original algorithm parameter name: -e.
##' @param .n `boolean` - Set computation region to match the new raster map. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression. Original algorithm parameter name: -n.
##' @param .o `boolean` - Override projection check (use current location's projection). 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression. Original algorithm parameter name: -o.
##' @param .i `boolean` - Use intensity values rather than Z values. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression. Original algorithm parameter name: -i.
##' @param .j `boolean` - Use Z values for filtering, but intensity values for statistics. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression. Original algorithm parameter name: -j.
##' @param .d `boolean` - Use base raster resolution instead of computational region. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression. Original algorithm parameter name: -d.
##' @param .v `boolean` - Use only valid points. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression. Original algorithm parameter name: -v.
##' @param output `rasterDestination` - Lidar Raster. Path for new raster layer.
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
##' * output - outputRaster - Lidar Raster
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

grass_r_in_lidar <- function(input = qgisprocess:::qgis_default_value(), method = qgisprocess:::qgis_default_value(), type = qgisprocess:::qgis_default_value(), base_raster = qgisprocess:::qgis_default_value(), zrange = qgisprocess:::qgis_default_value(), zscale = qgisprocess:::qgis_default_value(), intensity_range = qgisprocess:::qgis_default_value(), intensity_scale = qgisprocess:::qgis_default_value(), percent = qgisprocess:::qgis_default_value(), pth = qgisprocess:::qgis_default_value(), trim = qgisprocess:::qgis_default_value(), resolution = qgisprocess:::qgis_default_value(), return_filter = qgisprocess:::qgis_default_value(), class_filter = qgisprocess:::qgis_default_value(), .e = qgisprocess:::qgis_default_value(), .n = qgisprocess:::qgis_default_value(), .o = qgisprocess:::qgis_default_value(), .i = qgisprocess:::qgis_default_value(), .j = qgisprocess:::qgis_default_value(), .d = qgisprocess:::qgis_default_value(), .v = qgisprocess:::qgis_default_value(), output = qgisprocess:::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess:::qgis_default_value(), GRASS_REGION_CELLSIZE_PARAMETER = qgisprocess:::qgis_default_value(), GRASS_RASTER_FORMAT_OPT = qgisprocess:::qgis_default_value(), GRASS_RASTER_FORMAT_META = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("grass:r.in.lidar")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("grass:r.in.lidar", `input` = input, `method` = method, `type` = type, `base_raster` = base_raster, `zrange` = zrange, `zscale` = zscale, `intensity_range` = intensity_range, `intensity_scale` = intensity_scale, `percent` = percent, `pth` = pth, `trim` = trim, `resolution` = resolution, `return_filter` = return_filter, `class_filter` = class_filter, `-e` = .e, `-n` = .n, `-o` = .o, `-i` = .i, `-j` = .j, `-d` = .d, `-v` = .v, `output` = output, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER, `GRASS_RASTER_FORMAT_OPT` = GRASS_RASTER_FORMAT_OPT, `GRASS_RASTER_FORMAT_META` = GRASS_RASTER_FORMAT_META,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("grass:r.in.lidar", `input` = input, `method` = method, `type` = type, `base_raster` = base_raster, `zrange` = zrange, `zscale` = zscale, `intensity_range` = intensity_range, `intensity_scale` = intensity_scale, `percent` = percent, `pth` = pth, `trim` = trim, `resolution` = resolution, `return_filter` = return_filter, `class_filter` = class_filter, `-e` = .e, `-n` = .n, `-o` = .o, `-i` = .i, `-j` = .j, `-d` = .d, `-v` = .v, `output` = output, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER, `GRASS_RASTER_FORMAT_OPT` = GRASS_RASTER_FORMAT_OPT, `GRASS_RASTER_FORMAT_META` = GRASS_RASTER_FORMAT_META,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "output")
  }
}