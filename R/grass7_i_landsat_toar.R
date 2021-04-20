##' QGIS Algorithm provided by GRASS i.landsat.toar (grass7:i.landsat.toar)
##'
##' @title QGIS algorithm i.landsat.toar
##'
##' @param rasters `multilayer` - Landsat input rasters. .
##' @param metfile `file` - Name of Landsat metadata file (.met or MTL.txt). Path to a file.
##' @param sensor `enum`  of `("mss1", "mss2", "mss3", "mss4", "mss5", "tm4", "tm5", "tm7", "oli8")` - Spacecraft sensor. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param method `enum`  of `("uncorrected", "dos1", "dos2", "dos2b", "dos3", "dos4")` - Atmospheric correction method. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param date `string` - Image acquisition date (yyyy-mm-dd). String value.
##' @param sun_elevation `number` - Sun elevation in degrees. A numeric value.
##' @param product_date `string` - Image creation date (yyyy-mm-dd). String value.
##' @param gain `string` - Gain (H/L) of all Landsat ETM+ bands (1-5,61,62,7,8). String value.
##' @param percent `number` - Percent of solar radiance in path radiance. A numeric value.
##' @param pixel `number` - Minimum pixels to consider digital number as dark object. A numeric value.
##' @param rayleigh `number` - Rayleigh atmosphere (diffuse sky irradiance). A numeric value.
##' @param scale `number` - Scale factor for output. A numeric value.
##' @param .r `boolean` - Output at-sensor radiance instead of reflectance for all bands. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -r.
##' @param .n `boolean` - Input raster maps use as extension the number of the band instead the code. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -n.
##' @param output `folderDestination` - Output Directory. Path for an existing or new folder.
##' @param GRASS_REGION_PARAMETER `extent` - GRASS GIS 7 region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param GRASS_REGION_CELLSIZE_PARAMETER `number` - GRASS GIS 7 region cellsize (leave 0 for default). A numeric value.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * output - outputFolder - Output Directory
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

grass7_i_landsat_toar <- function(rasters = qgisprocess::qgis_default_value(), metfile = qgisprocess::qgis_default_value(), sensor = qgisprocess::qgis_default_value(), method = qgisprocess::qgis_default_value(), date = qgisprocess::qgis_default_value(), sun_elevation = qgisprocess::qgis_default_value(), product_date = qgisprocess::qgis_default_value(), gain = qgisprocess::qgis_default_value(), percent = qgisprocess::qgis_default_value(), pixel = qgisprocess::qgis_default_value(), rayleigh = qgisprocess::qgis_default_value(), scale = qgisprocess::qgis_default_value(), .r = qgisprocess::qgis_default_value(), .n = qgisprocess::qgis_default_value(), output = qgisprocess::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess::qgis_default_value(), GRASS_REGION_CELLSIZE_PARAMETER = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("grass7:i.landsat.toar",`rasters` = rasters, `metfile` = metfile, `sensor` = sensor, `method` = method, `date` = date, `sun_elevation` = sun_elevation, `product_date` = product_date, `gain` = gain, `percent` = percent, `pixel` = pixel, `rayleigh` = rayleigh, `scale` = scale, `-r` = .r, `-n` = .n, `output` = output, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "output")
  }
}