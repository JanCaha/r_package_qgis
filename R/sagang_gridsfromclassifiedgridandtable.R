##' QGIS Algorithm provided by SAGA Next Gen Grids from classified grid and table (sagang:gridsfromclassifiedgridandtable). ---------------- Arguments ----------------  TABLE: Table 	Argument type:	source 	Acceptable values: 		- Path to a vector layer ID_FIELD: Attribute 	Argument type:	field 	Acceptable values: 		- The name of an existing field 		- ; delimited list of existing field names CLASSES: Classes 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer GRIDS: Grids 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer
##'
##' @title QGIS algorithm - Grids from classified grid and table
##'
##' @param TABLE `source` - Table. Path to a vector layer.
##' @param ID_FIELD `field` - Attribute. The name of an existing field. ; delimited list of existing field names.
##' @param CLASSES `raster` - Classes. Path to a raster layer.
##' @param GRIDS `rasterDestination` - Grids. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * GRIDS - outputRaster - Grids
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_gridsfromclassifiedgridandtable <- function(TABLE = qgisprocess:::qgis_default_value(), ID_FIELD = qgisprocess:::qgis_default_value(), CLASSES = qgisprocess:::qgis_default_value(), GRIDS = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:gridsfromclassifiedgridandtable")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:gridsfromclassifiedgridandtable", `TABLE` = TABLE, `ID_FIELD` = ID_FIELD, `CLASSES` = CLASSES, `GRIDS` = GRIDS,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:gridsfromclassifiedgridandtable", `TABLE` = TABLE, `ID_FIELD` = ID_FIELD, `CLASSES` = CLASSES, `GRIDS` = GRIDS,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "GRIDS")
  }
}