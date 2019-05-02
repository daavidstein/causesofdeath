# df.date <- df %>% select(expiration_date)
# df.date.year <- df.date %>% mutate(Year = format(expiration_date, "%Y")) %>% count(Year, sort=TRUE)

shinyServer(function(input, output, session) {
# 
#   output$exp2019 <- renderInfoBox({
#     infoBox(
#       value = format(df.date.year$n[1], big.mark=","),
#       title = "Expiring in 2019:",
#       color = "green", 
#       fill=TRUE)
#   })
#   
#   output$exp2020 <- renderInfoBox({
#     infoBox(
#       value = format(df.date.year$n[2], big.mark=","),
#       title = "Expiring in 2020:",
#       color = "aqua",
#       icon= icon("id-badge"),
#       fill=TRUE)
#   })
#   
#   output$exp2021 <- renderInfoBox({
#     infoBox(
#       value = format(df.date.year$n[3], big.mark=","),
#       title = "Expiring in 2021:",
#       color = "blue", 
#       fill=TRUE)
#   })
#   
#   output$exp2022 <- renderInfoBox({
#     infoBox(
#       value = format(df.date.year$n[4], big.mark=","),
#       title = "Expiring in 2022:",
#       color = "light-blue", 
#       fill=TRUE)
#   })
#   
#   
#   output$top5 <- renderTable({
#     df.top5 <- df.date %>% count(expiration_date, sort=TRUE) %>% head(5) %>%
#                mutate(Date=format(expiration_date, "%A, %b %d, %Y"))
#     return(df.top5$Date)
#   }, striped=TRUE, colnames=FALSE)

})
