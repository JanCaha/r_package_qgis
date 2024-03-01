##' QGIS Algorithm provided by SAGA Next Gen Gpsbabel (sagang:gpsbabel). ---------------- Arguments ----------------  BASEPATH: GPSBabel path 	Default value:	False 	Argument type:	file 	Acceptable values: 		- Path to a file INPUT: Input file 	Default value:	False 	Argument type:	file 	Acceptable values: 		- Path to a file FORMATIN: Input format 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) Geocaching.com .loc 		- 1: (1) GPSman 		- 2: (2) GPX XML 		- 3: (3) Magellan protocol 		- 4: (4) Magellan Mapsend 		- 5: (5) Garmin PCX5 		- 6: (6) Garmin Mapsource 		- 7: (7) gpsutil 		- 8: (8) U.S. Census Bureau Tiger Mapping Service 		- 9: (9) Comma separated values 		- 10: (10) Delorme Topo USA4/XMap Conduit 		- 11: (11) Navitrak DNA marker format 		- 12: (12) MS PocketStreets 2002 Pushpin 		- 13: (13) Cetus for Palm/OS 		- 14: (14) GPSPilot Tracker for Palm/OS 		- 15: (15) Magellan NAV Companion for PalmOS 		- 16: (16) Garmin serial protocol 		- 17: (17) MapTech Exchange Format 		- 18: (18) Holux (gm-100) .wpo Format 		- 19: (19) OziExplorer Waypoint 		- 20: (20) National Geographic Topo .tpg 		- 21: (21) TopoMapPro Places File 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' OUTPUT: Output file 	Default value:	False 	Argument type:	file 	Acceptable values: 		- Path to a file FORMATOUT: Output format 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) Geocaching.com .loc 		- 1: (1) GPSman 		- 2: (2) GPX XML 		- 3: (3) Magellan protocol 		- 4: (4) Magellan Mapsend 		- 5: (5) Garmin PCX5 		- 6: (6) Garmin Mapsource 		- 7: (7) gpsutil 		- 8: (8) U.S. Census Bureau Tiger Mapping Service 		- 9: (9) Comma separated values 		- 10: (10) Delorme Topo USA4/XMap Conduit 		- 11: (11) Navitrak DNA marker format 		- 12: (12) MS PocketStreets 2002 Pushpin 		- 13: (13) Cetus for Palm/OS 		- 14: (14) GPSPilot Tracker for Palm/OS 		- 15: (15) Magellan NAV Companion for PalmOS 		- 16: (16) Garmin serial protocol 		- 17: (17) MapTech Exchange Format 		- 18: (18) Holux (gm-100) .wpo Format 		- 19: (19) OziExplorer Waypoint 		- 20: (20) National Geographic Topo .tpg 		- 21: (21) TopoMapPro Places File 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3'
##'
##' @title QGIS algorithm - Gpsbabel
##'
##' @param BASEPATH `file` - GPSBabel path. Path to a file.
##' @param INPUT `file` - Input file. Path to a file.
##' @param FORMATIN `enum`  of `("(0) Geocaching.com .loc", "(1) GPSman", "(2) GPX XML", "(3) Magellan protocol", "(4) Magellan Mapsend", "(5) Garmin PCX5", "(6) Garmin Mapsource", "(7) gpsutil", "(8) U.S. Census Bureau Tiger Mapping Service", "(9) Comma separated values", "(10) Delorme Topo USA4/XMap Conduit", "(11) Navitrak DNA marker format", "(12) MS PocketStreets 2002 Pushpin", "(13) Cetus for Palm/OS", "(14) GPSPilot Tracker for Palm/OS", "(15) Magellan NAV Companion for PalmOS", "(16) Garmin serial protocol", "(17) MapTech Exchange Format", "(18) Holux (gm-100) .wpo Format", "(19) OziExplorer Waypoint", "(20) National Geographic Topo .tpg", "(21) TopoMapPro Places File")` - Input format. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param OUTPUT `file` - Output file. Path to a file.
##' @param FORMATOUT `enum`  of `("(0) Geocaching.com .loc", "(1) GPSman", "(2) GPX XML", "(3) Magellan protocol", "(4) Magellan Mapsend", "(5) Garmin PCX5", "(6) Garmin Mapsource", "(7) gpsutil", "(8) U.S. Census Bureau Tiger Mapping Service", "(9) Comma separated values", "(10) Delorme Topo USA4/XMap Conduit", "(11) Navitrak DNA marker format", "(12) MS PocketStreets 2002 Pushpin", "(13) Cetus for Palm/OS", "(14) GPSPilot Tracker for Palm/OS", "(15) Magellan NAV Companion for PalmOS", "(16) Garmin serial protocol", "(17) MapTech Exchange Format", "(18) Holux (gm-100) .wpo Format", "(19) OziExplorer Waypoint", "(20) National Geographic Topo .tpg", "(21) TopoMapPro Places File")` - Output format. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
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

sagang_gpsbabel <- function(BASEPATH = qgisprocess:::qgis_default_value(), INPUT = qgisprocess:::qgis_default_value(), FORMATIN = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(), FORMATOUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:gpsbabel")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:gpsbabel", `BASEPATH` = BASEPATH, `INPUT` = INPUT, `FORMATIN` = FORMATIN, `OUTPUT` = OUTPUT, `FORMATOUT` = FORMATOUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:gpsbabel", `BASEPATH` = BASEPATH, `INPUT` = INPUT, `FORMATIN` = FORMATIN, `OUTPUT` = OUTPUT, `FORMATOUT` = FORMATOUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "NA")
  }
}