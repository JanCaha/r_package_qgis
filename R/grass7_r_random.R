##' QGIS Algorithm provided by GRASS r.random (grass7:r.random)
##'
##' @title QGIS algorithm r.random
##'
##' @param input `raster` - Input raster layer. Path to a raster layer.
##' @param cover `raster` - Input cover raster layer. Path to a raster layer.
##' @param npoints `number` - The number of points to allocate. A numeric value.
##' @param .z `boolean` - Generate points also for NULL category. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -z.
##' @param .d `boolean` - Generate vector points as 3D points. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -d.
##' @param .b `boolean` - Do not build topology. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -b.
##' @param raster `rasterDestination` - Random raster. Path for new raster layer.
##' @param vector `vectorDestination` - Random vector. Path for new vector layer.
##' @param GRASS_REGION_PARAMETER `extent` - GRASS GIS 7 region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param GRASS_REGION_CELLSIZE_PARAMETER `number` - GRASS GIS 7 region cellsize (leave 0 for default). A numeric value.
##' @param GRASS_RASTER_FORMAT_OPT `string` - Output Rasters format options (createopt). String value.
##' @param GRASS_RASTER_FORMAT_META `string` - Output Rasters format metadata options (metaopt). String value.
##' @param GRASS_OUTPUT_TYPE_PARAMETER `enum`  of `("auto", "point", "line", "area")` - v.out.ogr output type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param GRASS_VECTOR_DSCO `string` - v.out.ogr output data source options (dsco). String value.
##' @param GRASS_VECTOR_LCO `string` - v.out.ogr output layer options (lco). String value.
##' @param GRASS_VECTOR_EXPORT_NOCAT `boolean` - Also export features without category (not labeled). Otherwise only features with category are exported. 1 for true/yes. 0 for false/no.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * raster - outputRaster - Random raster
##' * vector - outputVector - Random vector
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

grass7_r_random <- function(input = qgisprocess::qgis_default_value(), cover = qgisprocess::qgis_default_value(), npoints = qgisprocess::qgis_default_value(), .z = qgisprocess::qgis_default_value(), .d = qgisprocess::qgis_default_value(), .b = qgisprocess::qgis_default_value(), raster = qgisprocess::qgis_default_value(), vector = qgisprocess::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess::qgis_default_value(), GRASS_REGION_CELLSIZE_PARAMETER = qgisprocess::qgis_default_value(), GRASS_RASTER_FORMAT_OPT = qgisprocess::qgis_default_value(), GRASS_RASTER_FORMAT_META = qgisprocess::qgis_default_value(), GRASS_OUTPUT_TYPE_PARAMETER = qgisprocess::qgis_default_value(), GRASS_VECTOR_DSCO = qgisprocess::qgis_default_value(), GRASS_VECTOR_LCO = qgisprocess::qgis_default_value(), GRASS_VECTOR_EXPORT_NOCAT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("grass7:r.random")

  output <- qgisprocess::qgis_run_algorithm("grass7:r.random", `input` = input, `cover` = cover, `npoints` = npoints, `-z` = .z, `-d` = .d, `-b` = .b, `raster` = raster, `vector` = vector, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER, `GRASS_RASTER_FORMAT_OPT` = GRASS_RASTER_FORMAT_OPT, `GRASS_RASTER_FORMAT_META` = GRASS_RASTER_FORMAT_META, `GRASS_OUTPUT_TYPE_PARAMETER` = GRASS_OUTPUT_TYPE_PARAMETER, `GRASS_VECTOR_DSCO` = GRASS_VECTOR_DSCO, `GRASS_VECTOR_LCO` = GRASS_VECTOR_LCO, `GRASS_VECTOR_EXPORT_NOCAT` = GRASS_VECTOR_EXPORT_NOCAT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "raster")
  }
}