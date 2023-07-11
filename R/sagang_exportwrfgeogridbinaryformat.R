character(0)

sagang_exportwrfgeogridbinaryformat <- function(GRIDS = qgisprocess:::qgis_default_value(), FILE = qgisprocess:::qgis_default_value(), DATATYPE = qgisprocess:::qgis_default_value(), TYPE = qgisprocess:::qgis_default_value(), NAME_DIGITS = qgisprocess:::qgis_default_value(), MISSING = qgisprocess:::qgis_default_value(), SCALE = qgisprocess:::qgis_default_value(), UNITS = qgisprocess:::qgis_default_value(), DESCRIPTION = qgisprocess:::qgis_default_value(), MMINLU = qgisprocess:::qgis_default_value(), TILE_BDR = qgisprocess:::qgis_default_value(), PROJECTION = qgisprocess:::qgis_default_value(), SDTLON = qgisprocess:::qgis_default_value(), TRUELAT1 = qgisprocess:::qgis_default_value(), TRUELAT2 = qgisprocess:::qgis_default_value(), ISWATER = qgisprocess:::qgis_default_value(), ISLAKE = qgisprocess:::qgis_default_value(), ISICE = qgisprocess:::qgis_default_value(), ISURBAN = qgisprocess:::qgis_default_value(), ISOILWATER = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:exportwrfgeogridbinaryformat")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:exportwrfgeogridbinaryformat", `GRIDS` = GRIDS, `FILE` = FILE, `DATATYPE` = DATATYPE, `TYPE` = TYPE, `NAME_DIGITS` = NAME_DIGITS, `MISSING` = MISSING, `SCALE` = SCALE, `UNITS` = UNITS, `DESCRIPTION` = DESCRIPTION, `MMINLU` = MMINLU, `TILE_BDR` = TILE_BDR, `PROJECTION` = PROJECTION, `SDTLON` = SDTLON, `TRUELAT1` = TRUELAT1, `TRUELAT2` = TRUELAT2, `ISWATER` = ISWATER, `ISLAKE` = ISLAKE, `ISICE` = ISICE, `ISURBAN` = ISURBAN, `ISOILWATER` = ISOILWATER,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:exportwrfgeogridbinaryformat", `GRIDS` = GRIDS, `FILE` = FILE, `DATATYPE` = DATATYPE, `TYPE` = TYPE, `NAME_DIGITS` = NAME_DIGITS, `MISSING` = MISSING, `SCALE` = SCALE, `UNITS` = UNITS, `DESCRIPTION` = DESCRIPTION, `MMINLU` = MMINLU, `TILE_BDR` = TILE_BDR, `PROJECTION` = PROJECTION, `SDTLON` = SDTLON, `TRUELAT1` = TRUELAT1, `TRUELAT2` = TRUELAT2, `ISWATER` = ISWATER, `ISLAKE` = ISLAKE, `ISICE` = ISICE, `ISURBAN` = ISURBAN, `ISOILWATER` = ISOILWATER,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "NA")
  }
}