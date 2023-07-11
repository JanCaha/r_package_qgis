##' QGIS Algorithm provided by GDAL Extract projection (gdal:extractprojection). ---------------- Arguments ----------------  INPUT: Input file 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer PRJ_FILE_CREATE: Create also .prj file 	Default value:	false 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Extract projection
##'
##' @param INPUT `raster` - Input file. Path to a raster layer.
##' @param PRJ_FILE_CREATE `boolean` - Create also .prj file. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * PRJ_FILE - outputFile - ESRI Shapefile prj file
##' * WORLD_FILE - outputFile - World file
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

gdal_extractprojection <- function(INPUT = qgisprocess:::qgis_default_value(), PRJ_FILE_CREATE = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("gdal:extractprojection")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("gdal:extractprojection", `INPUT` = INPUT, `PRJ_FILE_CREATE` = PRJ_FILE_CREATE,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("gdal:extractprojection", `INPUT` = INPUT, `PRJ_FILE_CREATE` = PRJ_FILE_CREATE,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "PRJ_FILE")
  }
}