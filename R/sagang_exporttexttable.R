character(0)

sagang_exporttexttable <- function(TABLE = qgisprocess:::qgis_default_value(), HEADLINE = qgisprocess:::qgis_default_value(), STRQUOTA = qgisprocess:::qgis_default_value(), SEPARATOR = qgisprocess:::qgis_default_value(), SEP_OTHER = qgisprocess:::qgis_default_value(), FILENAME = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:exporttexttable")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:exporttexttable", `TABLE` = TABLE, `HEADLINE` = HEADLINE, `STRQUOTA` = STRQUOTA, `SEPARATOR` = SEPARATOR, `SEP_OTHER` = SEP_OTHER, `FILENAME` = FILENAME,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:exporttexttable", `TABLE` = TABLE, `HEADLINE` = HEADLINE, `STRQUOTA` = STRQUOTA, `SEPARATOR` = SEPARATOR, `SEP_OTHER` = SEP_OTHER, `FILENAME` = FILENAME,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "NA")
  }
}