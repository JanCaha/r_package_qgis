##' QGIS Algorithm provided by GRASS r.category.out (grass7:r.category.out)
##'
##' @title QGIS algorithm r.category.out
##'
##' @param map `raster` - Name of raster map. Path to a raster layer.
##' @param cats `string` - Category values (for Integer rasters). Example: 1,3,7-9,13. String value.
##' @param values `string` - Comma separated value list (for float rasters). Example: 1.4,3.8,13. String value.
##' @param separator `string` - Field separator (Special characters: pipe, comma, space, tab, newline). String value.
##' @param html `fileDestination` - Category. Path for new file.
##' @param GRASS_REGION_PARAMETER `extent` - GRASS GIS 7 region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param GRASS_REGION_CELLSIZE_PARAMETER `number` - GRASS GIS 7 region cellsize (leave 0 for default). A numeric value.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * html - outputHtml - Category
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

grass7_r_category_out <- function(map = qgisprocess::qgis_default_value(), cats = qgisprocess::qgis_default_value(), values = qgisprocess::qgis_default_value(), separator = qgisprocess::qgis_default_value(), html = qgisprocess::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess::qgis_default_value(), GRASS_REGION_CELLSIZE_PARAMETER = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("grass7:r.category.out")
  output <- qgisprocess::qgis_run_algorithm("grass7:r.category.out",`map` = map, `cats` = cats, `values` = values, `separator` = separator, `html` = html, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "html")
  }
}