##' QGIS Algorithm provided by GRASS r.stats (grass7:r.stats). Generates area statistics for raster layers.
##'
##' @title QGIS algorithm - r.stats
##'
##' @param input `multilayer` - Name of input raster map. .
##' @param separator `string` - Output field separator. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param null_value `string` - String representing no data cell value. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param nsteps `number` - Number of floating-point subranges to collect stats from. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param sort `enum`  of `("asc", "desc")` - Sort output statistics by cell counts. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param .arg_1 `boolean` - One cell (range) per line. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression. Original algorithm parameter name: -1.
##' @param .A `boolean` - Print averaged values instead of intervals. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression. Original algorithm parameter name: -A.
##' @param .a `boolean` - Print area totals. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression. Original algorithm parameter name: -a.
##' @param .c `boolean` - Print cell counts. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression. Original algorithm parameter name: -c.
##' @param .p `boolean` - Print APPROXIMATE percents (total percent may not be 100%). 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression. Original algorithm parameter name: -p.
##' @param .l `boolean` - Print category labels. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression. Original algorithm parameter name: -l.
##' @param .g `boolean` - Print grid coordinates (east and north). 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression. Original algorithm parameter name: -g.
##' @param .x `boolean` - Print x and y (column and row). 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression. Original algorithm parameter name: -x.
##' @param .r `boolean` - Print raw indexes of fp ranges (fp maps only). 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression. Original algorithm parameter name: -r.
##' @param .n `boolean` - Suppress reporting of any NULLs. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression. Original algorithm parameter name: -n.
##' @param .N `boolean` - Suppress reporting of NULLs when all values are NULL. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression. Original algorithm parameter name: -N.
##' @param .C `boolean` - Report for cats fp ranges (fp maps only). 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression. Original algorithm parameter name: -C.
##' @param .i `boolean` - Read fp map as integer (use map's quant rules). 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression. Original algorithm parameter name: -i.
##' @param html `fileDestination` - Statistics. Path for new file.
##' @param GRASS_REGION_PARAMETER `extent` - GRASS GIS 7 region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param GRASS_REGION_CELLSIZE_PARAMETER `number` - GRASS GIS 7 region cellsize (leave 0 for default). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * html - outputHtml - Statistics
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

grass7_r_stats <- function(input = qgisprocess:::qgis_default_value(), separator = qgisprocess:::qgis_default_value(), null_value = qgisprocess:::qgis_default_value(), nsteps = qgisprocess:::qgis_default_value(), sort = qgisprocess:::qgis_default_value(), .arg_1 = qgisprocess:::qgis_default_value(), .A = qgisprocess:::qgis_default_value(), .a = qgisprocess:::qgis_default_value(), .c = qgisprocess:::qgis_default_value(), .p = qgisprocess:::qgis_default_value(), .l = qgisprocess:::qgis_default_value(), .g = qgisprocess:::qgis_default_value(), .x = qgisprocess:::qgis_default_value(), .r = qgisprocess:::qgis_default_value(), .n = qgisprocess:::qgis_default_value(), .N = qgisprocess:::qgis_default_value(), .C = qgisprocess:::qgis_default_value(), .i = qgisprocess:::qgis_default_value(), html = qgisprocess:::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess:::qgis_default_value(), GRASS_REGION_CELLSIZE_PARAMETER = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("grass7:r.stats")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("grass7:r.stats", `input` = input, `separator` = separator, `null_value` = null_value, `nsteps` = nsteps, `sort` = sort, `-1` = .arg_1, `-A` = .A, `-a` = .a, `-c` = .c, `-p` = .p, `-l` = .l, `-g` = .g, `-x` = .x, `-r` = .r, `-n` = .n, `-N` = .N, `-C` = .C, `-i` = .i, `html` = html, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("grass7:r.stats", `input` = input, `separator` = separator, `null_value` = null_value, `nsteps` = nsteps, `sort` = sort, `-1` = .arg_1, `-A` = .A, `-a` = .a, `-c` = .c, `-p` = .p, `-l` = .l, `-g` = .g, `-x` = .x, `-r` = .r, `-n` = .n, `-N` = .N, `-C` = .C, `-i` = .i, `html` = html, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "html")
  }
}