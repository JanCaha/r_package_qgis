##' QGIS Algorithm provided by GRASS r.out.mpeg (grass7:r.out.mpeg)
##'
##' @title QGIS algorithm r.out.mpeg
##'
##' @param view1 `multilayer` - Name of input raster map(s) for view no.1. .
##' @param view2 `multilayer` - Name of input raster map(s) for view no.2. .
##' @param view3 `multilayer` - Name of input raster map(s) for view no.3. .
##' @param view4 `multilayer` - Name of input raster map(s) for view no.4. .
##' @param quality `number` - Quality factor (1 = highest quality, lowest compression). A numeric value.
##' @param output `fileDestination` - MPEG file. Path for new file.
##' @param GRASS_REGION_PARAMETER `extent` - GRASS GIS 7 region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param GRASS_REGION_CELLSIZE_PARAMETER `number` - GRASS GIS 7 region cellsize (leave 0 for default). A numeric value.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * output - outputFile - MPEG file
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

grass7_r_out_mpeg <- function(view1 = qgisprocess::qgis_default_value(), view2 = qgisprocess::qgis_default_value(), view3 = qgisprocess::qgis_default_value(), view4 = qgisprocess::qgis_default_value(), quality = qgisprocess::qgis_default_value(), output = qgisprocess::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess::qgis_default_value(), GRASS_REGION_CELLSIZE_PARAMETER = qgisprocess::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("grass7:r.out.mpeg")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("grass7:r.out.mpeg", `view1` = view1, `view2` = view2, `view3` = view3, `view4` = view4, `quality` = quality, `output` = output, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("grass7:r.out.mpeg", `view1` = view1, `view2` = view2, `view3` = view3, `view4` = view4, `quality` = quality, `output` = output, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "output")
  }
}