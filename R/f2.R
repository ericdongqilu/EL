#' A Cat Function
#'
#' This function allows you to express your love of cats.
#' @param pToken Do you love cats? Defaults to TRUE.
#' @keywords cats
#' @export
#' @examples
#'
#'

#Token for Practice
#TOKEN.Practice <- "77eef439a2943109e6634ca77f3e59da-63ead690379c4175b6d62f08f66b205e"

#Token for Realtrade
#TOKEN.Realtrade <- ""


#chosenTOKEN <- TOKEN.Practice


# Ep.Header Function
Ep.Header <- function(pToken = chosenTOKEN){

  EpHeader <- add_headers(c("Content-Type "="application/json",
                            "Authorization " = paste0("Bearer ",pToken)
  ))
  return(EpHeader)
}

#f2 <- Ep.Header()
#f2
