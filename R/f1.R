#' fxmath.df Function
#'
#' This function will GET a url and cleaned up fxmath.js into fxmath.df1 and fxmath.df2
#' @param Url fxmath.js url
#' @keywords fxmath.df
#' @export
#' @examples
#' fxmath.df()
#'
#' @import httr
#' @import tidyverse
#' @import dplyr
#' @import jsonlite
#' @import ggplot2
#' @import stringr



fxmath.df <- function( Url = "https://www1.oanda.com/tools/fxcalculators/fxmath.js"){

  URL <- Url
  r <- GET(url = URL)


  r %>%
    content("text") -> Step1


  DfColNames <- function() {
    VarNameList <- c()
    for (i in 1:5) {
      Step1 %>%
        str_split(";\n",simplify = T)  %>%
        .[1,i] %>%
        str_split("=new Array",simplify = T) %>%
        .[1,1] %>%
        str_remove("var arr") -> VarNameList[i]
    }
    df.1.VarName <<- VarNameList[1:2]
    df.2.VarName <<- VarNameList[3:5]
  }

  DfColNames()


  bind_cols(
    Step1 %>%
      str_split(";\n",simplify = T)  %>% .[1,1] %>%
      str_split("=new Array",simplify = T) %>% .[1,2] %>%
      str_extract_all("[[:alnum:]]+[[:punct:]]+\\.*[[:alnum:]]*",simplify = T)  %>%
      .[1,] %>%
      as_tibble() %>%
      setNames(.,df.1.VarName[1])
    ,
    Step1 %>%
      str_split(";\n",simplify = T)  %>% .[1,2] %>%
      str_split("=new Array",simplify = T) %>% .[1,2] %>%
      str_extract_all("[[:digit:]]+\\.*[[:digit:]]*",simplify = T) %>%
      .[1,] %>%
      as_tibble() %>%
      setNames(.,df.1.VarName[2])
  ) ->> fxmath.df1


  bind_cols(
    Step1 %>%
      str_split(";\n",simplify = T)  %>% .[1,3] %>%
      str_split("=new Array",simplify = T) %>% .[1,2] %>%
      str_extract_all("[[:alnum:]]+\\.*[[:alnum:]]*",simplify = T)   %>%
      .[1,] %>%
      as_tibble() %>%
      setNames(.,df.2.VarName[1])
    ,
    Step1 %>%
      str_split(";\n",simplify = T)  %>% .[1,4] %>%
      str_split("=new Array",simplify = T) %>% .[1,2] %>%
      str_extract_all("[+-]?[[:digit:]]+\\.*[[:digit:]]*",simplify = T) %>%
      .[1,] %>%
      as_tibble() %>%
      setNames(.,df.2.VarName[2])
    ,
    Step1 %>%
      str_split(";\n",simplify = T)  %>% .[1,5] %>%
      str_split("=new Array",simplify = T) %>% .[1,2] %>%
      str_extract_all("[+-]?[[:digit:]]+\\.*[[:digit:]]*",simplify = T) %>%
      .[1,] %>%
      as_tibble() %>%
      setNames(.,df.2.VarName[3]),
  ) ->> fxmath.df2

}


#' GetTradeName Function
#'
#' This function allows you to express your love of cats.
#' @param ...  Do you love cats? Defaults to TRUE.
#' @keywords cats
#' @export
#' @examples
#'
#'
#'
#Step 2. Refering to endpoint 4 to get rData.

GetTradeName <- function(...) {

  SelectedEPScode = 4
  SelectedDataType ="Content.df.flat"

  Request.r.content(rResult = Request.EP(EPScode = SelectedEPScode, accountID=chosenaccountID),rDataType = SelectedDataType)
  r$url

  Request.r(rEPScode = SelectedEPScode,DataType = SelectedDataType )
  rData

  return(rData)


}

#' A Cat Function
#'
#' This function allows you to express your love of cats.
#' @param primarycurrency,hoursheld,marginavailable  Do you love cats? Defaults to TRUE.
#' @keywords cats
#' @export
#' @examples
#'
#'
#'

fincal <- function( primarycurrency = "AUD",
                    hoursheld = 24,
                    marginavailable = 10000 ){

  PrimaryCurrency = primarycurrency
  #
  #unitAmount = 100000

  hoursHeld = hoursheld

  S8.MarginAvailable = marginavailable

  #
  #

  GetTradeName()$instruments %>% select(name,marginRate) %>%
    separate(name,sep="_",c("Base","Quote"),remove = F) %>%
    mutate(BaseQuote = paste0(Base,"/",Quote)) %>%

    left_join( .,fxmath.df1 %>% mutate(BaseQuote = Pairs),
               by="BaseQuote" ) %>%

    mutate(BaseQuoteRates=Rates) %>%
    select(-c(Pairs,Rates)) %>%

    mutate( BasePrimaryCurrency  = paste0(Base,"/",PrimaryCurrency)) %>%
    left_join( .,fxmath.df1 %>% mutate(BasePrimaryCurrency = Pairs),
               by="BasePrimaryCurrency") %>%

    mutate(BasePrimaryCurrencyRates.S1 = Rates) %>%
    select(-c(Pairs,Rates)) %>%


    mutate( QuotePrimaryCurrency = paste0(Quote,"/",PrimaryCurrency)) %>%
    left_join( .,fxmath.df1 %>% mutate(QuotePrimaryCurrency = Pairs),
               by="QuotePrimaryCurrency") %>%

    mutate(QuotePrimaryCurrencyRates.S1 = Rates) %>%
    select(-c(Pairs,Rates)) %>%


    mutate( PrimaryCurrencyBase  = paste0(PrimaryCurrency,"/",Base)) %>%
    left_join( .,fxmath.df1 %>% mutate(PrimaryCurrencyBase = Pairs),
               by="PrimaryCurrencyBase") %>%

    mutate(PrimaryCurrencyBaseRates = Rates) %>%
    select(-c(Pairs,Rates)) %>%

    mutate( PrimaryCurrencyQuote = paste0(PrimaryCurrency,"/",Quote)) %>%
    left_join( .,fxmath.df1 %>% mutate(PrimaryCurrencyQuote = Pairs),
               by="PrimaryCurrencyQuote") %>%

    mutate(PrimaryCurrencyQuoteRates = Rates) %>%
    select(-c(Pairs,Rates)) %>%

    mutate(BasePrimaryCurrencyRates.S2= ifelse(is.na(BasePrimaryCurrencyRates.S1)==T,1/as.numeric(PrimaryCurrencyBaseRates),BasePrimaryCurrencyRates.S1)) %>%
    mutate(BasePrimaryCurrencyRates = ifelse(is.na(BasePrimaryCurrencyRates.S2)==T,1,BasePrimaryCurrencyRates.S2)) %>%

    mutate(QuotePrimaryCurrencyRates.S2= ifelse(is.na(QuotePrimaryCurrencyRates.S1)==T,1/as.numeric(PrimaryCurrencyQuoteRates),QuotePrimaryCurrencyRates.S1)) %>%
    mutate(QuotePrimaryCurrencyRates = ifelse(is.na(QuotePrimaryCurrencyRates.S2)==T,1,QuotePrimaryCurrencyRates.S2)) %>%

    #head() %>%

    left_join(.,  fxmath.df2 %>% mutate(Base = InterestCode)) %>%
    mutate(BaseInterestCode   = InterestCode,
           BaseInterestBorrow = InterestBorrow,
           BaseInterestLend   = InterestLend
    ) %>%
    select(-c(InterestCode,InterestBorrow,InterestLend)) %>%

    left_join(.,  fxmath.df2 %>% mutate(Quote = InterestCode)) %>%
    mutate(QuoteInterestCode   = InterestCode,
           QuoteInterestBorrow = InterestBorrow,
           QuoteInterestLend   = InterestLend
    ) %>%
    select(-c(InterestCode,InterestBorrow,InterestLend)) %>%
    #
    left_join(.,
              fxmath.df1 %>%
                separate(Pairs,sep="/",c("Base","Quote"),remove = F) %>%

                mutate( S1 = paste0(Base,"/" ,PrimaryCurrency)) %>%
                mutate( S2 = S1 %in% Pairs ) %>%
                mutate( S3 = ifelse(S2==F,paste0(PrimaryCurrency,"/" ,Base),S1)) %>%
                mutate( S4 = S3 %in% Pairs ) %>%
                #              mutate( S5 = ifelse(S4==F,paste0("XXX","/" ,Base),S3)) %>%
                mutate(BaseQuote = Pairs#,
                       #BaseQuoteRates = Rates
                ) %>%
                select(-c(Pairs,Rates)) %>%


                left_join(., fxmath.df1 %>% mutate(S3=Pairs), by= c("S3")) %>%
                #left_join(., fxmath.df1 %>% mutate(S3=Pairs), by= c("S3")) %>%
                rowwise() %>%

                mutate( S5 = ifelse(S2==F && S4 ==T,
                                    as.character(1/as.numeric(Rates)),
                                    Rates)) %>%

                mutate( S6 = ifelse(is.na(S5)==T ,
                                    "1",
                                    S5)) %>%

                ungroup()
    ) %>%
    mutate(S7.MarginRatio = 1/ (marginRate %>% as.numeric())) %>%

    mutate(S7 = S7.MarginRatio) %>%
    mutate(S8 = S8.MarginAvailable ) %>%
    mutate(S9 = S8*S7) %>%
    mutate(S10 = S9 / as.numeric(S6)) %>%
    mutate(S11 = as.integer(S10)) %>%
    mutate(unitAmount = S11) %>%

    #
    mutate(Buy.S1.FCB =
             (unitAmount) *
             (BaseInterestBorrow %>% as.numeric()/100) * #borrowRate
             (hoursHeld/8766) *
             (BasePrimaryCurrencyRates %>% as.numeric()) #customRateBase
    ) %>%

    mutate(Buy.S2.FCQ =
             ((BaseQuoteRates %>% as.numeric()) * unitAmount) * #ConvertedUnits
             (QuoteInterestLend %>% as.numeric()/100) * #lendRate
             (hoursHeld/8766) *
             (QuotePrimaryCurrencyRates %>% as.numeric()) #customRateBase
    ) %>%

    mutate(BUY.I.O = (Buy.S1.FCB - Buy.S2.FCQ) %>% as.character()) %>%

    mutate(Sell.S1.FCQ =
             ((BaseQuoteRates %>% as.numeric()) * unitAmount) * #ConvertedUnits
             (QuoteInterestBorrow %>% as.numeric()/100) * #borrowRate
             (hoursHeld/8766) *
             (QuotePrimaryCurrencyRates %>% as.numeric()) #customRateBase
    ) %>%

    mutate(Sell.S2.FCB =
             (unitAmount) *
             (BaseInterestLend %>% as.numeric()/100) * #lendRate
             (hoursHeld/8766) *
             (BasePrimaryCurrencyRates %>% as.numeric()) #customRateBase
    ) %>%

    mutate(SELL.I.O = (Sell.S1.FCQ - Sell.S2.FCB) %>% as.character()) ->> OutPut.df
  #OutPut.df %>% names()
  #View()
  #left_join(., OutputUnits) %>%
  #select(name,unitAmount,BUY.I.O,SELL.I.O) -> OutPut.df
  #  View()

}


