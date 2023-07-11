##' QGIS Algorithm provided by SAGA Next Gen Utm projection (shapes list) (sagang:utmprojectionshapeslist). ---------------- Arguments ----------------  CRS_METHOD: Get CRS Definition from... 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) Proj4 Parameters 		- 1: (1) EPSG Code 		- 2: (2) Well Known Text File 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' CRS_PROJ4: Proj4 Parameters 	Default value:	 	Argument type:	string 	Acceptable values: 		- String value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression CRS_FILE: Well Known Text File 	Default value:	False 	Argument type:	file 	Acceptable values: 		- Path to a file CRS_EPSG: Authority Code 	Default value:	-1 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression CRS_EPSG_AUTH: Authority 	Default value:	EPSG 	Argument type:	string 	Acceptable values: 		- String value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression SOURCE: Source 	Argument type:	multilayer TARGET: Target 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer TRANSFORM_Z: Z Transformation 	Default value:	true 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression PARALLEL: Parallel Processing 	Default value:	false 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression COPY: Copy 	Default value:	true 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression UTM_ZONE: Zone 	Default value:	1 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression UTM_SOUTH: South 	Default value:	false 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Utm projection (shapes list)
##'
##' @param CRS_METHOD `enum`  of `("(0) Proj4 Parameters", "(1) EPSG Code", "(2) Well Known Text File")` - Get CRS Definition from.... Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param CRS_PROJ4 `string` - Proj4 Parameters. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param CRS_FILE `file` - Well Known Text File. Path to a file.
##' @param CRS_EPSG `number` - Authority Code. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param CRS_EPSG_AUTH `string` - Authority. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param SOURCE `multilayer` - Source. .
##' @param TARGET `vectorDestination` - Target. Path for new vector layer.
##' @param TRANSFORM_Z `boolean` - Z Transformation. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param PARALLEL `boolean` - Parallel Processing. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param COPY `boolean` - Copy. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param UTM_ZONE `number` - Zone. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param UTM_SOUTH `boolean` - South. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * TARGET - outputVector - Target
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_utmprojectionshapeslist <- function(CRS_METHOD = qgisprocess:::qgis_default_value(), CRS_PROJ4 = qgisprocess:::qgis_default_value(), CRS_FILE = qgisprocess:::qgis_default_value(), CRS_EPSG = qgisprocess:::qgis_default_value(), CRS_EPSG_AUTH = qgisprocess:::qgis_default_value(), SOURCE = qgisprocess:::qgis_default_value(), TARGET = qgisprocess:::qgis_default_value(), TRANSFORM_Z = qgisprocess:::qgis_default_value(), PARALLEL = qgisprocess:::qgis_default_value(), COPY = qgisprocess:::qgis_default_value(), UTM_ZONE = qgisprocess:::qgis_default_value(), UTM_SOUTH = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:utmprojectionshapeslist")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:utmprojectionshapeslist", `CRS_METHOD` = CRS_METHOD, `CRS_PROJ4` = CRS_PROJ4, `CRS_FILE` = CRS_FILE, `CRS_EPSG` = CRS_EPSG, `CRS_EPSG_AUTH` = CRS_EPSG_AUTH, `SOURCE` = SOURCE, `TARGET` = TARGET, `TRANSFORM_Z` = TRANSFORM_Z, `PARALLEL` = PARALLEL, `COPY` = COPY, `UTM_ZONE` = UTM_ZONE, `UTM_SOUTH` = UTM_SOUTH,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:utmprojectionshapeslist", `CRS_METHOD` = CRS_METHOD, `CRS_PROJ4` = CRS_PROJ4, `CRS_FILE` = CRS_FILE, `CRS_EPSG` = CRS_EPSG, `CRS_EPSG_AUTH` = CRS_EPSG_AUTH, `SOURCE` = SOURCE, `TARGET` = TARGET, `TRANSFORM_Z` = TRANSFORM_Z, `PARALLEL` = PARALLEL, `COPY` = COPY, `UTM_ZONE` = UTM_ZONE, `UTM_SOUTH` = UTM_SOUTH,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "TARGET")
  }
}