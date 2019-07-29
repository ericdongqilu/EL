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
#'

Request.Step3.6<-function(...) {
  Dots <- list(...)
  print(names(Dots))

  ChosenEpscode <- Dots$Epscode

  #
  Url <- paste0(chosenEnvironment,
                Ep.info.ep.ready,
                Ep.Query(CEPScode = ChosenEpscode))
  Url
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

Request.Step3.7<-function(...) {
  Dots <- list(...)
  print(names(Dots))

  ChosenEpscode <- Dots$Epscode

  #
  Url <- paste0(chosenEnvironment,
                Ep.info.ep.ready,
                Ep.Query(CEPScode=ChosenEpscode))

  Url
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

Request.Step3.30 <-function(...) {
  Dots <- list(...)
  print(names(Dots))

  ChosenEpscode <- Dots$Epscode

  #
  Url <- paste0(chosenEnvironment,Ep.info.ep.ready,
                Ep.Query(CEPScode=ChosenEpscode))

  Url
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


Request.Step3.32 <-function(...) {
  Dots <- list(...)
  print(names(Dots))

  ChosenEpscode <- Dots$Epscode

  #
  Url <- paste0(chosenEnvironment,Ep.info.ep.ready,
                Ep.Query(CEPScode=ChosenEpscode))
  Url
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

Request.Step3.else <-function(...) {
  Dots <- list(...)
  print(names(Dots))

  ChosenEpscode <- Dots$Epscode

  #
  Url = paste0(chosenEnvironment,Ep.info.ep.ready)

  print(c(ChosenEpscode,Url))

  Url
}
