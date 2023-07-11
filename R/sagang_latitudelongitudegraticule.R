##' QGIS Algorithm provided by SAGA Next Gen Latitude/longitude graticule (sagang:latitudelongitudegraticule). ---------------- Arguments ----------------  CRS_METHOD: Get CRS Definition from... 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) Proj4 Parameters 		- 1: (1) EPSG Code 		- 2: (2) Well Known Text File 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' CRS_PROJ4: Proj4 Parameters 	Default value:	 	Argument type:	string 	Acceptable values: 		- String value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression CRS_FILE: Well Known Text File 	Default value:	False 	Argument type:	file 	Acceptable values: 		- Path to a file CRS_EPSG: Authority Code 	Default value:	-1 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression CRS_EPSG_AUTH: Authority 	Default value:	EPSG 	Argument type:	string 	Acceptable values: 		- String value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression GRATICULE: Graticule 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer COORDS: Frame Coordinates 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer XMIN: Minimum 	Default value:	0 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression XMAX: Maximum 	Default value:	0 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression YMIN: Minimum 	Default value:	0 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression YMAX: Maximum 	Default value:	0 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression INTERVAL: Interval 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) fixed interval 		- 1: (1) fitted interval 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' FIXED: Fixed Interval (Degree) 	Default value:	1 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression FITTED: Number of Intervals 	Default value:	10 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression RESOLUTION: Minimum Resolution (Degree) 	Default value:	0.5 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Latitude/longitude graticule
##'
##' @param CRS_METHOD `enum`  of `("(0) Proj4 Parameters", "(1) EPSG Code", "(2) Well Known Text File")` - Get CRS Definition from.... Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param CRS_PROJ4 `string` - Proj4 Parameters. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param CRS_FILE `file` - Well Known Text File. Path to a file.
##' @param CRS_EPSG `number` - Authority Code. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param CRS_EPSG_AUTH `string` - Authority. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param GRATICULE `vectorDestination` - Graticule. Path for new vector layer.
##' @param COORDS `vectorDestination` - Frame Coordinates. Path for new vector layer.
##' @param XMIN `number` - Minimum. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param XMAX `number` - Maximum. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param YMIN `number` - Minimum. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param YMAX `number` - Maximum. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param INTERVAL `enum`  of `("(0) fixed interval", "(1) fitted interval")` - Interval. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param FIXED `number` - Fixed Interval (Degree). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param FITTED `number` - Number of Intervals. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param RESOLUTION `number` - Minimum Resolution (Degree). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * COORDS - outputVector - Frame Coordinates
##' * GRATICULE - outputVector - Graticule
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_latitudelongitudegraticule <- function(CRS_METHOD = qgisprocess:::qgis_default_value(), CRS_PROJ4 = qgisprocess:::qgis_default_value(), CRS_FILE = qgisprocess:::qgis_default_value(), CRS_EPSG = qgisprocess:::qgis_default_value(), CRS_EPSG_AUTH = qgisprocess:::qgis_default_value(), GRATICULE = qgisprocess:::qgis_default_value(), COORDS = qgisprocess:::qgis_default_value(), XMIN = qgisprocess:::qgis_default_value(), XMAX = qgisprocess:::qgis_default_value(), YMIN = qgisprocess:::qgis_default_value(), YMAX = qgisprocess:::qgis_default_value(), INTERVAL = qgisprocess:::qgis_default_value(), FIXED = qgisprocess:::qgis_default_value(), FITTED = qgisprocess:::qgis_default_value(), RESOLUTION = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:latitudelongitudegraticule")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:latitudelongitudegraticule", `CRS_METHOD` = CRS_METHOD, `CRS_PROJ4` = CRS_PROJ4, `CRS_FILE` = CRS_FILE, `CRS_EPSG` = CRS_EPSG, `CRS_EPSG_AUTH` = CRS_EPSG_AUTH, `GRATICULE` = GRATICULE, `COORDS` = COORDS, `XMIN` = XMIN, `XMAX` = XMAX, `YMIN` = YMIN, `YMAX` = YMAX, `INTERVAL` = INTERVAL, `FIXED` = FIXED, `FITTED` = FITTED, `RESOLUTION` = RESOLUTION,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:latitudelongitudegraticule", `CRS_METHOD` = CRS_METHOD, `CRS_PROJ4` = CRS_PROJ4, `CRS_FILE` = CRS_FILE, `CRS_EPSG` = CRS_EPSG, `CRS_EPSG_AUTH` = CRS_EPSG_AUTH, `GRATICULE` = GRATICULE, `COORDS` = COORDS, `XMIN` = XMIN, `XMAX` = XMAX, `YMIN` = YMIN, `YMAX` = YMAX, `INTERVAL` = INTERVAL, `FIXED` = FIXED, `FITTED` = FITTED, `RESOLUTION` = RESOLUTION,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "COORDS")
  }
}