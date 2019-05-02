

dashboardPage(
  
  dashboardHeader(title = "NYC Open Data"),
  
  dashboardSidebar(
    sidebarMenu(
      selectInput("sex", "Sex:",
                  levels(df$sex)),
      selectInput("ethnicity", "Ethnicity:",
                 levels(df$race_ethnicity))
      
    )
  ),
  
  dashboardBody(
    tabItems(
      tabItem(tabName = "Stat",
        h2("Expiration of Licenses"),
        fluidRow(
          column(3, infoBoxOutput("exp2019", width=NULL) %>% withSpinner(color="green")),
          column(3, infoBoxOutput("exp2020", width=NULL) %>% withSpinner(color="lightblue"))
        ),
        fluidRow(
          column(3, infoBoxOutput("exp2021", width=NULL) %>% withSpinner(color="lightblue")),
          column(3, infoBoxOutput("exp2022", width=NULL) %>% withSpinner(color="lightblue"))
        )
      ),
      tabItem(tabName = "Rank",
        h2("Most Common Expiration Dates:"),
        fluidRow(
          box(width=5, status="info", title="Top 5 Expiration Dates", solidHeader = TRUE,
            tableOutput("top5") %>% withSpinner(color="#0dc5c1")
          )
        )
      )
    )
  )
  
)
