# connect_DenodoODBC.r

# Date: June 30, 202
# Author: Hao Wang
# Version: 1.0

# Note: 
# 1. Connect to Denodo using ODBC.


library(odbc)
library(tidyverse)
# setup the connection
con <- dbConnect(odbc::odbc(), "DenodoODBC", timeout = 30)

# Example of querying table using SQL
# Query the bi_crm.company_table.
transfile_company_table <- 
  dbGetQuery(con, 'SELECT * FROM bi_crm."Transfile_Company_Table_2022"') %>% 
  as_tibble()