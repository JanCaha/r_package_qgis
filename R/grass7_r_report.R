##' QGIS Algorithm provided by GRASS r.report (grass7:r.report)
##'
##' @title QGIS algorithm r.report
##'
##' @param map `multilayer` - Raster layer(s) to report on. .
##' @param units `enum`  of `("mi", "me", "k", "a", "h", "c", "p")` - Units. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param null_value `string` - Character representing no data cell value. String value.
##' @param page_length `number` - Page length. A numeric value.
##' @param page_width `number` - Page width. A numeric value.
##' @param nsteps `number` - Number of fp subranges to collect stats from. A numeric value.
##' @param sort `enum`  of `("asc", "desc")` - Sort output statistics by cell counts. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param .h `boolean` - Suppress page headers. 1 for true/yes. 0 for false/no. Original algorithm parameter name: {name}.
##' @param .f `boolean` - Use formfeeds between pages. 1 for true/yes. 0 for false/no. Original algorithm parameter name: {name}.
##' @param .e `boolean` - Scientific format. 1 for true/yes. 0 for false/no. Original algorithm parameter name: {name}.
##' @param .n `boolean` - Do not report no data cells. 1 for true/yes. 0 for false/no. Original algorithm parameter name: {name}.
##' @param .a `boolean` - Do not report cells where all maps have no data. 1 for true/yes. 0 for false/no. Original algorithm parameter name: {name}.
##' @param .c `boolean` - Report for cats floating-point ranges (floating-point maps only). 1 for true/yes. 0 for false/no. Original algorithm parameter name: {name}.
##' @param .i `boolean` - Read floating-point map as integer (use map's quant rules). 1 for true/yes. 0 for false/no. Original algorithm parameter name: {name}.
##' @param output `fileDestination` - Name for output file to hold the report. Path for new file.
##' @param GRASS_REGION_PARAMETER `extent` - GRASS GIS 7 region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param GRASS_REGION_CELLSIZE_PARAMETER `number` - GRASS GIS 7 region cellsize (leave 0 for default). A numeric value.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * output - outputFile - Name for output file to hold the report
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

grass7_r_report <- function(map = qgisprocess::qgis_default_value(), units = qgisprocess::qgis_default_value(), null_value = qgisprocess::qgis_default_value(), page_length = qgisprocess::qgis_default_value(), page_width = qgisprocess::qgis_default_value(), nsteps = qgisprocess::qgis_default_value(), sort = qgisprocess::qgis_default_value(), .h = qgisprocess::qgis_default_value(), .f = qgisprocess::qgis_default_value(), .e = qgisprocess::qgis_default_value(), .n = qgisprocess::qgis_default_value(), .a = qgisprocess::qgis_default_value(), .c = qgisprocess::qgis_default_value(), .i = qgisprocess::qgis_default_value(), output = qgisprocess::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess::qgis_default_value(), GRASS_REGION_CELLSIZE_PARAMETER = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("grass7:r.report",`map` = map, `units` = units, `null_value` = null_value, `page_length` = page_length, `page_width` = page_width, `nsteps` = nsteps, `sort` = sort, `-h` = .h, `-f` = .f, `-e` = .e, `-n` = .n, `-a` = .a, `-c` = .c, `-i` = .i, `output` = output, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER,...)
  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "output")
}
}