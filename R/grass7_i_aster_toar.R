##' QGIS Algorithm provided by GRASS i.aster.toar (grass7:i.aster.toar)
##'
##' @title QGIS algorithm i.aster.toar
##'
##' @param input `multilayer` - Names of ASTER DN layers (15 layers). .
##' @param dayofyear `number` - Day of Year of satellite overpass (0-366). A numeric value.
##' @param sun_elevation `number` - Sun elevation angle (degrees, < 90.0). A numeric value.
##' @param .r `boolean` - Output is radiance (W/m2). 1 for true/yes. 0 for false/no. Original algorithm parameter name: {name}.
##' @param .a `boolean` - VNIR is High Gain. 1 for true/yes. 0 for false/no. Original algorithm parameter name: {name}.
##' @param .b `boolean` - SWIR is High Gain. 1 for true/yes. 0 for false/no. Original algorithm parameter name: {name}.
##' @param .c `boolean` - VNIR is Low Gain 1. 1 for true/yes. 0 for false/no. Original algorithm parameter name: {name}.
##' @param .d `boolean` - SWIR is Low Gain 1. 1 for true/yes. 0 for false/no. Original algorithm parameter name: {name}.
##' @param .e `boolean` - SWIR is Low Gain 2. 1 for true/yes. 0 for false/no. Original algorithm parameter name: {name}.
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

grass7_i_aster_toar <- function(input = qgisprocess::qgis_default_value(), dayofyear = qgisprocess::qgis_default_value(), sun_elevation = qgisprocess::qgis_default_value(), .r = qgisprocess::qgis_default_value(), .a = qgisprocess::qgis_default_value(), .b = qgisprocess::qgis_default_value(), .c = qgisprocess::qgis_default_value(), .d = qgisprocess::qgis_default_value(), .e = qgisprocess::qgis_default_value(), output = qgisprocess::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess::qgis_default_value(), GRASS_REGION_CELLSIZE_PARAMETER = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("grass7:i.aster.toar",`input` = input, `dayofyear` = dayofyear, `sun_elevation` = sun_elevation, `-r` = .r, `-a` = .a, `-b` = .b, `-c` = .c, `-d` = .d, `-e` = .e, `output` = output, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "output")
  }
}