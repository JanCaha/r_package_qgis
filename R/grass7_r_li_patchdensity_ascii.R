##' QGIS Algorithm provided by GRASS r.li.patchdensity.ascii (grass7:r.li.patchdensity.ascii)
##'
##' @title QGIS algorithm r.li.patchdensity.ascii
##'
##' @param input `raster` - Name of input raster map. Path to a raster layer.
##' @param config_txt `string` - Landscape structure configuration. String value.
##' @param config `file` - Landscape structure configuration file. Path to a file.
##' @param output_txt `fileDestination` - Patch Density. Path for new file.
##' @param GRASS_REGION_PARAMETER `extent` - GRASS GIS 7 region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param GRASS_REGION_CELLSIZE_PARAMETER `number` - GRASS GIS 7 region cellsize (leave 0 for default). A numeric value.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * output_txt - outputFile - Patch Density
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

grass7_r_li_patchdensity_ascii <- function(input = qgisprocess::qgis_default_value(), config_txt = qgisprocess::qgis_default_value(), config = qgisprocess::qgis_default_value(), output_txt = qgisprocess::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess::qgis_default_value(), GRASS_REGION_CELLSIZE_PARAMETER = qgisprocess::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("grass7:r.li.patchdensity.ascii")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("grass7:r.li.patchdensity.ascii", `input` = input, `config_txt` = config_txt, `config` = config, `output_txt` = output_txt, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("grass7:r.li.patchdensity.ascii", `input` = input, `config_txt` = config_txt, `config` = config, `output_txt` = output_txt, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "output_txt")
  }
}