##' QGIS Algorithm provided by GRASS r.quantile.plain (grass7:r.quantile.plain)
##'
##' @title QGIS algorithm r.quantile.plain
##'
##' @param input `raster` - Input raster layer. Path to a raster layer.
##' @param quantiles `number` - Number of quantiles. A numeric value.
##' @param percentiles `string` - List of percentiles. String value.
##' @param bins `number` - Number of bins to use. A numeric value.
##' @param .r `boolean` - Generate recode rules based on quantile-defined intervals. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -r.
##' @param file `fileDestination` - Quantiles. Path for new file.
##' @param GRASS_REGION_PARAMETER `extent` - GRASS GIS 7 region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param GRASS_REGION_CELLSIZE_PARAMETER `number` - GRASS GIS 7 region cellsize (leave 0 for default). A numeric value.
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
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

grass7_r_quantile_plain <- function(input = qgisprocess::qgis_default_value(), quantiles = qgisprocess::qgis_default_value(), percentiles = qgisprocess::qgis_default_value(), bins = qgisprocess::qgis_default_value(), .r = qgisprocess::qgis_default_value(), file = qgisprocess::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess::qgis_default_value(), GRASS_REGION_CELLSIZE_PARAMETER = qgisprocess::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("grass7:r.quantile.plain")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("grass7:r.quantile.plain", `input` = input, `quantiles` = quantiles, `percentiles` = percentiles, `bins` = bins, `-r` = .r, `file` = file, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("grass7:r.quantile.plain", `input` = input, `quantiles` = quantiles, `percentiles` = percentiles, `bins` = bins, `-r` = .r, `file` = file, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "file")
  }
}