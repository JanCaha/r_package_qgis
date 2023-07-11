##' QGIS Algorithm provided by SAGA Next Gen Polygon categories to grid (sagang:polygoncategoriestogrid). ---------------- Arguments ----------------  POLYGONS: Polygons 	Argument type:	source 	Acceptable values: 		- Path to a vector layer FIELD: Category 	Argument type:	field 	Acceptable values: 		- The name of an existing field 		- ; delimited list of existing field names METHOD: Method 	Default value:	1 	Argument type:	enum 	Available values: 		- 0: (0) cell wise 		- 1: (1) polygon wise 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' MULTIPLE: Multiple Polygons 	Default value:	1 	Argument type:	enum 	Available values: 		- 0: (0) minimum coverage 		- 1: (1) maximum coverage 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' CLASSES: Classification 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer TARGET_USER_XMIN TARGET_USER_XMAX TARGET_USER_YMIN TARGET_USER_YMAX: Output extent (optional) 	Argument type:	extent 	Acceptable values: 		- A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105' 		- Path to a layer. The extent of the layer is used. TARGET_USER_SIZE: Cellsize 	Default value:	100 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression CATEGORY: Category 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer COVERAGE: Coverage 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer
##'
##' @title QGIS algorithm - Polygon categories to grid
##'
##' @param POLYGONS `source` - Polygons. Path to a vector layer.
##' @param FIELD `field` - Category. The name of an existing field. ; delimited list of existing field names.
##' @param METHOD `enum`  of `("(0) cell wise", "(1) polygon wise")` - Method. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param MULTIPLE `enum`  of `("(0) minimum coverage", "(1) maximum coverage")` - Multiple Polygons. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param CLASSES `vectorDestination` - Classification. Path for new vector layer.
##' @param TARGET_USER_XMIN_TARGET_USER_XMAX_TARGET_USER_YMIN_TARGET_USER_YMAX `extent` - Output extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used.. Original algorithm parameter name: TARGET_USER_XMIN TARGET_USER_XMAX TARGET_USER_YMIN TARGET_USER_YMAX.
##' @param TARGET_USER_SIZE `number` - Cellsize. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param CATEGORY `rasterDestination` - Category. Path for new raster layer.
##' @param COVERAGE `rasterDestination` - Coverage. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * CATEGORY - outputRaster - Category
##' * CLASSES - outputVector - Classification
##' * COVERAGE - outputRaster - Coverage
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_polygoncategoriestogrid <- function(POLYGONS = qgisprocess:::qgis_default_value(), FIELD = qgisprocess:::qgis_default_value(), METHOD = qgisprocess:::qgis_default_value(), MULTIPLE = qgisprocess:::qgis_default_value(), CLASSES = qgisprocess:::qgis_default_value(), TARGET_USER_XMIN_TARGET_USER_XMAX_TARGET_USER_YMIN_TARGET_USER_YMAX = qgisprocess:::qgis_default_value(), TARGET_USER_SIZE = qgisprocess:::qgis_default_value(), CATEGORY = qgisprocess:::qgis_default_value(), COVERAGE = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:polygoncategoriestogrid")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:polygoncategoriestogrid", `POLYGONS` = POLYGONS, `FIELD` = FIELD, `METHOD` = METHOD, `MULTIPLE` = MULTIPLE, `CLASSES` = CLASSES, `TARGET_USER_XMIN TARGET_USER_XMAX TARGET_USER_YMIN TARGET_USER_YMAX` = TARGET_USER_XMIN_TARGET_USER_XMAX_TARGET_USER_YMIN_TARGET_USER_YMAX, `TARGET_USER_SIZE` = TARGET_USER_SIZE, `CATEGORY` = CATEGORY, `COVERAGE` = COVERAGE,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:polygoncategoriestogrid", `POLYGONS` = POLYGONS, `FIELD` = FIELD, `METHOD` = METHOD, `MULTIPLE` = MULTIPLE, `CLASSES` = CLASSES, `TARGET_USER_XMIN TARGET_USER_XMAX TARGET_USER_YMIN TARGET_USER_YMAX` = TARGET_USER_XMIN_TARGET_USER_XMAX_TARGET_USER_YMIN_TARGET_USER_YMAX, `TARGET_USER_SIZE` = TARGET_USER_SIZE, `CATEGORY` = CATEGORY, `COVERAGE` = COVERAGE,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "CATEGORY")
  }
}