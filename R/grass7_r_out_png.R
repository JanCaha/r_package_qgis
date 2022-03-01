##' QGIS Algorithm provided by GRASS r.out.png (grass7:r.out.png)
##'
##' @title QGIS algorithm r.out.png
##'
##' @param input `raster` - Input raster. Path to a raster layer.
##' @param compression `number` - Compression level of PNG file (0 = none, 1 = fastest, 9 = best). A numeric value.
##' @param .t `boolean` - Make NULL cells transparent. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -t.
##' @param .w `boolean` - Output world file. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -w.
##' @param output `fileDestination` - PNG File. Path for new file.
##' @param GRASS_REGION_PARAMETER `extent` - GRASS GIS 7 region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param GRASS_REGION_CELLSIZE_PARAMETER `number` - GRASS GIS 7 region cellsize (leave 0 for default). A numeric value.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * output - outputFile - PNG File
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

grass7_r_out_png <- function(input = qgisprocess::qgis_default_value(), compression = qgisprocess::qgis_default_value(), .t = qgisprocess::qgis_default_value(), .w = qgisprocess::qgis_default_value(), output = qgisprocess::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess::qgis_default_value(), GRASS_REGION_CELLSIZE_PARAMETER = qgisprocess::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("grass7:r.out.png")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("grass7:r.out.png", `input` = input, `compression` = compression, `-t` = .t, `-w` = .w, `output` = output, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("grass7:r.out.png", `input` = input, `compression` = compression, `-t` = .t, `-w` = .w, `output` = output, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "output")
  }
}