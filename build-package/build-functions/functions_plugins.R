enable_plugins <- function(list_of_plugins){
  for (plugin in list_of_plugins){

    rlang::try_fetch(
      qgisprocess::qgis_run(args = c("plugins", "enable", plugin)),
      error = function(cnd){
        rlang::warn(glue::glue("Plugin `{plugin}` already enabled."))
      })

  }
}

print_plugins <- function(){
  plugins <- qgisprocess::qgis_run("plugins")
  rlang::inform(plugins$stdout)
  rlang::inform("----------")
}
