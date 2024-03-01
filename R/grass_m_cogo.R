##' QGIS Algorithm provided by GRASS m.cogo (grass:m.cogo). A simple utility for converting bearing and distance measurements to coordinates and vice versa. It assumes a Cartesian coordinate system
##'
##' @title QGIS algorithm - m.cogo
##'
##' @param input `file` - Name of input file. Path to a file.
##' @param output `fileDestination` - Output text file. Path for new file.
##' @param coordinates `point` - Starting coordinate pair. Point coordinate as an 'x,y' string, e.g. '1.5,10.1'.
##' @param .l `boolean` - Lines are labelled. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression. Original algorithm parameter name: -l.
##' @param .q `boolean` - Suppress warnings. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression. Original algorithm parameter name: -q.
##' @param .r `boolean` - Convert from coordinates to bearing and distance. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression. Original algorithm parameter name: -r.
##' @param .c `boolean` - Repeat the starting coordinate at the end to close a loop. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression. Original algorithm parameter name: -c.
##' @param GRASS_REGION_PARAMETER `extent` - GRASS GIS 7 region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * output - outputFile - Output text file
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

grass_m_cogo <- function(input = qgisprocess:::qgis_default_value(), output = qgisprocess:::qgis_default_value(), coordinates = qgisprocess:::qgis_default_value(), .l = qgisprocess:::qgis_default_value(), .q = qgisprocess:::qgis_default_value(), .r = qgisprocess:::qgis_default_value(), .c = qgisprocess:::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("grass:m.cogo")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("grass:m.cogo", `input` = input, `output` = output, `coordinates` = coordinates, `-l` = .l, `-q` = .q, `-r` = .r, `-c` = .c, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("grass:m.cogo", `input` = input, `output` = output, `coordinates` = coordinates, `-l` = .l, `-q` = .q, `-r` = .r, `-c` = .c, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "output")
  }
}