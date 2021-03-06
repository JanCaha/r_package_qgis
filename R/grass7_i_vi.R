##' QGIS Algorithm provided by GRASS i.vi (grass7:i.vi)
##'
##' @title QGIS algorithm i.vi
##'
##' @param red `raster` - Name of input red channel surface reflectance map (0.0-1.0). Path to a raster layer.
##' @param viname `enum`  of `("arvi", "dvi", "evi", "evi2", "gvi", "gari", "gemi", "ipvi", "msavi", "msavi2", "ndvi", "pvi", "savi", "sr", "vari", "wdvi")` - Type of vegetation index. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param nir `raster` - Name of input nir channel surface reflectance map (0.0-1.0). Path to a raster layer.
##' @param green `raster` - Name of input green channel surface reflectance map (0.0-1.0). Path to a raster layer.
##' @param blue `raster` - Name of input blue channel surface reflectance map (0.0-1.0). Path to a raster layer.
##' @param band5 `raster` - Name of input 5th channel surface reflectance map (0.0-1.0). Path to a raster layer.
##' @param band7 `raster` - Name of input 7th channel surface reflectance map (0.0-1.0). Path to a raster layer.
##' @param soil_line_slope `number` - Value of the slope of the soil line (MSAVI2 only). A numeric value.
##' @param soil_line_intercept `number` - Value of the factor of reduction of soil noise (MSAVI2 only). A numeric value.
##' @param soil_noise_reduction `number` - Value of the slope of the soil line (MSAVI2 only). A numeric value.
##' @param storage_bit `enum`  of `("7", "8", "9", "10", "16")` - Maximum bits for digital numbers. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param output `rasterDestination` - Vegetation Index. Path for new raster layer.
##' @param GRASS_REGION_PARAMETER `extent` - GRASS GIS 7 region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param GRASS_REGION_CELLSIZE_PARAMETER `number` - GRASS GIS 7 region cellsize (leave 0 for default). A numeric value.
##' @param GRASS_RASTER_FORMAT_OPT `string` - Output Rasters format options (createopt). String value.
##' @param GRASS_RASTER_FORMAT_META `string` - Output Rasters format metadata options (metaopt). String value.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * output - outputRaster - Vegetation Index
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

grass7_i_vi <- function(red = qgisprocess::qgis_default_value(), viname = qgisprocess::qgis_default_value(), nir = qgisprocess::qgis_default_value(), green = qgisprocess::qgis_default_value(), blue = qgisprocess::qgis_default_value(), band5 = qgisprocess::qgis_default_value(), band7 = qgisprocess::qgis_default_value(), soil_line_slope = qgisprocess::qgis_default_value(), soil_line_intercept = qgisprocess::qgis_default_value(), soil_noise_reduction = qgisprocess::qgis_default_value(), storage_bit = qgisprocess::qgis_default_value(), output = qgisprocess::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess::qgis_default_value(), GRASS_REGION_CELLSIZE_PARAMETER = qgisprocess::qgis_default_value(), GRASS_RASTER_FORMAT_OPT = qgisprocess::qgis_default_value(), GRASS_RASTER_FORMAT_META = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("grass7:i.vi")

  output <- qgisprocess::qgis_run_algorithm("grass7:i.vi", `red` = red, `viname` = viname, `nir` = nir, `green` = green, `blue` = blue, `band5` = band5, `band7` = band7, `soil_line_slope` = soil_line_slope, `soil_line_intercept` = soil_line_intercept, `soil_noise_reduction` = soil_noise_reduction, `storage_bit` = storage_bit, `output` = output, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER, `GRASS_RASTER_FORMAT_OPT` = GRASS_RASTER_FORMAT_OPT, `GRASS_RASTER_FORMAT_META` = GRASS_RASTER_FORMAT_META,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "output")
  }
}