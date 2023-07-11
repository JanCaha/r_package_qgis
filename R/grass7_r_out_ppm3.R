##' QGIS Algorithm provided by GRASS r.out.ppm3 (grass7:r.out.ppm3). Converts 3 GRASS raster layers (R,G,B) to a PPM image file
##'
##' @title QGIS algorithm - r.out.ppm3
##'
##' @param red `raster` - Name of raster map to be used for red. Path to a raster layer.
##' @param green `raster` - Name of raster map to be used for green. Path to a raster layer.
##' @param blue `raster` - Name of raster map to be used for blue. Path to a raster layer.
##' @param .c `boolean` - Add comments to describe the region. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression. Original algorithm parameter name: -c.
##' @param output `fileDestination` - Name for new PPM file. Path for new file.
##' @param GRASS_REGION_PARAMETER `extent` - GRASS GIS 7 region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param GRASS_REGION_CELLSIZE_PARAMETER `number` - GRASS GIS 7 region cellsize (leave 0 for default). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * output - outputFile - Name for new PPM file
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

grass7_r_out_ppm3 <- function(red = qgisprocess:::qgis_default_value(), green = qgisprocess:::qgis_default_value(), blue = qgisprocess:::qgis_default_value(), .c = qgisprocess:::qgis_default_value(), output = qgisprocess:::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess:::qgis_default_value(), GRASS_REGION_CELLSIZE_PARAMETER = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("grass7:r.out.ppm3")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("grass7:r.out.ppm3", `red` = red, `green` = green, `blue` = blue, `-c` = .c, `output` = output, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("grass7:r.out.ppm3", `red` = red, `green` = green, `blue` = blue, `-c` = .c, `output` = output, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "output")
  }
}