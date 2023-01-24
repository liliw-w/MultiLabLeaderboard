library('shiny')
library('DT')

secret_file_path <- './secretsDONOTSHARE/'
source(paste(secret_file_path,'url.R',sep=''))
source('configuration.R')

shinyUI(
  fluidPage(
    titlePanel('Liu Lab Paper Reading'),
    fluidRow(
      tabsetPanel(
        tabPanel('Competition',
          fluidPage(
            plotOutput('p_user_count'),
            fluidRow(
              column(width = 4,
                p(paste('Percentage of lab beating ',PIname,': '), textOutput('p_above_pi'))),
              column(width = 4),
              column(width = 8, selectInput('s_select_campaign', 'Which campaign:',
                  campaigns$campaign, selected = default_current_campaign$campaign))
              ),
            fluidRow(
              column(width = 4,
               DT::dataTableOutput("user_count_table")
               ),
             column(width = 8,
               plotOutput('p_n_summary')
               )
              ),
            fluidRow(
              column(width = 8, plotOutput('mean_per_personweek_labcomp'))
            ),
            column(width = 4,
                   DT::dataTableOutput("lab_count_table")
            )
            )
          ),
        tabPanel('DOI Info',
          fluidPage(
            fluidRow(
              column(
                width = 12,
                DT::dataTableOutput("doi_info")
                )
              )
            )
          ),
        tabPanel('Raw Data',
          {
            dataTableOutput('raw_data')
          })
        # end tabsetPanel
        )
      )
    )
  )
