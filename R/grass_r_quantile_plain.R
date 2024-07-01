##' QGIS Algorithm provided by GRASS r.quantile.plain (grass:r.quantile.plain). r.quantile.plain - Compute quantiles using two passes and save them as plain text.
##'
##' @title QGIS algorithm - r.quantile.plain
##'
##' @param input `raster` - Input raster layer. Path to a raster layer.
##' @param quantiles `number` - Number of quantiles. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param percentiles `string` - List of percentiles. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param bins `number` - Number of bins to use. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param .r `boolean` - Generate recode rules based on quantile-defined intervals. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression. Original algorithm parameter name: -r.
##' @param file `fileDestination` - Quantiles. Path for new file.
##' @param GRASS_REGION_PARAMETER `extent` - GRASS GIS region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param GRASS_REGION_CELLSIZE_PARAMETER `number` - GRASS GIS region cellsize (leave 0 for default). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * file - outputFile - Quantiles
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

grass_r_quantile_plain <- function(input = qgisprocess:::qgis_default_value(), quantiles = qgisprocess:::qgis_default_value(), percentiles = qgisprocess:::qgis_default_value(), bins = qgisprocess:::qgis_default_value(), .r = qgisprocess:::qgis_default_value(), file = qgisprocess:::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess:::qgis_default_value(), GRASS_REGION_CELLSIZE_PARAMETER = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("grass:r.quantile.plain")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("grass:r.quantile.plain", `input` = input, `quantiles` = quantiles, `percentiles` = percentiles, `bins` = bins, `-r` = .r, `file` = file, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("grass:r.quantile.plain", `input` = input, `quantiles` = quantiles, `percentiles` = percentiles, `bins` = bins, `-r` = .r, `file` = file, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "file")
  }
}