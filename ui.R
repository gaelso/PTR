#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#



# Define UI for application that draws a histogram
shinyUI(fluidPage(
    
    shinyjs::useShinyjs(),
    
    includeCSS("www/css/style.css"),
    
    #tags$head(tags$style(HTML("a {color: #0D19A3}"))), #Color for links
    
    theme = shinythemes::shinytheme("flatly"),
    #shinythemes::themeSelector(),

    # Application title
    titlePanel(
#         title = HTML('
#             <div class="banner"> 
# 	            <img class="banner_image" src="images/banner1.png" alt="Prépare tes repas bannière">
# 	            <div class="banner-text">
# 		            <div class="main-banner-text">Prépares Tes Repas</div>
# 				    <div class="second-banner-text">par Sola Dététique</div>
# 				</div>
#             </div>
#             '),
        title = div(img(src="images/banner1b-full.png", width = '100%')),
        windowTitle = "PTR"
    ),

    # Sidebar with a slider input for number of bins
    fluidRow(
        sidebarLayout(
            sidebarPanel(
                sliderInput("bins",
                            "Number of bins:",
                            min = 1,
                            max = 50,
                            value = 30)
            ),

            # Show a plot of the generated distribution
            mainPanel(
                plotOutput("distPlot")
            )
        )
    ),
    fluidRow(
        actionLink("newTab", "Append tab"),
        actionLink("removeTab", "Remove current tab")
    ),
    tabsetPanel(id="myTabs", type="pills")
))
