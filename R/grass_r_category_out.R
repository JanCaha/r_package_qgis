##' QGIS Algorithm provided by GRASS r.category.out (grass:r.category.out). r.category.out - Exports category values and labels associated with user-specified raster map layers.
##'
##' @title QGIS algorithm - r.category.out
##'
##' @param map `raster` - Name of raster map. Path to a raster layer.
##' @param cats `string` - Category values (for Integer rasters). Example: 1,3,7-9,13. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param values `string` - Comma separated value list (for float rasters). Example: 1.4,3.8,13. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param separator `string` - Field separator (Special characters: pipe, comma, space, tab, newline). String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param html `fileDestination` - Category. Path for new file.
##' @param GRASS_REGION_PARAMETER `extent` - GRASS GIS region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param GRASS_REGION_CELLSIZE_PARAMETER `number` - GRASS GIS region cellsize (leave 0 for default). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * html - outputHtml - Category
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

grass_r_category_out <- function(map = qgisprocess:::qgis_default_value(), cats = qgisprocess:::qgis_default_value(), values = qgisprocess:::qgis_default_value(), separator = qgisprocess:::qgis_default_value(), html = qgisprocess:::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess:::qgis_default_value(), GRASS_REGION_CELLSIZE_PARAMETER = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("grass:r.category.out")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("grass:r.category.out", `map` = map, `cats` = cats, `values` = values, `separator` = separator, `html` = html, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("grass:r.category.out", `map` = map, `cats` = cats, `values` = values, `separator` = separator, `html` = html, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "html")
  }
}