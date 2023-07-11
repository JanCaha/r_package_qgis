character(0)

grass7_g_extension_manage <- function(extension = qgisprocess:::qgis_default_value(), operation = qgisprocess:::qgis_default_value(), .f = qgisprocess:::qgis_default_value(), .t = qgisprocess:::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("grass7:g.extension.manage")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("grass7:g.extension.manage", `extension` = extension, `operation` = operation, `-f` = .f, `-t` = .t, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("grass7:g.extension.manage", `extension` = extension, `operation` = operation, `-f` = .f, `-t` = .t, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "NA")
  }
}