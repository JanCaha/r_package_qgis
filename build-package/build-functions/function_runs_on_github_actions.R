runs_on_github_actions <- function(){

  github_actions <- as.logical(Sys.getenv("GITHUB_ACTIONS"))

  if (is.na(github_actions)){
    github_actions <- FALSE
  }

  github_actions
}
