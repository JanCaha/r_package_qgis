##' QGIS Algorithm provided by GDAL Export to PostgreSQL (new connection) (gdal:importvectorintopostgisdatabasenewconnection). Exports a vector layer to a new PostgreSQL database connection
##'
##' @title QGIS algorithm - Export to PostgreSQL (new connection)
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param SHAPE_ENCODING `string` - Shape encoding. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param GTYPE `enum`  of `("", "NONE", "GEOMETRY", "POINT", "LINESTRING", "POLYGON", "GEOMETRYCOLLECTION", "MULTIPOINT", "MULTIPOLYGON", "MULTILINESTRING", "CIRCULARSTRING", "COMPOUNDCURVE", "CURVEPOLYGON", "MULTICURVE", "MULTISURFACE", "CONVERT_TO_LINEAR", "CONVERT_TO_CURVE")` - Output geometry type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param A_SRS `crs` - Assign an output CRS. CRS as an auth ID (e.g. 'EPSG:3111'). CRS as a PROJ4 string (e.g. 'PROJ4:…'). CRS as a WKT string (e.g. 'WKT:…'). Path to a layer. The CRS of the layer is used..
##' @param T_SRS `crs` - Reproject to this CRS on output . CRS as an auth ID (e.g. 'EPSG:3111'). CRS as a PROJ4 string (e.g. 'PROJ4:…'). CRS as a WKT string (e.g. 'WKT:…'). Path to a layer. The CRS of the layer is used..
##' @param S_SRS `crs` - Override source CRS. CRS as an auth ID (e.g. 'EPSG:3111'). CRS as a PROJ4 string (e.g. 'PROJ4:…'). CRS as a WKT string (e.g. 'WKT:…'). Path to a layer. The CRS of the layer is used..
##' @param HOST `string` - Host. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param PORT `string` - Port. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param USER `string` - Username. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param DBNAME `string` - Database name. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param PASSWORD `string` - Password. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param SCHEMA `string` - Schema name. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param TABLE `string` - Table name, leave blank to use input name. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param PK `string` - Primary key (new field). String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param PRIMARY_KEY `field` - Primary key (existing field, used if the above option is left empty). The name of an existing field. ; delimited list of existing field names.
##' @param GEOCOLUMN `string` - Geometry column name. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param DIM `enum`  of `("2", "3", "4")` - Vector dimensions. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param SIMPLIFY `string` - Distance tolerance for simplification. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param SEGMENTIZE `string` - Maximum distance between 2 nodes (densification). String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param SPAT `extent` - Select features by extent (defined in input layer CRS). A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param CLIP `boolean` - Clip the input layer using the above (rectangle) extent. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param FIELDS `field` - Fields to include (leave empty to use all fields). The name of an existing field. ; delimited list of existing field names.
##' @param WHERE `string` - Select features using a SQL "WHERE" statement (Ex: column='value'). String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param GT `string` - Group N features per transaction (Default: 20000). String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param OVERWRITE `boolean` - Overwrite existing table. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param APPEND `boolean` - Append to existing table. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ADDFIELDS `boolean` - Append and add new fields to existing table. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param LAUNDER `boolean` - Do not launder columns\code{/}table names. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param INDEX `boolean` - Do not create spatial index. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param SKIPFAILURES `boolean` - Continue after a failure, skipping the failed feature. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param MAKEVALID `boolean` - Validate geometries based on Simple Features specification. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param PROMOTETOMULTI `boolean` - Promote to Multipart. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param PRECISION `boolean` - Keep width and precision of input attributes. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param OPTIONS `string` - Additional creation options. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
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

gdal_importvectorintopostgisdatabasenewconnection <- function(INPUT = qgisprocess:::qgis_default_value(), SHAPE_ENCODING = qgisprocess:::qgis_default_value(), GTYPE = qgisprocess:::qgis_default_value(), A_SRS = qgisprocess:::qgis_default_value(), T_SRS = qgisprocess:::qgis_default_value(), S_SRS = qgisprocess:::qgis_default_value(), HOST = qgisprocess:::qgis_default_value(), PORT = qgisprocess:::qgis_default_value(), USER = qgisprocess:::qgis_default_value(), DBNAME = qgisprocess:::qgis_default_value(), PASSWORD = qgisprocess:::qgis_default_value(), SCHEMA = qgisprocess:::qgis_default_value(), TABLE = qgisprocess:::qgis_default_value(), PK = qgisprocess:::qgis_default_value(), PRIMARY_KEY = qgisprocess:::qgis_default_value(), GEOCOLUMN = qgisprocess:::qgis_default_value(), DIM = qgisprocess:::qgis_default_value(), SIMPLIFY = qgisprocess:::qgis_default_value(), SEGMENTIZE = qgisprocess:::qgis_default_value(), SPAT = qgisprocess:::qgis_default_value(), CLIP = qgisprocess:::qgis_default_value(), FIELDS = qgisprocess:::qgis_default_value(), WHERE = qgisprocess:::qgis_default_value(), GT = qgisprocess:::qgis_default_value(), OVERWRITE = qgisprocess:::qgis_default_value(), APPEND = qgisprocess:::qgis_default_value(), ADDFIELDS = qgisprocess:::qgis_default_value(), LAUNDER = qgisprocess:::qgis_default_value(), INDEX = qgisprocess:::qgis_default_value(), SKIPFAILURES = qgisprocess:::qgis_default_value(), MAKEVALID = qgisprocess:::qgis_default_value(), PROMOTETOMULTI = qgisprocess:::qgis_default_value(), PRECISION = qgisprocess:::qgis_default_value(), OPTIONS = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("gdal:importvectorintopostgisdatabasenewconnection")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("gdal:importvectorintopostgisdatabasenewconnection", `INPUT` = INPUT, `SHAPE_ENCODING` = SHAPE_ENCODING, `GTYPE` = GTYPE, `A_SRS` = A_SRS, `T_SRS` = T_SRS, `S_SRS` = S_SRS, `HOST` = HOST, `PORT` = PORT, `USER` = USER, `DBNAME` = DBNAME, `PASSWORD` = PASSWORD, `SCHEMA` = SCHEMA, `TABLE` = TABLE, `PK` = PK, `PRIMARY_KEY` = PRIMARY_KEY, `GEOCOLUMN` = GEOCOLUMN, `DIM` = DIM, `SIMPLIFY` = SIMPLIFY, `SEGMENTIZE` = SEGMENTIZE, `SPAT` = SPAT, `CLIP` = CLIP, `FIELDS` = FIELDS, `WHERE` = WHERE, `GT` = GT, `OVERWRITE` = OVERWRITE, `APPEND` = APPEND, `ADDFIELDS` = ADDFIELDS, `LAUNDER` = LAUNDER, `INDEX` = INDEX, `SKIPFAILURES` = SKIPFAILURES, `MAKEVALID` = MAKEVALID, `PROMOTETOMULTI` = PROMOTETOMULTI, `PRECISION` = PRECISION, `OPTIONS` = OPTIONS,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("gdal:importvectorintopostgisdatabasenewconnection", `INPUT` = INPUT, `SHAPE_ENCODING` = SHAPE_ENCODING, `GTYPE` = GTYPE, `A_SRS` = A_SRS, `T_SRS` = T_SRS, `S_SRS` = S_SRS, `HOST` = HOST, `PORT` = PORT, `USER` = USER, `DBNAME` = DBNAME, `PASSWORD` = PASSWORD, `SCHEMA` = SCHEMA, `TABLE` = TABLE, `PK` = PK, `PRIMARY_KEY` = PRIMARY_KEY, `GEOCOLUMN` = GEOCOLUMN, `DIM` = DIM, `SIMPLIFY` = SIMPLIFY, `SEGMENTIZE` = SEGMENTIZE, `SPAT` = SPAT, `CLIP` = CLIP, `FIELDS` = FIELDS, `WHERE` = WHERE, `GT` = GT, `OVERWRITE` = OVERWRITE, `APPEND` = APPEND, `ADDFIELDS` = ADDFIELDS, `LAUNDER` = LAUNDER, `INDEX` = INDEX, `SKIPFAILURES` = SKIPFAILURES, `MAKEVALID` = MAKEVALID, `PROMOTETOMULTI` = PROMOTETOMULTI, `PRECISION` = PRECISION, `OPTIONS` = OPTIONS,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "NA")
  }
}