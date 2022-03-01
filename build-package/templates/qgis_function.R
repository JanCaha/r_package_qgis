{fn_name} <- function({fn_arguments},..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {{

  check_algorithm_necessities("{alg$algorithm}")

  if (messages){{
    output <- qgisprocess::qgis_run_algorithm("{alg$algorithm}", {fn_arguments_qgis_run},..., .quiet = .quiet)
  }} else {{
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("{alg$algorithm}", {fn_arguments_qgis_run},..., .quiet = .quiet)
      )
  }}

  if (.complete_output) {{
    return(output)
  }}
  else{{
    qgisprocess::qgis_output(output, "{main_output}")
  }}
}}
