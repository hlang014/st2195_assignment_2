#R code for scraping the CSV example on cars in Wikipedia page https://en.wikipedia.org/wiki/Commaseparated_values 
#and saving the resulting output in the local folder (in CSV)

library(rvest)
#wikicars_url <- "https://en.wikipedia.org/wiki/Comma-separated_values#Example"
#html <-read_html(wikicars_url)
#html

library(tidyverse)

wikicars_url <- "https://en.wikipedia.org/wiki/Comma-separated_values#Example"
html <- read_html(wikicars_url)
table_node <- html_nodes(html,"table")
table_content <- html_table(table_node)[[2]]

head(table_content)

write.csv(table_content, file="wikicars.csv", row.names = FALSE)
