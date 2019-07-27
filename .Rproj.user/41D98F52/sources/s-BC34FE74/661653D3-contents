
#' A Cat Function
#'
#' This function allows you to express your love of cats.
#' @param ...  Do you love cats? Defaults to TRUE.
#' @keywords cats
#' @export
#' @examples
#'
#'
#'
#'
Endpoints <- function(...){

  #Account
  Account.eps <-
    c("/v3/accounts",
      "/v3/accounts/accountID",
      "/v3/accounts/accountID/summary",
      "/v3/accounts/accountID/instruments",
      "/v3/accounts/accountID/configuration",#PATCH
      "/v3/accounts/accountID/changes")

  Account.eps.method <-
    c("GET",
      "GET",
      "GET",
      "GET",
      "PATCH",#PATCH
      "GET")

  #
  df.Account.eps <-
    data.frame("Endpoints"=Account.eps,
               "Methods"=Account.eps.method) %>%
    mutate(Section="Account")

  #Instrument

  Instrument.eps <-
    c("/v3/instruments/INSTRUMENT/candles",
      "/v3/instruments/INSTRUMENT/orderBook",
      "/v3/instruments/INSTRUMENT/positionBook")

  Instrument.eps.method <-
    c("GET",
      "GET",
      "GET")

  #
  df.Instrument.eps <-
    data.frame("Endpoints"=Instrument.eps,
               "Methods"=Instrument.eps.method) %>%
    mutate(Section="Instrument")
  #Order
  Order.eps <-
    c("/v3/accounts/accountID/orders",
      "/v3/accounts/accountID/orders",
      "/v3/accounts/accountID/pendingOrders",
      "/v3/accounts/accountID/orders/orderSpecifier",
      "/v3/accounts/accountID/orders/orderSpecifier",
      "/v3/accounts/accountID/orders/orderSpecifier/cancel",
      "/v3/accounts/accountID/orders/orderSpecifier/clientExtensions")

  Order.eps.method <-
    c("POST",
      "GET",
      "GET",
      "GET",
      "PUT",
      "PUT",
      "PUT")

  #
  df.Order.eps <-
    data.frame("Endpoints"=Order.eps,
               "Methods"=Order.eps.method) %>%
    mutate(Section="Order")

  #Trade
  Trade.eps <-
    c("/v3/accounts/accountID/trades",
      "/v3/accounts/accountID/openTrades",
      "/v3/accounts/accountID/trades/tradeSpecifier",
      "/v3/accounts/accountID/trades/tradeSpecifier/close",
      "/v3/accounts/accountID/trades/tradeSpecifier/clientExtensions",
      "/v3/accounts/accountID/trades/tradeSpecifier/orders")

  Trade.eps.method <-
    c("GET",
      "GET",
      "GET",
      "PUT",
      "PUT",
      "PUT")
  #
  df.Trade.eps <-
    data.frame("Endpoints"=Trade.eps,
               "Methods"=Trade.eps.method) %>%
    mutate(Section="Trade")


  #Position
  Position.eps <-
    c("/v3/accounts/accountID/positions",
      "/v3/accounts/accountID/openPositions",
      "/v3/accounts/accountID/positions/INSTRUMENT",
      "/v3/accounts/accountID/positions/INSTRUMENT/close")

  Position.eps.method <-
    c("GET",
      "GET",
      "GET",
      "PUT")

  #
  df.Position.eps <-
    data.frame("Endpoints"=Position.eps,
               "Methods"=Position.eps.method) %>%
    mutate(Section="Position")


  #Transaction
  Transaction.eps <-
    c("/v3/accounts/accountID/transactions",
      "/v3/accounts/accountID/transactions/transactionID",
      "/v3/accounts/accountID/transactions/idrange",
      "/v3/accounts/accountID/transactions/sinceid",
      "/v3/accounts/accountID/transactions/stream"
    )

  Transaction.eps.method <-
    c("GET",
      "GET",
      "GET",
      "GET",
      "GET")

  #
  df.Transaction.eps <-
    data.frame("Endpoints"=Transaction.eps,
               "Methods"=Transaction.eps.method) %>%
    mutate(Section="Transaction")

  #Pricing
  Pricing.eps <-
    c("/v3/accounts/accountID/pricing",
      "/v3/accounts/accountID/pricing/stream")

  Pricing.eps.method <-
    c("GET",
      "GET")

  #
  df.Pricing.eps <-
    data.frame("Endpoints"=Pricing.eps,
               "Methods"=Pricing.eps.method) %>%
    mutate(Section="Pricing")


  df.Endpoints <<-
    df.Account.eps %>%
    full_join(.,df.Instrument.eps) %>%
    full_join(.,df.Order.eps) %>%
    full_join(.,df.Trade.eps) %>%
    full_join(.,df.Position.eps) %>%
    full_join(.,df.Transaction.eps) %>%
    full_join(.,df.Pricing.eps) %>%
    mutate(Epscode=row.names(.)) %>%
    as_tibble()

  return(df.Endpoints)
}

#Endpoints()
#df.Endpoints <- Endpoints()
