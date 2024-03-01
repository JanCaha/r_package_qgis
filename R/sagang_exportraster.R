##' QGIS Algorithm provided by SAGA Next Gen Export raster (sagang:exportraster). ---------------- Arguments ----------------  GRIDS: Grid(s) 	Argument type:	multilayer FILE: File 	Default value:	False 	Argument type:	file 	Acceptable values: 		- Path to a file FORMAT: Format 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) Virtual Raster 		- 1: (1) GeoTIFF 		- 2: (2) National Imagery Transmission Format 		- 3: (3) Erdas Imagine Images (.img) 		- 4: (4) ELAS 		- 5: (5) In Memory Raster 		- 6: (6) MS Windows Device Independent Bitmap 		- 7: (7) PCIDSK Database File 		- 8: (8) PCRaster Raster File 		- 9: (9) ILWIS Raster Map 		- 10: (10) SGI Image File Format 1.0 		- 11: (11) Leveller heightfield 		- 12: (12) Terragen heightfield 		- 13: (13) Network Common Data Format 		- 14: (14) HDF4 Dataset 		- 15: (15) USGS Astrogeology ISIS cube (Version 3) 		- 16: (16) USGS Astrogeology ISIS cube (Version 2) 		- 17: (17) NASA Planetary Data System 4 		- 18: (18) MIPL VICAR file 		- 19: (19) ERMapper .ers Labelled 		- 20: (20) Raster Matrix Format 		- 21: (21) Idrisi Raster A.1 		- 22: (22) Intergraph Raster 		- 23: (23) Golden Software Binary Grid (.grd) 		- 24: (24) Golden Software 7 Binary Grid (.grd) 		- 25: (25) Geospatial PDF 		- 26: (26) MBTiles 		- 27: (27) Meta Raster Format 		- 28: (28) Portable Pixmap Format (netpbm) 		- 29: (29) PCI .aux Labelled 		- 30: (30) Vexcel MFF Raster 		- 31: (31) Vexcel MFF2 (HKV) Raster 		- 32: (32) VTP .bt (Binary Terrain) 1.3 Format 		- 33: (33) Erdas .LAN/.GIS 		- 34: (34) Image Data and Analysis 		- 35: (35) NOAA Vertical Datum .GTX 		- 36: (36) NTv2 Datum Grid Shift 		- 37: (37) CTable2 Datum Grid Shift 		- 38: (38) KOLOR Raw 		- 39: (39) ROI_PAC raster 		- 40: (40) R Raster 		- 41: (41) Natural Resources Canada's Geoid 		- 42: (42) Northwood Numeric Grid Format .grd/.tab 		- 43: (43) ARC Digitized Raster Graphics 		- 44: (44) SAGA GIS Binary Grid (.sdat, .sg-grd-z) 		- 45: (45) IBM DB2 Spatial Database 		- 46: (46) GeoPackage 		- 47: (47) NextGIS Web 		- 48: (48) ENVI .hdr Labelled 		- 49: (49) ESRI .hdr Labelled 		- 50: (50) ISCE raster 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' TYPE: Data Type 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) match input data 		- 1: (1) 8 bit unsigned integer 		- 2: (2) 16 bit unsigned integer 		- 3: (3) 16 bit signed integer 		- 4: (4) 32 bit unsigned integer 		- 5: (5) 32 bit signed integer 		- 6: (6) 32 bit floating point 		- 7: (7) 64 bit floating point 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' SET_NODATA: Set Custom NoData 	Default value:	false 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression NODATA: NoData Value 	Default value:	0 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression OPTIONS: Creation Options 	Default value:	 	Argument type:	string 	Acceptable values: 		- String value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Export raster
##'
##' @param GRIDS `multilayer` - Grid(s). .
##' @param FILE `file` - File. Path to a file.
##' @param FORMAT `enum`  of `("(0) Virtual Raster", "(1) GeoTIFF", "(2) National Imagery Transmission Format", "(3) Erdas Imagine Images (.img)", "(4) ELAS", "(5) In Memory Raster", "(6) MS Windows Device Independent Bitmap", "(7) PCIDSK Database File", "(8) PCRaster Raster File", "(9) ILWIS Raster Map", "(10) SGI Image File Format 1.0", "(11) Leveller heightfield", "(12) Terragen heightfield", "(13) Network Common Data Format", "(14) HDF4 Dataset", "(15) USGS Astrogeology ISIS cube (Version 3)", "(16) USGS Astrogeology ISIS cube (Version 2)", "(17) NASA Planetary Data System 4", "(18) MIPL VICAR file", "(19) ERMapper .ers Labelled", "(20) Raster Matrix Format", "(21) Idrisi Raster A.1", "(22) Intergraph Raster", "(23) Golden Software Binary Grid (.grd)", "(24) Golden Software 7 Binary Grid (.grd)", "(25) Geospatial PDF", "(26) MBTiles", "(27) Meta Raster Format", "(28) Portable Pixmap Format (netpbm)", "(29) PCI .aux Labelled", "(30) Vexcel MFF Raster", "(31) Vexcel MFF2 (HKV) Raster", "(32) VTP .bt (Binary Terrain) 1.3 Format", "(33) Erdas .LAN/.GIS", "(34) Image Data and Analysis", "(35) NOAA Vertical Datum .GTX", "(36) NTv2 Datum Grid Shift", "(37) CTable2 Datum Grid Shift", "(38) KOLOR Raw", "(39) ROI_PAC raster", "(40) R Raster", "(41) Natural Resources Canada's Geoid", "(42) Northwood Numeric Grid Format .grd/.tab", "(43) ARC Digitized Raster Graphics", "(44) SAGA GIS Binary Grid (.sdat, .sg-grd-z)", "(45) IBM DB2 Spatial Database", "(46) GeoPackage", "(47) NextGIS Web", "(48) ENVI .hdr Labelled", "(49) ESRI .hdr Labelled", "(50) ISCE raster")` - Format. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param TYPE `enum`  of `("(0) match input data", "(1) 8 bit unsigned integer", "(2) 16 bit unsigned integer", "(3) 16 bit signed integer", "(4) 32 bit unsigned integer", "(5) 32 bit signed integer", "(6) 32 bit floating point", "(7) 64 bit floating point")` - Data Type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param SET_NODATA `boolean` - Set Custom NoData. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param NODATA `number` - NoData Value. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param OPTIONS `string` - Creation Options. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' No output description provided.
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_exportraster <- function(GRIDS = qgisprocess:::qgis_default_value(), FILE = qgisprocess:::qgis_default_value(), FORMAT = qgisprocess:::qgis_default_value(), TYPE = qgisprocess:::qgis_default_value(), SET_NODATA = qgisprocess:::qgis_default_value(), NODATA = qgisprocess:::qgis_default_value(), OPTIONS = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:exportraster")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:exportraster", `GRIDS` = GRIDS, `FILE` = FILE, `FORMAT` = FORMAT, `TYPE` = TYPE, `SET_NODATA` = SET_NODATA, `NODATA` = NODATA, `OPTIONS` = OPTIONS,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:exportraster", `GRIDS` = GRIDS, `FILE` = FILE, `FORMAT` = FORMAT, `TYPE` = TYPE, `SET_NODATA` = SET_NODATA, `NODATA` = NODATA, `OPTIONS` = OPTIONS,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "NA")
  }
}