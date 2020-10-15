##' QGIS Algorithm provided by GRASS r.profile (grass7:r.profile)
##'
##' @title QGIS algorithm r.profile
##'
##' @param input `raster` - Input raster layer. Path to a raster layer.
##' @param coordinates `string` - Profile coordinate pairs. String value.
##' @param resolution `number` - Resolution along profile. A numeric value.
##' @param null_value `string` - Character to represent no data cell. String value.
##' @param file `file` - Name of input file containing coordinate pairs. Path to a file.
##' @param .g `boolean` - Output easting and northing in first two columns of four column output. 1 for true/yes. 0 for false/no. Original algorithm parameter name: {name}.
##' @param .c `boolean` - Output RRR:GGG:BBB color values for each profile point. 1 for true/yes. 0 for false/no. Original algorithm parameter name: {name}.
##' @param output `fileDestination` - Profile. Path for new file.
##' @param GRASS_REGION_PARAMETER `extent` - GRASS GIS 7 region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param GRASS_REGION_CELLSIZE_PARAMETER `number` - GRASS GIS 7 region cellsize (leave 0 for default). A numeric value.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * output - outputFile - Profile
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

grass7_r_profile <- function(input = qgisprocess::qgis_default_value(), coordinates = qgisprocess::qgis_default_value(), resolution = qgisprocess::qgis_default_value(), null_value = qgisprocess::qgis_default_value(), file = qgisprocess::qgis_default_value(), .g = qgisprocess::qgis_default_value(), .c = qgisprocess::qgis_default_value(), output = qgisprocess::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess::qgis_default_value(), GRASS_REGION_CELLSIZE_PARAMETER = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("grass7:r.profile",`input` = input, `coordinates` = coordinates, `resolution` = resolution, `null_value` = null_value, `file` = file, `-g` = .g, `-c` = .c, `output` = output, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER,...)
  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "output")
}
}