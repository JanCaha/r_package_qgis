##' QGIS Algorithm provided by SAGA Next Gen Export shapes (sagang:exportshapes). ---------------- Arguments ----------------  SHAPES: Shapes 	Argument type:	source 	Acceptable values: 		- Path to a vector layer FILE: File 	Default value:	False 	Argument type:	file 	Acceptable values: 		- Path to a file FORMAT: Format 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) PCIDSK Database File 		- 1: (1) Network Common Data Format 		- 2: (2) NASA Planetary Data System 4 		- 3: (3) MIPL VICAR file 		- 4: (4) Geospatial PDF 		- 5: (5) MBTiles 		- 6: (6) IBM DB2 Spatial Database 		- 7: (7) ESRI Shapefile 		- 8: (8) MapInfo File 		- 9: (9) IHO S-57 (ENC) 		- 10: (10) Microstation DGN 		- 11: (11) Memory 		- 12: (12) Atlas BNA 		- 13: (13) Comma Separated Value (.csv) 		- 14: (14) Geography Markup Language (GML) 		- 15: (15) GPX 		- 16: (16) Keyhole Markup Language (LIBKML) 		- 17: (17) Keyhole Markup Language (KML) 		- 18: (18) GeoJSON 		- 19: (19) GeoJSON Sequence 		- 20: (20) Interlis 1 		- 21: (21) Interlis 2 		- 22: (22) GMT ASCII Vectors (.gmt) 		- 23: (23) GeoPackage 		- 24: (24) SQLite / Spatialite 		- 25: (25) ODBC 		- 26: (26) WAsP .map format 		- 27: (27) Microsoft SQL Server Spatial Database (BCP) 		- 28: (28) PostgreSQL/PostGIS 		- 29: (29) MySQL 		- 30: (30) AutoCAD DXF 		- 31: (31) FlatGeobuf 		- 32: (32) Geoconcept 		- 33: (33) GeoRSS 		- 34: (34) GPSTrackMaker 		- 35: (35) PostgreSQL SQL dump 		- 36: (36) GPSBabel 		- 37: (37) CouchDB / GeoCouch 		- 38: (38) Cloudant / CouchDB 		- 39: (39) Open Document/ LibreOffice / OpenOffice Spreadsheet  		- 40: (40) MS Office Open XML spreadsheet 		- 41: (41) Elastic Search 		- 42: (42) Carto 		- 43: (43) AmigoCloud 		- 44: (44) Selafin 		- 45: (45) OpenJUMP JML 		- 46: (46) VDV-451/VDV-452/INTREST Data Format 		- 47: (47) Mapbox Vector Tiles 		- 48: (48) NextGIS Web 		- 49: (49) MapML 		- 50: (50) U.S. Census TIGER/Line 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3'
##'
##' @title QGIS algorithm - Export shapes
##'
##' @param SHAPES `source` - Shapes. Path to a vector layer.
##' @param FILE `file` - File. Path to a file.
##' @param FORMAT `enum`  of `("(0) PCIDSK Database File", "(1) Network Common Data Format", "(2) NASA Planetary Data System 4", "(3) MIPL VICAR file", "(4) Geospatial PDF", "(5) MBTiles", "(6) IBM DB2 Spatial Database", "(7) ESRI Shapefile", "(8) MapInfo File", "(9) IHO S-57 (ENC)", "(10) Microstation DGN", "(11) Memory", "(12) Atlas BNA", "(13) Comma Separated Value (.csv)", "(14) Geography Markup Language (GML)", "(15) GPX", "(16) Keyhole Markup Language (LIBKML)", "(17) Keyhole Markup Language (KML)", "(18) GeoJSON", "(19) GeoJSON Sequence", "(20) Interlis 1", "(21) Interlis 2", "(22) GMT ASCII Vectors (.gmt)", "(23) GeoPackage", "(24) SQLite / Spatialite", "(25) ODBC", "(26) WAsP .map format", "(27) Microsoft SQL Server Spatial Database (BCP)", "(28) PostgreSQL/PostGIS", "(29) MySQL", "(30) AutoCAD DXF", "(31) FlatGeobuf", "(32) Geoconcept", "(33) GeoRSS", "(34) GPSTrackMaker", "(35) PostgreSQL SQL dump", "(36) GPSBabel", "(37) CouchDB / GeoCouch", "(38) Cloudant / CouchDB", "(39) Open Document/ LibreOffice / OpenOffice Spreadsheet ", "(40) MS Office Open XML spreadsheet", "(41) Elastic Search", "(42) Carto", "(43) AmigoCloud", "(44) Selafin", "(45) OpenJUMP JML", "(46) VDV-451/VDV-452/INTREST Data Format", "(47) Mapbox Vector Tiles", "(48) NextGIS Web", "(49) MapML", "(50) U.S. Census TIGER/Line")` - Format. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
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

sagang_exportshapes <- function(SHAPES = qgisprocess:::qgis_default_value(), FILE = qgisprocess:::qgis_default_value(), FORMAT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:exportshapes")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:exportshapes", `SHAPES` = SHAPES, `FILE` = FILE, `FORMAT` = FORMAT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:exportshapes", `SHAPES` = SHAPES, `FILE` = FILE, `FORMAT` = FORMAT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "NA")
  }
}