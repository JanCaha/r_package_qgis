##' QGIS Algorithm provided by GDAL Tile index (gdal:tileindex). ---------------- Arguments ----------------  LAYERS: Input files 	Argument type:	multilayer PATH_FIELD_NAME: Field name to hold the file path to the indexed rasters 	Default value:	location 	Argument type:	string 	Acceptable values: 		- String value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression ABSOLUTE_PATH: Store absolute path to the indexed rasters 	Default value:	false 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression PROJ_DIFFERENCE: Skip files with different projection reference 	Default value:	false 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression TARGET_CRS: Transform geometries to the given CRS (optional) 	Argument type:	crs 	Acceptable values: 		- CRS as an auth ID (e.g. 'EPSG:3111') 		- CRS as a PROJ4 string (e.g. 'PROJ4:…') 		- CRS as a WKT string (e.g. 'WKT:…') 		- Path to a layer. The CRS of the layer is used. CRS_FIELD_NAME: The name of the field to store the SRS of each tile (optional) 	Argument type:	string 	Acceptable values: 		- String value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression CRS_FORMAT: The format in which the CRS of each tile must be written 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: Auto 		- 1: Well-known text (WKT) 		- 2: EPSG 		- 3: Proj.4 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' OUTPUT: Tile index 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer
##'
##' @title QGIS algorithm - Tile index
##'
##' @param LAYERS `multilayer` - Input files. .
##' @param PATH_FIELD_NAME `string` - Field name to hold the file path to the indexed rasters. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ABSOLUTE_PATH `boolean` - Store absolute path to the indexed rasters. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param PROJ_DIFFERENCE `boolean` - Skip files with different projection reference. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param TARGET_CRS `crs` - Transform geometries to the given CRS. CRS as an auth ID (e.g. 'EPSG:3111'). CRS as a PROJ4 string (e.g. 'PROJ4:…'). CRS as a WKT string (e.g. 'WKT:…'). Path to a layer. The CRS of the layer is used..
##' @param CRS_FIELD_NAME `string` - The name of the field to store the SRS of each tile. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param CRS_FORMAT `enum`  of `("Auto", "Well-known text (WKT)", "EPSG", "Proj.4")` - The format in which the CRS of each tile must be written. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param OUTPUT `vectorDestination` - Tile index. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Tile index
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

gdal_tileindex <- function(LAYERS = qgisprocess:::qgis_default_value(), PATH_FIELD_NAME = qgisprocess:::qgis_default_value(), ABSOLUTE_PATH = qgisprocess:::qgis_default_value(), PROJ_DIFFERENCE = qgisprocess:::qgis_default_value(), TARGET_CRS = qgisprocess:::qgis_default_value(), CRS_FIELD_NAME = qgisprocess:::qgis_default_value(), CRS_FORMAT = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("gdal:tileindex")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("gdal:tileindex", `LAYERS` = LAYERS, `PATH_FIELD_NAME` = PATH_FIELD_NAME, `ABSOLUTE_PATH` = ABSOLUTE_PATH, `PROJ_DIFFERENCE` = PROJ_DIFFERENCE, `TARGET_CRS` = TARGET_CRS, `CRS_FIELD_NAME` = CRS_FIELD_NAME, `CRS_FORMAT` = CRS_FORMAT, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("gdal:tileindex", `LAYERS` = LAYERS, `PATH_FIELD_NAME` = PATH_FIELD_NAME, `ABSOLUTE_PATH` = ABSOLUTE_PATH, `PROJ_DIFFERENCE` = PROJ_DIFFERENCE, `TARGET_CRS` = TARGET_CRS, `CRS_FIELD_NAME` = CRS_FIELD_NAME, `CRS_FORMAT` = CRS_FORMAT, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}