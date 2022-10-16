#To find the IP address and relevant information
setwd("/Users/fizzausman/Desktop/Group_2")
install.packages("tidyverse")
library(tidyverse)
df=read_log("access_log",skip=0,col_names=FALSE)
df=subset(df,select=-c(X2,X3,X7))
df <- df %>%
rename(
ip_address=X1,
date_time=X4,
to_url=X5,
http_status=X6,
from_url=X8,
browser=X9
)
df



#1. to show only the accesses done by group members
df <- df[df$to_url %like% "stiwari",]
df



#2. to show only the ip_address



df_ip = select(df,c("ip_address"))
df_ip



#3. to show the date and time



df_date_time = select(df, c("date_time"))
df_date_time



#4. by what browser was the website accessed



df_browser = select(df,c("browser"))
df_browser


#To find the errors and relevant information
setwd("/Users/fizzausman/Desktop/Group_2")
install.packages("tidyverse")
library(tidyverse)
df=read_log("error_log",skip=0,col_names=FALSE)



df=subset(df,select=-c(X3,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20,X21),


df <- df %>%
rename(
date_time=X1,
error=X2,
IP=X4
)
df



#1. to show only the accesses done by group members
df <- df[df$to_url %like% "stiwari",]
df


#2. to show only the ip_address



df_ip = select(df,c("IP"))
df_ip



#3. to show the date and time



df_date_time = select(df, c("date_time"))
df_date_time



#4. To show what error was indicated



df_error = select(df,c("error"))
df_error