#' A Cat Function
#'
#' This function allows you to express your love of cats.
#' @param ... Do you love cats? Defaults to TRUE.
#' @keywords cats
#' @export
#' @examples
#'
#'
#'

SET.TOKEN <- function(...) {
  Dots <- list(...)
  chosenTOKEN  <<- Dots$SetToken

}


#' A Cat Function
#'
#' This function allows you to express your love of cats.
#' @param ... Do you love cats? Defaults to TRUE.
#' @keywords cats
#' @export
#' @examples
#'
#'
#'


SET.QUERY <- function(...){
  Dots <- list(...)
  #print(names(Dots))

  #Query.6()
  #Vars
  chosensinceTransactionID <<- Dots$SetchosensinceTransactionID %>% ifelse(is.null(.),NA,.)

  #Query.7()
  #Vars
  chosenCount              <<- Dots$SetchosenCount %>% ifelse(is.null(.),NA,.)
  chosenPrice              <<- Dots$SetchosenPrice %>% ifelse(is.null(.),NA,.)
  chosenGranularity        <<- Dots$SetchosenGranularity %>% ifelse(is.null(.),NA,.)
  chosenFrom               <<- Dots$SetchosenFrom %>% ifelse(is.null(.),NA,.)#"2019-04-21"
  chosenTo                 <<- Dots$SetchosenTo %>% ifelse(is.null(.),NA,.)#"2019-04-22"

  #Query.30()
  #Vars
  chosenID                 <<- Dots$SetchosenID %>% ifelse(is.null(.),NA,.)
  #  print(EpQuery)

}

