##' QGIS Algorithm provided by GDAL Translate (convert format) (gdal:translate). ---------------- Arguments ----------------  INPUT: Input layer 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer TARGET_CRS: Override the projection for the output file (optional) 	Argument type:	crs 	Acceptable values: 		- CRS as an auth ID (e.g. 'EPSG:3111') 		- CRS as a PROJ4 string (e.g. 'PROJ4:…') 		- CRS as a WKT string (e.g. 'WKT:…') 		- Path to a layer. The CRS of the layer is used. NODATA: Assign a specified nodata value to output bands (optional) 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression COPY_SUBDATASETS: Copy all subdatasets of this file to individual output files 	Default value:	false 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression OPTIONS: Additional creation options (optional) 	Default value:	 	Argument type:	string 	Acceptable values: 		- String value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression EXTRA: Additional command-line parameters (optional) 	Argument type:	string 	Acceptable values: 		- String value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression DATA_TYPE: Output data type 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: Use Input Layer Data Type 		- 1: Byte 		- 2: Int16 		- 3: UInt16 		- 4: UInt32 		- 5: Int32 		- 6: Float32 		- 7: Float64 		- 8: CInt16 		- 9: CInt32 		- 10: CFloat32 		- 11: CFloat64 		- 12: Int8 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' OUTPUT: Converted 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer
##'
##' @title QGIS algorithm - Translate (convert format)
##'
##' @param INPUT `raster` - Input layer. Path to a raster layer.
##' @param TARGET_CRS `crs` - Override the projection for the output file. CRS as an auth ID (e.g. 'EPSG:3111'). CRS as a PROJ4 string (e.g. 'PROJ4:…'). CRS as a WKT string (e.g. 'WKT:…'). Path to a layer. The CRS of the layer is used..
##' @param NODATA `number` - Assign a specified nodata value to output bands. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param COPY_SUBDATASETS `boolean` - Copy all subdatasets of this file to individual output files. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param OPTIONS `string` - Additional creation options. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param EXTRA `string` - Additional command-line parameters. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param DATA_TYPE `enum`  of `("Use Input Layer Data Type", "Byte", "Int16", "UInt16", "UInt32", "Int32", "Float32", "Float64", "CInt16", "CInt32", "CFloat32", "CFloat64", "Int8")` - Output data type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param OUTPUT `rasterDestination` - Converted. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputRaster - Converted
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

gdal_translate <- function(INPUT = qgisprocess:::qgis_default_value(), TARGET_CRS = qgisprocess:::qgis_default_value(), NODATA = qgisprocess:::qgis_default_value(), COPY_SUBDATASETS = qgisprocess:::qgis_default_value(), OPTIONS = qgisprocess:::qgis_default_value(), EXTRA = qgisprocess:::qgis_default_value(), DATA_TYPE = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("gdal:translate")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("gdal:translate", `INPUT` = INPUT, `TARGET_CRS` = TARGET_CRS, `NODATA` = NODATA, `COPY_SUBDATASETS` = COPY_SUBDATASETS, `OPTIONS` = OPTIONS, `EXTRA` = EXTRA, `DATA_TYPE` = DATA_TYPE, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("gdal:translate", `INPUT` = INPUT, `TARGET_CRS` = TARGET_CRS, `NODATA` = NODATA, `COPY_SUBDATASETS` = COPY_SUBDATASETS, `OPTIONS` = OPTIONS, `EXTRA` = EXTRA, `DATA_TYPE` = DATA_TYPE, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}