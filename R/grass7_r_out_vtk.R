##' QGIS Algorithm provided by GRASS r.out.vtk (grass7:r.out.vtk)
##'
##' @title QGIS algorithm r.out.vtk
##'
##' @param input `multilayer` - Input raster. .
##' @param elevation `raster` - Input elevation raster map. Path to a raster layer.
##' @param null `number` - Value to represent no data cell. A numeric value.
##' @param z `number` - Constant elevation (if no elevation map is specified). A numeric value.
##' @param rgbmaps `multilayer` - Three (r,g,b) raster maps to create RGB values. .
##' @param vectormaps `multilayer` - Three (x,y,z) raster maps to create vector values. .
##' @param zscale `number` - Scale factor for elevation. A numeric value.
##' @param precision `number` - Number of significant digits. A numeric value.
##' @param .p `boolean` - Create VTK point data instead of VTK cell data. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -p.
##' @param .s `boolean` - Use structured grid for elevation (not recommended). 1 for true/yes. 0 for false/no. Original algorithm parameter name: -s.
##' @param .t `boolean` - Use polydata-trianglestrips for elevation grid creation. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -t.
##' @param .v `boolean` - Use polydata-vertices for elevation grid creation. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -v.
##' @param .o `boolean` - Scale factor affects the origin (if no elevation map is given). 1 for true/yes. 0 for false/no. Original algorithm parameter name: -o.
##' @param .c `boolean` - Correct the coordinates to match the VTK-OpenGL precision. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -c.
##' @param output `fileDestination` - VTK File. Path for new file.
##' @param GRASS_REGION_PARAMETER `extent` - GRASS GIS 7 region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param GRASS_REGION_CELLSIZE_PARAMETER `number` - GRASS GIS 7 region cellsize (leave 0 for default). A numeric value.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * output - outputFile - VTK File
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

grass7_r_out_vtk <- function(input = qgisprocess::qgis_default_value(), elevation = qgisprocess::qgis_default_value(), null = qgisprocess::qgis_default_value(), z = qgisprocess::qgis_default_value(), rgbmaps = qgisprocess::qgis_default_value(), vectormaps = qgisprocess::qgis_default_value(), zscale = qgisprocess::qgis_default_value(), precision = qgisprocess::qgis_default_value(), .p = qgisprocess::qgis_default_value(), .s = qgisprocess::qgis_default_value(), .t = qgisprocess::qgis_default_value(), .v = qgisprocess::qgis_default_value(), .o = qgisprocess::qgis_default_value(), .c = qgisprocess::qgis_default_value(), output = qgisprocess::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess::qgis_default_value(), GRASS_REGION_CELLSIZE_PARAMETER = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("grass7:r.out.vtk")

  output <- qgisprocess::qgis_run_algorithm("grass7:r.out.vtk", `input` = input, `elevation` = elevation, `null` = null, `z` = z, `rgbmaps` = rgbmaps, `vectormaps` = vectormaps, `zscale` = zscale, `precision` = precision, `-p` = .p, `-s` = .s, `-t` = .t, `-v` = .v, `-o` = .o, `-c` = .c, `output` = output, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "output")
  }
}