##' QGIS Algorithm provided by GRASS v.out.vtk (grass7:v.out.vtk)
##'
##' @title QGIS algorithm v.out.vtk
##'
##' @param input `source` - Name of input vector map. Path to a vector layer.
##' @param type `enum`  of `("point", "kernel", "centroid", "line", "boundary", "area", "face")` - Input feature type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param precision `number` - Number of significant digits (floating point only). A numeric value.
##' @param zscale `number` - Scale factor for elevation. A numeric value.
##' @param .c `boolean` - Correct the coordinates to fit the VTK-OpenGL precision. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -c.
##' @param .n `boolean` - Export numeric attribute table fields as VTK scalar variables. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -n.
##' @param output `fileDestination` - VTK File. Path for new file.
##' @param GRASS_REGION_PARAMETER `extent` - GRASS GIS 7 region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param GRASS_SNAP_TOLERANCE_PARAMETER `number` - v.in.ogr snap tolerance (-1 = no snap). A numeric value.
##' @param GRASS_MIN_AREA_PARAMETER `number` - v.in.ogr min area. A numeric value.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * output - outputFile - VTK File
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

grass7_v_out_vtk <- function(input = qgisprocess::qgis_default_value(), type = qgisprocess::qgis_default_value(), precision = qgisprocess::qgis_default_value(), zscale = qgisprocess::qgis_default_value(), .c = qgisprocess::qgis_default_value(), .n = qgisprocess::qgis_default_value(), output = qgisprocess::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess::qgis_default_value(), GRASS_SNAP_TOLERANCE_PARAMETER = qgisprocess::qgis_default_value(), GRASS_MIN_AREA_PARAMETER = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("grass7:v.out.vtk",`input` = input, `type` = type, `precision` = precision, `zscale` = zscale, `-c` = .c, `-n` = .n, `output` = output, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_SNAP_TOLERANCE_PARAMETER` = GRASS_SNAP_TOLERANCE_PARAMETER, `GRASS_MIN_AREA_PARAMETER` = GRASS_MIN_AREA_PARAMETER,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "output")
  }
}