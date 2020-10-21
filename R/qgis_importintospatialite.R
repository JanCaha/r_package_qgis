character(0)

qgis_importintospatialite <- function(INPUT = qgisprocess::qgis_default_value(), DATABASE = qgisprocess::qgis_default_value(), TABLENAME = qgisprocess::qgis_default_value(), PRIMARY_KEY = qgisprocess::qgis_default_value(), GEOMETRY_COLUMN = qgisprocess::qgis_default_value(), ENCODING = qgisprocess::qgis_default_value(), OVERWRITE = qgisprocess::qgis_default_value(), CREATEINDEX = qgisprocess::qgis_default_value(), LOWERCASE_NAMES = qgisprocess::qgis_default_value(), DROP_STRING_LENGTH = qgisprocess::qgis_default_value(), FORCE_SINGLEPART = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("qgis:importintospatialite",`INPUT` = INPUT, `DATABASE` = DATABASE, `TABLENAME` = TABLENAME, `PRIMARY_KEY` = PRIMARY_KEY, `GEOMETRY_COLUMN` = GEOMETRY_COLUMN, `ENCODING` = ENCODING, `OVERWRITE` = OVERWRITE, `CREATEINDEX` = CREATEINDEX, `LOWERCASE_NAMES` = LOWERCASE_NAMES, `DROP_STRING_LENGTH` = DROP_STRING_LENGTH, `FORCE_SINGLEPART` = FORCE_SINGLEPART,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "NA")
  }
}