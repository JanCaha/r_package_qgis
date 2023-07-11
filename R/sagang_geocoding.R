##' QGIS Algorithm provided by SAGA Next Gen Geocoding (sagang:geocoding). ---------------- Arguments ----------------  LOCATIONS: Locations 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer ADDRESSES: Address List (optional) 	Argument type:	source 	Acceptable values: 		- Path to a vector layer FIELD: Address Field 	Argument type:	field 	Acceptable values: 		- The name of an existing field 		- ; delimited list of existing field names ADDRESS: Single Address 	Default value:	Bundesstrasse 55, Hamburg, Germany 	Argument type:	string 	Acceptable values: 		- String value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression PROVIDER: Service Provider 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) Nominatim (OpenStreetMap) 		- 1: (1) The Data Science Toolkit 		- 2: (2) Google 		- 3: (3) Bing 		- 4: (4) MapQuest 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' API_KEY: API Key 	Default value:	 	Argument type:	string 	Acceptable values: 		- String value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression METADATA: Store Metadata 	Default value:	false 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Geocoding
##'
##' @param LOCATIONS `vectorDestination` - Locations. Path for new vector layer.
##' @param ADDRESSES `source` - Address List. Path to a vector layer.
##' @param FIELD `field` - Address Field. The name of an existing field. ; delimited list of existing field names.
##' @param ADDRESS `string` - Single Address. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param PROVIDER `enum`  of `("(0) Nominatim (OpenStreetMap)", "(1) The Data Science Toolkit", "(2) Google", "(3) Bing", "(4) MapQuest")` - Service Provider. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param API_KEY `string` - API Key. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param METADATA `boolean` - Store Metadata. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * LOCATIONS - outputVector - Locations
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_geocoding <- function(LOCATIONS = qgisprocess:::qgis_default_value(), ADDRESSES = qgisprocess:::qgis_default_value(), FIELD = qgisprocess:::qgis_default_value(), ADDRESS = qgisprocess:::qgis_default_value(), PROVIDER = qgisprocess:::qgis_default_value(), API_KEY = qgisprocess:::qgis_default_value(), METADATA = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:geocoding")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:geocoding", `LOCATIONS` = LOCATIONS, `ADDRESSES` = ADDRESSES, `FIELD` = FIELD, `ADDRESS` = ADDRESS, `PROVIDER` = PROVIDER, `API_KEY` = API_KEY, `METADATA` = METADATA,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:geocoding", `LOCATIONS` = LOCATIONS, `ADDRESSES` = ADDRESSES, `FIELD` = FIELD, `ADDRESS` = ADDRESS, `PROVIDER` = PROVIDER, `API_KEY` = API_KEY, `METADATA` = METADATA,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "LOCATIONS")
  }
}