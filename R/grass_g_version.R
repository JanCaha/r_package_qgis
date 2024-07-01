##' QGIS Algorithm provided by GRASS g.version (grass:g.version). g.version - Display GRASS GIS version info. pPrints only version if run with no options checked.
##'
##' @title QGIS algorithm - g.version
##'
##' @param .c `boolean` - Print copyright message. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression. Original algorithm parameter name: -c.
##' @param .x `boolean` - Print citation options. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression. Original algorithm parameter name: -x.
##' @param .b `boolean` - Print build information. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression. Original algorithm parameter name: -b.
##' @param .r `boolean` - Print GIS library revision number and date. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression. Original algorithm parameter name: -r.
##' @param .e `boolean` - Print info for additional libraries. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression. Original algorithm parameter name: -e.
##' @param .g `boolean` - Print in shell script style (with Git commit reference). 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression. Original algorithm parameter name: -g.
##' @param .verbose `boolean` - Print verbose output. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression. Original algorithm parameter name: --verbose.
##' @param html `fileDestination` - Output file. Path for new file.
##' @param GRASS_REGION_PARAMETER `extent` - GRASS GIS region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * html - outputHtml - Output file
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

grass_g_version <- function(.c = qgisprocess:::qgis_default_value(), .x = qgisprocess:::qgis_default_value(), .b = qgisprocess:::qgis_default_value(), .r = qgisprocess:::qgis_default_value(), .e = qgisprocess:::qgis_default_value(), .g = qgisprocess:::qgis_default_value(), .verbose = qgisprocess:::qgis_default_value(), html = qgisprocess:::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("grass:g.version")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("grass:g.version", `-c` = .c, `-x` = .x, `-b` = .b, `-r` = .r, `-e` = .e, `-g` = .g, `--verbose` = .verbose, `html` = html, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("grass:g.version", `-c` = .c, `-x` = .x, `-b` = .b, `-r` = .r, `-e` = .e, `-g` = .g, `--verbose` = .verbose, `html` = html, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "html")
  }
}