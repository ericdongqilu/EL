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
  #Query.32()
  chosenInstrument         <<- Dots$SetchosenInstrument %>% ifelse(is.null(.),NA,.)

}




SET.BODY <- function(...){
  Dots <- list(...)
  #print(names(Dots))

  #5
  chosenMarginRate              <<- Dots$chosenMarginRate %>% ifelse(is.null(.),NA,.)

  #10
  chosenInstrument              <<- Dots$SetchosenInstrument %>% ifelse(is.null(.),NA,.)
  chosenUnits                   <<- Dots$SetchosenUnits %>% ifelse(is.null(.),NA,.)
  chosenTIF                     <<- Dots$SetchosenTIF %>% ifelse(is.null(.),NA,.)
  chosenMarketType              <<- Dots$SetchosenMarketType  %>% ifelse(is.null(.),NA,.)
  chosenPostionFill             <<- Dots$SetchosenPostionFill %>% ifelse(is.null(.),NA,.)

  #26
  chosenDirection               <<- Dots$SetchosenDirection %>% ifelse(is.null(.),NA,.)
  chosenClosePositionunits      <<- Dots$SetchosenClosePositionunits %>% ifelse(is.null(.),NA,.)

}


SET.STEP2 <- function(...){
  Dots <- list(...)
  #print(names(Dots))

  #Step2.Account
  chosenaccountID               <<- Dots$SetchosenaccountID %>% ifelse(is.null(.),NA,.)

  #Step2.Instrument
  chosenInstrument              <<- Dots$SetchosenInstrument %>% ifelse(is.null(.),NA,.)

  #Step2.Order
  chosenaccountID               <<- Dots$SetchosenaccountID %>% ifelse(is.null(.),NA,.)
  chosenOrderSpecifier          <<- Dots$SetchosenOrderSpecifier %>% ifelse(is.null(.),NA,.)

  #Step2.Trade
  chosenaccountID               <<- Dots$SetchosenaccountID %>% ifelse(is.null(.),NA,.)
  chosenTradeSpecifier          <<- Dots$SetchosenTradeSpecifier %>% ifelse(is.null(.),NA,.)

  #Step2.Position
  chosenaccountID               <<- Dots$SetchosenaccountID %>% ifelse(is.null(.),NA,.)
  chosenInstrument              <<- Dots$SetchosenInstrument %>% ifelse(is.null(.),NA,.)

  #Step2.Transaction
  chosenaccountID               <<- Dots$SetchosenaccountID %>% ifelse(is.null(.),NA,.)
  chosenTransactionID           <<- Dots$SetchosenTransactionID %>% ifelse(is.null(.),NA,.)

  #Step2.Pricing
  chosenaccountID               <<- Dots$SetchosenaccountID %>% ifelse(is.null(.),NA,.)

}



SET.EPSCODE <- function(...){
  Dots <- list(...)
  #print(names(Dots))

  #ChosenEpscode
  ChosenEpscode                 <<- Dots$SetChosenEpscode %>% ifelse(is.null(.),NA,.)


}


SET.ENVIRONMENT <- function(...){
  Dots <- list(...)
  #print(names(Dots))

  #ChosenEpscode
  chosenEnvironment                <<- Dots$SetchosenEnvironment  %>% ifelse(is.null(.),NA,.)


}
