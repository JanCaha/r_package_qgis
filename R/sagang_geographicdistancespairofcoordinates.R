##' QGIS Algorithm provided by SAGA Next Gen Geographic distances (pair of coordinates) (sagang:geographicdistancespairofcoordinates). ---------------- Arguments ----------------  CRS_METHOD: Get CRS Definition from... 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) Proj4 Parameters 		- 1: (1) EPSG Code 		- 2: (2) Well Known Text File 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' CRS_PROJ4: Proj4 Parameters 	Default value:	 	Argument type:	string 	Acceptable values: 		- String value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression CRS_FILE: Well Known Text File 	Default value:	False 	Argument type:	file 	Acceptable values: 		- Path to a file CRS_EPSG: Authority Code 	Default value:	-1 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression CRS_EPSG_AUTH: Authority 	Default value:	EPSG 	Argument type:	string 	Acceptable values: 		- String value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression DISTANCES: Geographic Distances 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer COORD_X1: X 	Default value:	10 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression COORD_Y1: Y 	Default value:	53.5 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression COORD_X2: X 	Default value:	116.5 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression COORD_Y2: Y 	Default value:	6.4 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression EPSILON: Epsilon 	Default value:	100 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Geographic distances (pair of coordinates)
##'
##' @param CRS_METHOD `enum`  of `("(0) Proj4 Parameters", "(1) EPSG Code", "(2) Well Known Text File")` - Get CRS Definition from.... Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param CRS_PROJ4 `string` - Proj4 Parameters. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param CRS_FILE `file` - Well Known Text File. Path to a file.
##' @param CRS_EPSG `number` - Authority Code. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param CRS_EPSG_AUTH `string` - Authority. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param DISTANCES `vectorDestination` - Geographic Distances. Path for new vector layer.
##' @param COORD_X1 `number` - X. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param COORD_Y1 `number` - Y. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param COORD_X2 `number` - X. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param COORD_Y2 `number` - Y. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param EPSILON `number` - Epsilon. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * DISTANCES - outputVector - Geographic Distances
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_geographicdistancespairofcoordinates <- function(CRS_METHOD = qgisprocess:::qgis_default_value(), CRS_PROJ4 = qgisprocess:::qgis_default_value(), CRS_FILE = qgisprocess:::qgis_default_value(), CRS_EPSG = qgisprocess:::qgis_default_value(), CRS_EPSG_AUTH = qgisprocess:::qgis_default_value(), DISTANCES = qgisprocess:::qgis_default_value(), COORD_X1 = qgisprocess:::qgis_default_value(), COORD_Y1 = qgisprocess:::qgis_default_value(), COORD_X2 = qgisprocess:::qgis_default_value(), COORD_Y2 = qgisprocess:::qgis_default_value(), EPSILON = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:geographicdistancespairofcoordinates")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:geographicdistancespairofcoordinates", `CRS_METHOD` = CRS_METHOD, `CRS_PROJ4` = CRS_PROJ4, `CRS_FILE` = CRS_FILE, `CRS_EPSG` = CRS_EPSG, `CRS_EPSG_AUTH` = CRS_EPSG_AUTH, `DISTANCES` = DISTANCES, `COORD_X1` = COORD_X1, `COORD_Y1` = COORD_Y1, `COORD_X2` = COORD_X2, `COORD_Y2` = COORD_Y2, `EPSILON` = EPSILON,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:geographicdistancespairofcoordinates", `CRS_METHOD` = CRS_METHOD, `CRS_PROJ4` = CRS_PROJ4, `CRS_FILE` = CRS_FILE, `CRS_EPSG` = CRS_EPSG, `CRS_EPSG_AUTH` = CRS_EPSG_AUTH, `DISTANCES` = DISTANCES, `COORD_X1` = COORD_X1, `COORD_Y1` = COORD_Y1, `COORD_X2` = COORD_X2, `COORD_Y2` = COORD_Y2, `EPSILON` = EPSILON,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "DISTANCES")
  }
}