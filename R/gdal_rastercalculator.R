##' QGIS Algorithm provided by GDAL Raster calculator (gdal:rastercalculator). ---------------- Arguments ----------------  INPUT_A: Input layer A 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer BAND_A: Number of raster band for A 	Argument type:	band 	Acceptable values: 		- Integer value representing an existing raster band number INPUT_B: Input layer B (optional) 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer BAND_B: Number of raster band for B (optional) 	Argument type:	band 	Acceptable values: 		- Integer value representing an existing raster band number INPUT_C: Input layer C (optional) 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer BAND_C: Number of raster band for C (optional) 	Argument type:	band 	Acceptable values: 		- Integer value representing an existing raster band number INPUT_D: Input layer D (optional) 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer BAND_D: Number of raster band for D (optional) 	Argument type:	band 	Acceptable values: 		- Integer value representing an existing raster band number INPUT_E: Input layer E (optional) 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer BAND_E: Number of raster band for E (optional) 	Argument type:	band 	Acceptable values: 		- Integer value representing an existing raster band number INPUT_F: Input layer F (optional) 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer BAND_F: Number of raster band for F (optional) 	Argument type:	band 	Acceptable values: 		- Integer value representing an existing raster band number FORMULA: Calculation in gdalnumeric syntax using +-/* or any numpy array functions (i.e. logical_and()) 	Default value:	A*2 	Argument type:	string 	Acceptable values: 		- String value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression NO_DATA: Set output nodata value (optional) 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression EXTENT_OPT: Handling of extent differences 	Default value:	0 	This option determines how to handle rasters with different extents 	Argument type:	enum 	Available values: 		- 0: Ignore 		- 1: Fail 		- 2: Union 		- 3: Intersect 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' PROJWIN: Output extent (optional) 	Custom extent of the output raster 	Argument type:	extent 	Acceptable values: 		- A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105' 		- Path to a layer. The extent of the layer is used. RTYPE: Output raster type 	Default value:	5 	Argument type:	enum 	Available values: 		- 0: Byte 		- 1: Int16 		- 2: UInt16 		- 3: UInt32 		- 4: Int32 		- 5: Float32 		- 6: Float64 		- 7: CInt16 		- 8: CInt32 		- 9: CFloat32 		- 10: CFloat64 		- 11: Int8 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' OPTIONS: Additional creation options (optional) 	Default value:	 	Argument type:	string 	Acceptable values: 		- String value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression EXTRA: Additional command-line parameters (optional) 	Argument type:	string 	Acceptable values: 		- String value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression OUTPUT: Calculated 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer
##'
##' @title QGIS algorithm - Raster calculator
##'
##' @param INPUT_A `raster` - Input layer A. Path to a raster layer.
##' @param BAND_A `band` - Number of raster band for A. Integer value representing an existing raster band number.
##' @param INPUT_B `raster` - Input layer B. Path to a raster layer.
##' @param BAND_B `band` - Number of raster band for B. Integer value representing an existing raster band number.
##' @param INPUT_C `raster` - Input layer C. Path to a raster layer.
##' @param BAND_C `band` - Number of raster band for C. Integer value representing an existing raster band number.
##' @param INPUT_D `raster` - Input layer D. Path to a raster layer.
##' @param BAND_D `band` - Number of raster band for D. Integer value representing an existing raster band number.
##' @param INPUT_E `raster` - Input layer E. Path to a raster layer.
##' @param BAND_E `band` - Number of raster band for E. Integer value representing an existing raster band number.
##' @param INPUT_F `raster` - Input layer F. Path to a raster layer.
##' @param BAND_F `band` - Number of raster band for F. Integer value representing an existing raster band number.
##' @param FORMULA `string` - Calculation in gdalnumeric syntax using +-\code{/}* or any numpy array functions (i.e. logical_and()). String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param NO_DATA `number` - Set output nodata value. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param EXTENT_OPT `enum`  of `("Ignore", "Fail", "Union", "Intersect")` - Handling of extent differences. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param PROJWIN `extent` - Output extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param RTYPE `enum`  of `("Byte", "Int16", "UInt16", "UInt32", "Int32", "Float32", "Float64", "CInt16", "CInt32", "CFloat32", "CFloat64", "Int8")` - Output raster type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param OPTIONS `string` - Additional creation options. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param EXTRA `string` - Additional command-line parameters. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param OUTPUT `rasterDestination` - Calculated. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputRaster - Calculated
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

gdal_rastercalculator <- function(INPUT_A = qgisprocess:::qgis_default_value(), BAND_A = qgisprocess:::qgis_default_value(), INPUT_B = qgisprocess:::qgis_default_value(), BAND_B = qgisprocess:::qgis_default_value(), INPUT_C = qgisprocess:::qgis_default_value(), BAND_C = qgisprocess:::qgis_default_value(), INPUT_D = qgisprocess:::qgis_default_value(), BAND_D = qgisprocess:::qgis_default_value(), INPUT_E = qgisprocess:::qgis_default_value(), BAND_E = qgisprocess:::qgis_default_value(), INPUT_F = qgisprocess:::qgis_default_value(), BAND_F = qgisprocess:::qgis_default_value(), FORMULA = qgisprocess:::qgis_default_value(), NO_DATA = qgisprocess:::qgis_default_value(), EXTENT_OPT = qgisprocess:::qgis_default_value(), PROJWIN = qgisprocess:::qgis_default_value(), RTYPE = qgisprocess:::qgis_default_value(), OPTIONS = qgisprocess:::qgis_default_value(), EXTRA = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("gdal:rastercalculator")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("gdal:rastercalculator", `INPUT_A` = INPUT_A, `BAND_A` = BAND_A, `INPUT_B` = INPUT_B, `BAND_B` = BAND_B, `INPUT_C` = INPUT_C, `BAND_C` = BAND_C, `INPUT_D` = INPUT_D, `BAND_D` = BAND_D, `INPUT_E` = INPUT_E, `BAND_E` = BAND_E, `INPUT_F` = INPUT_F, `BAND_F` = BAND_F, `FORMULA` = FORMULA, `NO_DATA` = NO_DATA, `EXTENT_OPT` = EXTENT_OPT, `PROJWIN` = PROJWIN, `RTYPE` = RTYPE, `OPTIONS` = OPTIONS, `EXTRA` = EXTRA, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("gdal:rastercalculator", `INPUT_A` = INPUT_A, `BAND_A` = BAND_A, `INPUT_B` = INPUT_B, `BAND_B` = BAND_B, `INPUT_C` = INPUT_C, `BAND_C` = BAND_C, `INPUT_D` = INPUT_D, `BAND_D` = BAND_D, `INPUT_E` = INPUT_E, `BAND_E` = BAND_E, `INPUT_F` = INPUT_F, `BAND_F` = BAND_F, `FORMULA` = FORMULA, `NO_DATA` = NO_DATA, `EXTENT_OPT` = EXTENT_OPT, `PROJWIN` = PROJWIN, `RTYPE` = RTYPE, `OPTIONS` = OPTIONS, `EXTRA` = EXTRA, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}