character(0)

gdal_importvectorintopostgisdatabasenewconnection <- function(INPUT = qgisprocess::qgis_default_value(), SHAPE_ENCODING = qgisprocess::qgis_default_value(), GTYPE = qgisprocess::qgis_default_value(), A_SRS = qgisprocess::qgis_default_value(), T_SRS = qgisprocess::qgis_default_value(), S_SRS = qgisprocess::qgis_default_value(), HOST = qgisprocess::qgis_default_value(), PORT = qgisprocess::qgis_default_value(), USER = qgisprocess::qgis_default_value(), DBNAME = qgisprocess::qgis_default_value(), PASSWORD = qgisprocess::qgis_default_value(), SCHEMA = qgisprocess::qgis_default_value(), TABLE = qgisprocess::qgis_default_value(), PK = qgisprocess::qgis_default_value(), PRIMARY_KEY = qgisprocess::qgis_default_value(), GEOCOLUMN = qgisprocess::qgis_default_value(), DIM = qgisprocess::qgis_default_value(), SIMPLIFY = qgisprocess::qgis_default_value(), SEGMENTIZE = qgisprocess::qgis_default_value(), SPAT = qgisprocess::qgis_default_value(), CLIP = qgisprocess::qgis_default_value(), FIELDS = qgisprocess::qgis_default_value(), WHERE = qgisprocess::qgis_default_value(), GT = qgisprocess::qgis_default_value(), OVERWRITE = qgisprocess::qgis_default_value(), APPEND = qgisprocess::qgis_default_value(), ADDFIELDS = qgisprocess::qgis_default_value(), LAUNDER = qgisprocess::qgis_default_value(), INDEX = qgisprocess::qgis_default_value(), SKIPFAILURES = qgisprocess::qgis_default_value(), PROMOTETOMULTI = qgisprocess::qgis_default_value(), PRECISION = qgisprocess::qgis_default_value(), OPTIONS = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_QGIS_versions()
  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("gdal:importvectorintopostgisdatabasenewconnection")
  output <- qgisprocess::qgis_run_algorithm("gdal:importvectorintopostgisdatabasenewconnection",`INPUT` = INPUT, `SHAPE_ENCODING` = SHAPE_ENCODING, `GTYPE` = GTYPE, `A_SRS` = A_SRS, `T_SRS` = T_SRS, `S_SRS` = S_SRS, `HOST` = HOST, `PORT` = PORT, `USER` = USER, `DBNAME` = DBNAME, `PASSWORD` = PASSWORD, `SCHEMA` = SCHEMA, `TABLE` = TABLE, `PK` = PK, `PRIMARY_KEY` = PRIMARY_KEY, `GEOCOLUMN` = GEOCOLUMN, `DIM` = DIM, `SIMPLIFY` = SIMPLIFY, `SEGMENTIZE` = SEGMENTIZE, `SPAT` = SPAT, `CLIP` = CLIP, `FIELDS` = FIELDS, `WHERE` = WHERE, `GT` = GT, `OVERWRITE` = OVERWRITE, `APPEND` = APPEND, `ADDFIELDS` = ADDFIELDS, `LAUNDER` = LAUNDER, `INDEX` = INDEX, `SKIPFAILURES` = SKIPFAILURES, `PROMOTETOMULTI` = PROMOTETOMULTI, `PRECISION` = PRECISION, `OPTIONS` = OPTIONS,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "NA")
  }
}