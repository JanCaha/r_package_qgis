##' QGIS Algorithm provided by GRASS v.out.pov (grass7:v.out.pov)
##'
##' @title QGIS algorithm v.out.pov
##'
##' @param input `source` - Name of input vector map. Path to a vector layer.
##' @param type `enum`  of `("point", "line", "boundary", "centroid", "area", "face", "kernel")` - Input feature type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param size `number` - Radius of sphere for points and tube for lines. A numeric value.
##' @param zmod `string` - Modifier for z coordinates, this string is appended to each z coordinate. String value.
##' @param objmod `string` - Object modifier (OBJECT_MODIFIER in POV-Ray documentation). String value.
##' @param output `fileDestination` - POV vector. Path for new file.
##' @param GRASS_REGION_PARAMETER `extent` - GRASS GIS 7 region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param GRASS_SNAP_TOLERANCE_PARAMETER `number` - v.in.ogr snap tolerance (-1 = no snap). A numeric value.
##' @param GRASS_MIN_AREA_PARAMETER `number` - v.in.ogr min area. A numeric value.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * output - outputFile - POV vector
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

grass7_v_out_pov <- function(input = qgisprocess::qgis_default_value(), type = qgisprocess::qgis_default_value(), size = qgisprocess::qgis_default_value(), zmod = qgisprocess::qgis_default_value(), objmod = qgisprocess::qgis_default_value(), output = qgisprocess::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess::qgis_default_value(), GRASS_SNAP_TOLERANCE_PARAMETER = qgisprocess::qgis_default_value(), GRASS_MIN_AREA_PARAMETER = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("grass7:v.out.pov",`input` = input, `type` = type, `size` = size, `zmod` = zmod, `objmod` = objmod, `output` = output, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_SNAP_TOLERANCE_PARAMETER` = GRASS_SNAP_TOLERANCE_PARAMETER, `GRASS_MIN_AREA_PARAMETER` = GRASS_MIN_AREA_PARAMETER,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "output")
  }
}