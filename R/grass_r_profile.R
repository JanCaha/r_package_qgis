##' QGIS Algorithm provided by GRASS r.profile (grass:r.profile). Outputs the raster layer values lying on user-defined line(s).
##'
##' @title QGIS algorithm - r.profile
##'
##' @param input `raster` - Input raster layer. Path to a raster layer.
##' @param coordinates `string` - Profile coordinate pairs. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param resolution `number` - Resolution along profile. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param null_value `string` - Character to represent no data cell. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param file `file` - Name of input file containing coordinate pairs. Path to a file.
##' @param .g `boolean` - Output easting and northing in first two columns of four column output. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression. Original algorithm parameter name: -g.
##' @param .c `boolean` - Output RRR:GGG:BBB color values for each profile point. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression. Original algorithm parameter name: -c.
##' @param output `fileDestination` - Profile. Path for new file.
##' @param GRASS_REGION_PARAMETER `extent` - GRASS GIS region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param GRASS_REGION_CELLSIZE_PARAMETER `number` - GRASS GIS region cellsize (leave 0 for default). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * output - outputFile - Profile
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

grass_r_profile <- function(input = qgisprocess:::qgis_default_value(), coordinates = qgisprocess:::qgis_default_value(), resolution = qgisprocess:::qgis_default_value(), null_value = qgisprocess:::qgis_default_value(), file = qgisprocess:::qgis_default_value(), .g = qgisprocess:::qgis_default_value(), .c = qgisprocess:::qgis_default_value(), output = qgisprocess:::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess:::qgis_default_value(), GRASS_REGION_CELLSIZE_PARAMETER = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("grass:r.profile")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("grass:r.profile", `input` = input, `coordinates` = coordinates, `resolution` = resolution, `null_value` = null_value, `file` = file, `-g` = .g, `-c` = .c, `output` = output, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("grass:r.profile", `input` = input, `coordinates` = coordinates, `resolution` = resolution, `null_value` = null_value, `file` = file, `-g` = .g, `-c` = .c, `output` = output, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "output")
  }
}