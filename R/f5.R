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
#'
Request.Step2.Account <- function(...) {
  Dots <- list(...)
  print(names(Dots))

  chosenaccountID <- Dots$accountID

  #
  Ep.info.ep.ready <-   Ep.info %>%
    select(Endpoints) %>%
    gsub("accountID",chosenaccountID,.)

  Ep.info.ep.ready
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
#'
#'
Request.Step2.Instrument <-function(...) {
  Dots <- list(...)
  print(names(Dots))

  chosenInstrument <- Dots$Instrument

  Ep.info.ep.ready <- Ep.info %>%
    select(Endpoints) %>%
    gsub("INSTRUMENT",chosenInstrument,.)
  Ep.info.ep.ready
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
#'
#'

Request.Step2.Order <- function(...) {
  Dots <- list(...)
  print(names(Dots))

  chosenaccountID <- Dots$accountID
  chosenOrderSpecifier <- Dots$OrderSpecifier

  #
  Ep.info.ep.ready <- Ep.info %>%
    select(Endpoints) %>%
    gsub("accountID",chosenaccountID,.) %>%
    gsub("orderSpecifier",chosenOrderSpecifier,.)
  Ep.info.ep.ready
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
#'
#'
Request.Step2.Trade <-function(...) {
  Dots <- list(...)
  print(names(Dots))

  chosenaccountID <- Dots$accountID
  chosenTradeSpecifier <- Dots$TradeSpecifier

  #
  Ep.info.ep.ready <-    Ep.info %>%
    select(Endpoints) %>%
    gsub("accountID",chosenaccountID,.) %>%
    gsub("tradeSpecifier",chosenTradeSpecifier,.)
  Ep.info.ep.ready
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
#'
#'

#
Request.Step2.Position<-function(...) {
  Dots <- list(...)
  print(names(Dots))

  chosenaccountID <- Dots$accountID
  chosenInstrument <- Dots$Instrument

  #
  Ep.info.ep.ready <-    Ep.info %>%
    select(Endpoints) %>%
    gsub("accountID",chosenaccountID,.) %>%
    gsub("INSTRUMENT",chosenInstrument,.)
  Ep.info.ep.ready
}

#Request.Step2.Position(accountID=chosenaccountID, Instrument=chosenInstrument)
####



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
#'
Request.Step2.Transaction<-function(...) {
  Dots <- list(...)
  print(names(Dots))

  chosenaccountID <- Dots$accountID
  chosenTransactionID <- Dots$TransactionID

  #
  Ep.info.ep.ready <-    Ep.info %>%
    select(Endpoints) %>%
    gsub("accountID",chosenaccountID,.) %>%
    gsub("transactionID",chosenTransactionID,.)
  Ep.info.ep.ready
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
#'
#'
Request.Step2.Pricing<-function(...) {
  Dots <- list(...)
  print(names(Dots))

  chosenaccountID <- Dots$accountID

  #
  Ep.info.ep.ready <-   Ep.info %>%
    select(Endpoints) %>%
    gsub("accountID",chosenaccountID,.)

  Ep.info.ep.ready
}
