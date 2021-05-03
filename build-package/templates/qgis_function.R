{fn_name} <- function({fn_arguments},..., .complete_output = TRUE) {{

  check_algorithm_necessities("{alg$algorithm}")

  output <- qgisprocess::qgis_run_algorithm("{alg$algorithm}", {fn_arguments_qgis_run},...)

  if (.complete_output) {{
    return(output)
  }}
  else{{
    qgisprocess::qgis_output(output, "{main_output}")
  }}
}}
