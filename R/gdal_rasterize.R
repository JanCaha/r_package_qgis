##' QGIS Algorithm provided by GDAL Rasterize (vector to raster) (gdal:rasterize). ---------------- Arguments ----------------  INPUT: Input layer 	Argument type:	source 	Acceptable values: 		- Path to a vector layer FIELD: Field to use for a burn-in value (optional) 	Argument type:	field 	Acceptable values: 		- The name of an existing field 		- ; delimited list of existing field names BURN: A fixed value to burn (optional) 	Default value:	0 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression USE_Z: Burn value extracted from the "Z" values of the feature (optional) 	Default value:	false 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression UNITS: Output raster size units 	Argument type:	enum 	Available values: 		- 0: Pixels 		- 1: Georeferenced units 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' WIDTH: Width/Horizontal resolution 	Default value:	0 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression HEIGHT: Height/Vertical resolution 	Default value:	0 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression EXTENT: Output extent (optional) 	Argument type:	extent 	Acceptable values: 		- A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105' 		- Path to a layer. The extent of the layer is used. NODATA: Assign a specified NoData value to output bands (optional) 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression OPTIONS: Additional creation options (optional) 	Default value:	 	Argument type:	string 	Acceptable values: 		- String value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression DATA_TYPE: Output data type 	Default value:	5 	Argument type:	enum 	Available values: 		- 0: Byte 		- 1: Int16 		- 2: UInt16 		- 3: UInt32 		- 4: Int32 		- 5: Float32 		- 6: Float64 		- 7: CInt16 		- 8: CInt32 		- 9: CFloat32 		- 10: CFloat64 		- 11: Int8 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' INIT: Pre-initialize the output image with value (optional) 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression INVERT: Invert rasterization 	Default value:	false 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression EXTRA: Additional command-line parameters (optional) 	Argument type:	string 	Acceptable values: 		- String value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression OUTPUT: Rasterized 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer
##'
##' @title QGIS algorithm - Rasterize (vector to raster)
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param FIELD `field` - Field to use for a burn-in value. The name of an existing field. ; delimited list of existing field names.
##' @param BURN `number` - A fixed value to burn. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param USE_Z `boolean` - Burn value extracted from the "Z" values of the feature. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param UNITS `enum`  of `("Pixels", "Georeferenced units")` - Output raster size units. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param WIDTH `number` - Width\code{/}Horizontal resolution. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param HEIGHT `number` - Height\code{/}Vertical resolution. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param EXTENT `extent` - Output extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param NODATA `number` - Assign a specified NoData value to output bands. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param OPTIONS `string` - Additional creation options. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param DATA_TYPE `enum`  of `("Byte", "Int16", "UInt16", "UInt32", "Int32", "Float32", "Float64", "CInt16", "CInt32", "CFloat32", "CFloat64", "Int8")` - Output data type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param INIT `number` - Pre-initialize the output image with value. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param INVERT `boolean` - Invert rasterization. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param EXTRA `string` - Additional command-line parameters. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param OUTPUT `rasterDestination` - Rasterized. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputRaster - Rasterized
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

gdal_rasterize <- function(INPUT = qgisprocess:::qgis_default_value(), FIELD = qgisprocess:::qgis_default_value(), BURN = qgisprocess:::qgis_default_value(), USE_Z = qgisprocess:::qgis_default_value(), UNITS = qgisprocess:::qgis_default_value(), WIDTH = qgisprocess:::qgis_default_value(), HEIGHT = qgisprocess:::qgis_default_value(), EXTENT = qgisprocess:::qgis_default_value(), NODATA = qgisprocess:::qgis_default_value(), OPTIONS = qgisprocess:::qgis_default_value(), DATA_TYPE = qgisprocess:::qgis_default_value(), INIT = qgisprocess:::qgis_default_value(), INVERT = qgisprocess:::qgis_default_value(), EXTRA = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("gdal:rasterize")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("gdal:rasterize", `INPUT` = INPUT, `FIELD` = FIELD, `BURN` = BURN, `USE_Z` = USE_Z, `UNITS` = UNITS, `WIDTH` = WIDTH, `HEIGHT` = HEIGHT, `EXTENT` = EXTENT, `NODATA` = NODATA, `OPTIONS` = OPTIONS, `DATA_TYPE` = DATA_TYPE, `INIT` = INIT, `INVERT` = INVERT, `EXTRA` = EXTRA, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("gdal:rasterize", `INPUT` = INPUT, `FIELD` = FIELD, `BURN` = BURN, `USE_Z` = USE_Z, `UNITS` = UNITS, `WIDTH` = WIDTH, `HEIGHT` = HEIGHT, `EXTENT` = EXTENT, `NODATA` = NODATA, `OPTIONS` = OPTIONS, `DATA_TYPE` = DATA_TYPE, `INIT` = INIT, `INVERT` = INVERT, `EXTRA` = EXTRA, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}